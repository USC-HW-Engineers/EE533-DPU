#!/bin/bash

echo "Running iperf tests from $(hostname)"

iperf -c $n0 -p 5010 | tee node1_results.txt
iperf -c $n2 -p 5012 | tee node1_results.txt -a
iperf -c $n3 -p 5013 | tee node1_results.txt -a