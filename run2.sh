# /usr/lib/jvm/java-8-openjdk-amd64
# /home/zd/jdk/tc8/TencentKona-8.0.9-322
# /home/zd/jdk/bs8/bisheng-jdk1.8.0_412
# /root/jdk/dragonwell-8.19.20


# nohup bash run2.sh >run2.log &





############################################  openjdk
# JaVa=/usr/lib/jvm/java-8-openjdk-amd64
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa \n"
# $JaVa -Xmx3g -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-openjdk/gc.log  -jar SPECjvm2008.jar -mi 10 -peak -ikv -ict  -coe  derby> log2/log2-openjdk/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-openjdk/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID


############################################  bisheng
# JaVa=/root/jdk/bisheng-jdk1.8.0_412
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# $JaVa -Xmx3g -XX:+UseG1GC -XX:+G1ParallelFullGC -XX:+UseNUMA -XX:+PrintGCDetails  -XX:+PrintGCDateStamps -Xloggc:log2/log2-bisheng/gc.log  -jar SPECjvm2008.jar -mi 10 -peak -ikv -ict  -coe  derby> log2/log2-bisheng/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-bisheng/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

# ############################################  openjdk serial
# JaVa=/usr/lib/jvm/java-8-openjdk-amd64
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-openjdkserial/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  serial> log2/log2-openjdkserial/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-openjdkserial/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

# ############################################  bisheng serial
# JaVa=/root/jdk/bisheng-jdk1.8.0_412
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -XX:+UseG1GC  -XX:+G1ParallelFullGC -XX:+UseNUMA -XX:+PrintGCDetails  -XX:+UnlockExperimentalVMOptions -XX:+UseFastSerializer -DfastSerializerEscapeMode=true -XX:+PrintGCDateStamps -Xloggc:log2/log2-bishengserial/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  serial> log2/log2-bishengserial/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-bishengserial/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

############################################  TencentKona
# JaVa=/root/jdk/TencentKona-8.0.9-322
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# $JaVa -Xmx3g -XX:+UseG1GC -XX:+G1ParallelFullGC -XX:+G1RebuildRemSet -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-TencentKona/gc.log  -jar SPECjvm2008.jar -mi 10 -peak -ikv -ict  -coe  derby> log2/log2-TencentKona/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-TencentKona/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

# ############################################  TencentKona startup
# JaVa=/root/jdk/TencentKona-8.0.9-322
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -Xshare:on -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-TencentKonastartup/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  startup> log2/log2-TencentKonastartup/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-TencentKonastartup/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

############################################  dragonwell
JaVa=/root/jdk/dragonwell-8.19.20
JaVa=$JaVa/bin/java
# 输出 Java 路径
echo "Java executable path: $JaVa"
$JaVa -version
$JaVa -Xmx3g -jar SPECjvm2008.jar -mi 10 -peak -ikv -ict  -coe  derby> log2/log2-dragonwell/SPEC.log &
JAVA_PID=$!
pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-dragonwell/pidstat.log &
PIDSTAT_PID=$!
wait $JAVA_PID
kill $PIDSTAT_PID

# ############################################  openjdk startup
# JaVa=/usr/lib/jvm/java-8-openjdk-amd64
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-openjdkstartup/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  startup> log2/log2-openjdkstartup/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-openjdkstartup/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

# # ############################################  openjdk nogc 
# # JaVa=/usr/lib/jvm/java-8-openjdk-amd64
# # JaVa=$JaVa/bin/java
# # # 输出 Java 路径
# # echo "Java executable path: $JaVa"
# # $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# # $JaVa -Xmx3g -XX:+UseG1GC -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-openjdkserial/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  derby> log2/log2-openjdkserial/SPEC.log &
# # JAVA_PID=$!
# # pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-openjdkserial/pidstat.log &
# # PIDSTAT_PID=$!
# # wait $JAVA_PID
# # kill $PIDSTAT_PID

# ############################################  dragonwellstartup
# JaVa=/root/jdk/dragonwell-8.19.20
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -Xquickstart -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-dragonwellstartup/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  startup> log2/log2-dragonwellstartup/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-dragonwellstartup/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

# ############################################  dragonwellstartup2
# JaVa=/root/jdk/dragonwell-8.19.20
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -version
# echo "最大堆: "
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -Xquickstart -XX:+PrintGCDetails -XX:+PrintGCDateStamps -Xloggc:log2/log2-dragonwellstartup2/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  startup> log2/log2-dragonwellstartup2/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-dragonwellstartup2/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID

############################################  bishengstartup
# JaVa=/root/jdk/bisheng-jdk1.8.0_412
# JaVa=$JaVa/bin/java
# # 输出 Java 路径
# echo "Java executable path: $JaVa"
# $JaVa -XX:+PrintFlagsFinal -version | grep MaxHeapSize
# $JaVa -Xmx3g -XX:+UseG1GC  -XX:+G1ParallelFullGC -XX:+UseNUMA -XX:+PrintGCDetails  -XX:+UnlockExperimentalVMOptions -XX:+UseFastSerializer -DfastSerializerEscapeMode=true -XX:+PrintGCDateStamps -Xloggc:log2/log2-bishengstartup/gc.log  -jar SPECjvm2008.jar -mi 5 -peak -ikv -ict  -coe  startup> log2/log2-bishengstartup/SPEC.log &
# JAVA_PID=$!
# pidstat -r -u -h -w -p $JAVA_PID 5 > log2/log2-bishengstartup/pidstat.log &
# PIDSTAT_PID=$!
# wait $JAVA_PID
# kill $PIDSTAT_PID