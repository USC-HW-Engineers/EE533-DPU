#!/bin/bash

echo "Running iperf tests from $(hostname)"

iperf -c $n0 -p 5010 | tee node3_results.txt
iperf -c $n1 -p 5011 | tee node3_results.txt -a
iperf -c $n2 -p 5012 | tee node3_results.txt -a