#!/bin/bash

# startup.helloworld 
# startup.compiler.compiler 
# startup.compiler.sunflow 
# startup.compress 
# startup.crypto.aes 
# startup.crypto.rsa 
# startup.crypto.signverify 
# startup.mpegaudio 
# startup.scimark.fft 
# startup.scimark.lu 
# startup.scimark.monte_carlo 
# startup.scimark.sor 
# startup.scimark.sparse 
# startup.serial 
# startup.sunflow 
# startup.xml.transform 
# startup.xml.validation 
# compiler.compiler 
# compiler.sunflow 
# compress 
# crypto.aes 
# crypto.rsa 
# crypto.signverify 
# derby 
# mpegaudio 
# scimark.fft.large 
# scimark.lu.large 
# scimark.sor.large 
# scimark.sparse.large 
# scimark.fft.small 
# scimark.lu.small 
# scimark.sor.small 
# scimark.sparse.small 
# scimark.monte_carlo 
# serial 
# sunflow 
# xml.transform 
# xml.validation



# nohup bash run.sh >run1.log &


JaVa=/usr/lib/jvm/java-8-openjdk-amd64
JaVa=$JaVa/bin/java
echo "Java executable path: $JaVa"
$JaVa -version

  

# java -XX:+PrintFlagsFinal -version | grep MaxHeapSize  #查看最大堆
# java -XX:+PrintFlagsFinal -version | grep Use  # 查看GC 相关
# UseG1GC          = false 
# UseParNewGC      = false                             
# UseParallelGC    = true                               
# UseParallelOldGC = true  
# UseSerialGC      = false 
# UseConcMarkSweepGC   = false  

# -XX:+UseG1GC

###########################################  正常运行
$JaVa -Xmx3.5g  -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log1/log/gc.log -XX:CompileThreshold=20000 -jar SPECjvm2008.jar  -ikv -ict --coe > log1/log/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID

###########################################  -CompileThreshold=20000
$JaVa -Xmx3g -XX:CompileThreshold=20000 -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log1/log-CompileThreshold=20000/gc.log -XX:CompileThreshold=20000 -jar SPECjvm2008.jar  -ikv -ict  -coe > log1/log-CompileThreshold=20000/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > log1/log-CompileThreshold=20000/pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID


###########################################  -xmx350m
$JaVa -Xmx350m  -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log1/log-350m/gc.log -jar SPECjvm2008.jar -peak -ikv -ict  -coe > log1/log-350m/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > log1/log-350m/pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID

###########################################  -380m
JaVa=/usr/lib/jvm/java-8-openjdk-amd64
JaVa=$JaVa/bin/java
# 输出 Java 路径
echo "Java executable path: $JaVa"
$JaVa -version
echo "最大堆: "
$JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
$JaVa -Xmx380m  -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log1/log-380m/gc.log -jar SPECjvm2008.jar -peak -ikv -ict  -coe > log1/log-380m/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > log1/log-380m/pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID

###########################################  -wt 0
$JaVa -Xmx350m  -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log1/log-nowt/gc.log -jar SPECjvm2008.jar -peak -ikv -ict -wt 0  -coe > log1/log-nowt/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > log1/log-nowt/pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID