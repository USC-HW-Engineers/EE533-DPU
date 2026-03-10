#!/usr/bin/perl -w

use strict;
use IO::Socket::INET;

# --- Configuration ---
my $DEST_IP = "10.0.0.2";
my $PORT    = 5000;
my $VALUE   = 5;      # Initial value to be incremented
# OFFSET 78 + ~50 bytes of headers = 128 bytes.
# 128 bytes / 8 bytes per word = Word Index 16.
# CPU accesses Word Index 16 using address offset 64 (16 * 4).
my $OFFSET  = 78;     

print "--- EE 533 Lab 8: UDP Packet Sender (Perl) ---\n";
print "Target IP: $DEST_IP\n";
print "Target Port: $PORT\n";
print "Value at offset $OFFSET: $VALUE\n";

# 1. Create the payload
# 'A' x 64 creates 64 bytes of padding
# We pack two 32-bit little-endian longs (L) because old Perl doesn't support 'Q'
# This creates a 64-bit little-endian unsigned integer.
my $payload = ('A' x $OFFSET) . pack('L L', $VALUE, 0);

# 2. Create the UDP socket
my $sock = IO::Socket::INET->new(
    PeerAddr => $DEST_IP,
    PeerPort => $PORT,
    Proto    => 'udp'
) or die "Could not create socket: $!\n";

# 3. Send the packet
$sock->send($payload) or die "Send failed: $!\n";

print "Packet sent successfully.\n";

$sock->close();
