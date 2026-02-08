#!/bin/bash

echo "Running iperf tests from $(hostname)"

iperf -c $n1 -p 5011 | tee node0_results.txt
iperf -c $n2 -p 5012 | tee node0_results.txt -a
iperf -c $n3 -p 5013 | tee node0_results.txt -a