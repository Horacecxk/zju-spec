#!/bin/bash
# nohup bash run4.sh > log4/4.log 2>&1 &

# 设置 Java 可执行文件路径
JAVA_PATH=/usr/lib/jvm/java-8-openjdk-amd64/bin/java
$JAVA_PATH -Xmx3g  -XX:+PreserveFramePointer -jar SPECjvm2008.jar -peak -ikv -ict -coe  -wt 0 -it 200 serial &
pid=$!
echo $pid
mkdir -p log4/$pid

pidstat -r -u -h -w -p $pid 5 > log4/$pid/javacpu.log &
# 确保目录存在


sleep 5s
export PERF_RECORD_SECONDS=195
export PERF_RECORD_FREQ=99

perf-java-flames $pid -a & 
sleep 1s

# 查找进程的 PID，确保名字完全匹配
pids=$(pgrep -x 'perf')
echo "监控进程 'perf' (PIDs: $pids)"

pidstat -r -u -h -w -p $pids 5 > log4/$pid/perfcpu.log

cp /tmp/perf-$pid.data log4/$pid/data.data ; rm /tmp/perf-$pid.data
cp /tmp/out-$pid.stacks log4/$pid/stacks.stacks;rm /tmp/out-$pid.stacks
cp /tmp/out-$pid.collapsed log4/$pid/collapsed.collapsed; rm /tmp/out-$pid.collapsed
cp flamegraph-$pid.svg log4/$pid/flamegraph.svg;rm  flamegraph-$pid.svg

