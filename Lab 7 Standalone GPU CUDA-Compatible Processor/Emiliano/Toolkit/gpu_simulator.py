import struct

class GPUSimulator:
    def __init__(self, hex_file):
        self.registers = [0] * 32  # R0 to R31 (64-bit)
        self.dmem = [0] * 1024     # Data Memory (64-bit words)
        self.pc = 0
        self.instructions = self.load_hex(hex_file)
        self.halted = False
        
        # Initialize R31 with a dummy thread_id as per architecture.txt
        self.registers[31] = 0x0000000000000001 

    def load_hex(self, filename):
        instrs = []
        with open(filename, 'r') as f:
            for line in f:
                line = line.strip()
                if not line or line.startswith('//'):
                    continue
                instrs.append(int(line, 16))
        return instrs

    def unpack_lanes(self, val):
        # Extract four 16-bit lanes from a 64-bit value
        # Lane indexing: [63:48]=0, [47:32]=1, [31:16]=2, [15:0]=3
        return [
            (val >> 48) & 0xFFFF,
            (val >> 32) & 0xFFFF,
            (val >> 16) & 0xFFFF,
            (val >> 0) & 0xFFFF
        ]

    def pack_lanes(self, lanes):
        # Pack four 16-bit lanes into one 64-bit value
        val = (lanes[0] & 0xFFFF) << 48
        val |= (lanes[1] & 0xFFFF) << 32
        val |= (lanes[2] & 0xFFFF) << 16
        val |= (lanes[3] & 0xFFFF)
        return val & 0xFFFFFFFFFFFFFFFF

    def to_signed_16(self, val):
        if val & 0x8000:
            return val - 0x10000
        return val

    def step(self):
        if self.pc >= len(self.instructions) or self.halted:
            self.halted = True
            return

        ir = self.instructions[self.pc]
        opcode = (ir >> 27) & 0x1F
        rd_idx = (ir >> 22) & 0x1F
        ra_idx = (ir >> 17) & 0x1F
        rb_idx = (ir >> 12) & 0x1F
        rc_idx = (ir >> 7) & 0x1F
        func   = (ir >> 3) & 0x0F
        mode   = (ir >> 0) & 0x07
        imm17  = ir & 0x1FFFF
        
        # Sign extend imm17
        if imm17 & 0x10000:
            imm17_se = imm17 - 0x20000
        else:
            imm17_se = imm17

        print(f"PC {self.pc:03d} | Instruction: {ir:08x} | Opcode: {opcode:02x}", end=" ")

        # Read Operands
        ra_val = self.registers[ra_idx]
        rb_val = self.registers[rb_idx]
        rc_val = self.registers[rc_idx]
        
        result = 0

        # --- ALU Operations (Opcode 0x00) ---
        if opcode == 0x00:
            a_lanes = self.unpack_lanes(ra_val)
            b_lanes = self.unpack_lanes(rb_val)
            res_lanes = [0]*4
            
            if func == 0: # VADD
                print(f"VADD R{rd_idx}, R{ra_idx}, R{rb_idx}")
                for i in range(4):
                    res_lanes[i] = (a_lanes[i] + b_lanes[i]) & 0xFFFF
            elif func == 1: # VSUB
                print(f"VSUB R{rd_idx}, R{ra_idx}, R{rb_idx}")
                for i in range(4):
                    res_lanes[i] = (a_lanes[i] - b_lanes[i]) & 0xFFFF
            
            result = self.pack_lanes(res_lanes)

        # --- Tensor Operations (Opcode 0x01) ---
        elif opcode == 0x01:
            print(f"TENSOR (Mode {mode}) R{rd_idx}, R{ra_idx}, R{rb_idx}")
            # Placeholder for BF16 math - in this sim we treat it as float
            # Real hardware would use the 4-stage FMA pipeline
            result = ra_val # Dummy result for now

        # --- Memory LD (Opcode 0x02) ---
        elif opcode == 0x02:
            addr = (ra_val & 0x3FF) + imm17_se
            print(f"LD R{rd_idx}, [R{ra_idx} + {imm17_se}] (Addr: {addr})")
            result = self.dmem[addr % 1024]

        # --- Memory ST (Opcode 0x03) ---
        elif opcode == 0x03:
            addr = (ra_val & 0x3FF) + imm17_se
            src_val = self.registers[rd_idx] # ST uses rd field as source
            print(f"ST [R{ra_idx} + {imm17_se}], R{rd_idx} (Addr: {addr}, Val: {src_val:016x})")
            self.dmem[addr % 1024] = src_val
            result = None # No register write

        # --- MOVI (Opcode 0x0C) ---
        elif opcode == 0x0C:
            print(f"MOVI R{rd_idx}, {imm17_se}")
            result = imm17_se & 0xFFFFFFFFFFFFFFFF

        # --- RELU_INT (Opcode 0x0D) ---
        elif opcode == 0x0D:
            print(f"RELU_INT R{rd_idx}, R{ra_idx}")
            a_lanes = self.unpack_lanes(ra_val)
            res_lanes = [0]*4
            for i in range(4):
                val = self.to_signed_16(a_lanes[i])
                res_lanes[i] = max(0, val) & 0xFFFF
            result = self.pack_lanes(res_lanes)

        # --- HALT (Opcode 0x0A) ---
        elif opcode == 0x0A:
            print("HALT")
            self.halted = True
            result = None

        # Writeback
        if result is not None and rd_idx != 0:
            self.registers[rd_idx] = result & 0xFFFFFFFFFFFFFFFF
            print(f"      -> R{rd_idx} updated to: {self.registers[rd_idx]:016x}")

        self.pc += 1

    def run(self):
        print("Starting Simulation...")
        # Setup dummy data in DMEM for testing LD
        self.dmem[0] = self.pack_lanes([10, 20, 30, 40])
        self.dmem[1] = self.pack_lanes([1, 2, 3, 4])
        
        while not self.halted:
            self.step()
        print("Simulation Finished.")

if __name__ == "__main__":
    sim = GPUSimulator('gpu_program.hex')
    sim.run()
