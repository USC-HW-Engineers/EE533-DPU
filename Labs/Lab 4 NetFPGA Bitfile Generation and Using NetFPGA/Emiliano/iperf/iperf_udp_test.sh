#!/bin/bash

PW="rvkKVu1ckm31"

echo "Starting UDP iperf clients on node0 and node1..."

# node0 sends 1G to node1
sshpass -p "$PW" ssh -o StrictHostKeyChecking=no node0@nf1.usc.edu \
    "iperf -c \$n1 -u -b 1G -l 512 -t 30" &

# node1 sends 1G to node0
sshpass -p "$PW" ssh -o StrictHostKeyChecking=no node0@nf2.usc.edu \
    "iperf -c \$n0 -u -b 1G -l 512 -t 30" &

wait
echo "Both tests finished."