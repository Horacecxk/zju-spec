#!/bin/bash

# nohup bash run3.sh > log3/run3.log 2>&1 &

JaVa=/usr/lib/jvm/java-8-openjdk-amd64/bin/java
$JaVa -Xmx3g -XX:+PreserveFramePointer -jar SPECjvm2008.jar -peak -ikv -ict -coe serial &
pid=$!
echo $pid

# duration=60
sudo perf stat -p $pid  -a 
wait $pid
state=$?
echo "Java application exit status: $state"




