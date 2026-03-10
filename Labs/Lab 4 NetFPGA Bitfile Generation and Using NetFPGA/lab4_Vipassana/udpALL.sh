TIME=30
PACKETS=512
RATE=1G

iperf -u -c $n1 -b $RATE -l $PACKETS -t $TIME &
iperf -u -c $n2 -b $RATE -l $PACKETS -t $TIME &
iperf -u -c $n3 -b $RATE -l $PACKETS -t $TIME &
wait