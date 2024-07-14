1. run1.sh：Assignment1中，使用openjdk8进行标准运行、设置CompileThreshold=20000,设置最大堆内存为350M、380M,没有热身时间运行。配置好openjdk8所在目录后，在脚本所在目录打开控制台通过‘nohup bash run.sh >run1.log &’命令即可运行。结果保存在脚本所在目录，结果包括:JVM的GC日志、java运行基准测试的输出结果、通过pidstat工具记录的CPU占用情况。
2. run1.ipynb:对run1.sh生成的结果进行分析，读取java运行基准测试的输出结果的分数，画出条形图；画出添加限制后的运行分数与标准的对比；画出各项基准测试的详细分数；根据pidstat工具记录的CPU占用情况画出CPU占用情况。
3.run2.sh:Assignment2中，使用openjdk8、bishengjdk、TencentKonajdk、dragonwelljdk执行derby、startup、serial基准测试。在脚本所在目录打开控制台通过‘nohup bash run2.sh >run2.log &’命令即可运行。结果保存在脚本所在./log2目录下，结果包括:JVM的GC日志、java运行基准测试的输出结果、通过pidstat工具记录的CPU占用情况。
4.run2.ipynb：对run2.sh生成的结果进行分析，画出各个jdk在执行derby基准测试的分数对比条形图；openjdk、bisheng执行serial基准测试的分数对比条形图；各个jdk执行startup基准测试分数的几何平均值的分数对比条形图；通过t检验验证各个jdk的分数是否有显著差异。
5.run3.sh:Assignment3中，使用perf stat收集系统级性能特征的整体概述。指定应用程序的进程ID，并让它运行一段定义的持续时间，以了解CPU使用情况、缓存行为等。
通过‘nohup bash run3.sh > log3/run3.log 2>&1 &’，命令运行，结果保存到log3/run3.log中。
6.run4.sh:Assignment3中，使用perf-java-flames记录SPECjvm2008 的serial基准测试运行时的系统函数调用情况。使用‘nohup bash run4.sh > log4/4.log 2>&1 &’命令运行，结果包括：基准测试输出’log4/4.log 2>&1 ’、perf工具记录的data数据、执行perf script将data数据转换为的stacks调用栈信息、将stacks调用转换记录了每个采样点的函数调用栈collapsed文件、根据collapsed文件生成的svg火焰图、运行基准测试过程中记录的java和perf进程的系统资源占用情况。以上结果都保存到‘log4/<JavaPid>’
7.run3.ipynb：对run4.sh的结果进行分析，统计被调用最多的函数，函数总的和平均执行时间，画出cpu占用曲线。
