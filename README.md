## 1. run1.sh

在 Assignment1 中，使用 OpenJDK 8 进行标准运行，设置 `CompileThreshold=20000`，设置最大堆内存为 350M 和 380M，并且没有热身时间运行。配置好 OpenJDK 8 所在目录后，在脚本所在目录打开控制台，通过 `nohup bash run.sh > run1.log &` 命令即可运行。结果保存在脚本所在目录，结果包括：

- JVM 的 GC 日志
- Java 运行基准测试的输出结果
- 通过 pidstat 工具记录的 CPU 占用情况

## 2. run1.ipynb

对 run1.sh 生成的结果进行分析：

- 读取 Java 运行基准测试的输出结果的分数，画出条形图
- 画出添加限制后的运行分数与标准的对比
- 画出各项基准测试的详细分数
- 根据 pidstat 工具记录的 CPU 占用情况画出 CPU 占用情况

## 3. run2.sh

在 Assignment2 中，使用 OpenJDK 8、BiShengJDK、TencentKonaJDK 和 DragonwellJDK 执行 Derby、Startup 和 Serial 基准测试。在脚本所在目录打开控制台，通过 `nohup bash run2.sh > run2.log &` 命令即可运行。结果保存在脚本所在的 ./log2 目录下，结果包括：

- JVM 的 GC 日志
- Java 运行基准测试的输出结果
- 通过 pidstat 工具记录的 CPU 占用情况

## 4. run2.ipynb

对 run2.sh 生成的结果进行分析：

- 画出各个 JDK 在执行 Derby 基准测试的分数对比条形图
- 画出 OpenJDK 和 BiSheng 执行 Serial 基准测试的分数对比条形图
- 各个 JDK 执行 Startup 基准测试分数的几何平均值的分数对比条形图
- 通过 t 检验验证各个 JDK 的分数是否有显著差异

## 5. run3.sh

在 Assignment3 中，使用 `perf stat` 收集系统级性能特征的整体概述。指定应用程序的进程 ID，并让它运行一段定义的持续时间，以了解 CPU 使用情况、缓存行为等。通过 `nohup bash run3.sh > log3/run3.log 2>&1 &` 命令运行，结果保存到 log3/run3.log 中。

## 6. run4.sh

在 Assignment3 中，使用 `perf-java-flames` 记录 SPECjvm2008 的 Serial 基准测试运行时的系统函数调用情况。使用 `nohup bash run4.sh > log4/4.log 2>&1 &` 命令运行，结果包括：

- 基准测试输出 `log4/4.log 2>&1`
- perf 工具记录的 data 数据
- 执行 `perf script` 将 data 数据转换为的 stacks 调用栈信息
- 将 stacks 调用转换记录了每个采样点的函数调用栈 collapsed 文件
- 根据 collapsed 文件生成的 svg 火焰图
- 运行基准测试过程中记录的 Java 和 perf 进程的系统资源占用情况

以上结果都保存到 `log4/<JavaPid>`。

## 7. run3.ipynb

对 run4.sh 的结果进行分析：

- 统计被调用最多的函数，函数总的和平均执行时间
- 画出 CPU 占用曲线
