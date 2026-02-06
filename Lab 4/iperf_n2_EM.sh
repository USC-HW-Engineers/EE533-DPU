#!/bin/bash

echo "Running iperf tests from $(hostname)"

iperf -c $n0 -p 5010 | tee node2_results.txt
iperf -c $n1 -p 5011 | tee node2_results.txt -a
iperf -c $n3 -p 5013 | tee node2_results.txt -a