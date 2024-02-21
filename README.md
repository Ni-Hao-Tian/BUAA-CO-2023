# BUAA-CO-2023

从这个repo可以大致了解到BUAA计算机学院2023学年计算机组成的实验部分要求与概况

## 实验简介
实验分为pre, P0-P7部分，考查知识点与内容为
- Pre 考查假期预习内容，包含Logisim/Verilog/MIPS，不算分，难度比P0-P2简单
- P0 考查Logisim，考点主要是一道组合、两道时序（本学年考了俩FSM）
- P1 考查Verilog，考点同上
- P2 考查MIPS汇编，基本就是C语言转汇编的翻译，会提供C源码
- P3 基于Logisim实现单周期CPU，注意，从此开始课程组不会保送可能开始挂人（但是其实并不容易挂，P3仅有少数人挂）
- P4 基于Verilog实现单周期CPU，课上扩展指令集（新指令是课程组自编指令，不会出现在MIPS指令集中）
- P5 基于Verilog实现流水线CPU，课上同上
- P6 对P5的流水线CPU进行指令集扩展，同时加入乘除模块
- P7 基于P6流水线CPU搭建mips微体系结构，引入系统桥、外设、CP0异常处理模块，课上强测课下实现内容 + 加指令

## 实验规则
1. 得分取决于最终通过的课上Project以及过题数（小道消息仅与最后一次课上测试过题数有关）
2. Project分为课下和课上部分，课下通过才有课上测试资格
3. 闯关式课上测试，课下部分会按照计划时间对所有人开放，但是课上测试必须通过之前的Project（例如课上测试P4要求为：通过P3课上 + 通过P4课下）
4. 每周固定2小时上机，除P7以外都是3道题，过两道则本Project通过，P7是4道题，3道强测和1道加指令
5. Pre + P0-P2是保证必过的，从实验次数上而言总共有3次补救机会，也就是说P3-P7可以挂3次照样得到通过P7的分数

## 实验课学习概况&经验分享
笔者是pre, P0-P6通关, P7挂了一次，二战P7通过

- Pre阶段，需要打好基础，好好看教程，对于Verilog部分，建议去做一做HDL-bits会有更好的理解
- P0-P2阶段是正式开课后对于本学期课程三个软件的正式学习，认真对待即可，特别注意P0中对于GRFs的实现，会在P3使用到
- P3阶段初始开始搭建CPU，对于Logisim，合理使用与命名tunnel以及合理通过设计子模块（ALU、GRF、IFU、CU等等）很有利于课上测试，同时，从此开始可以开始自行搭建评测机了
- P4阶段是用Verilog实现单周期CPU，其实就是对着Logisim翻译，可以合理的使用宏命名以及一些工程化方法来方便后续的扩展，认真准备课上测试P4,P5,P7是课上挂的比较多的
- P5阶段是用Verilog实现流水线CPU，可以说是工程量巨大的一周，仅次于P7，同时也是课上测试开始上难度的一周，推荐看往年博客准备，同时，推荐先实现基本数据通路后再去加入转发冒险
- P6阶段相对P5要轻松一些，主要是指令集的扩展以及加入乘除模块，以及将IFU和DM对外部开放，需要小心的是乘除槽的时序与控制信号的设计
- P7是工作量最大的一Project，如果之前没挂的话会有两周的准备时间，请充分利用这两周（而不是像笔者一样只留一周去弄。。。），课下做完备的测试后，课上只需要提交课下实现即可通过3道题，最后一道题是引入新的异常

## 一些建议：
- 在前期打好基础是顺利通过实验课的前提
- 对于CPU的搭建，请完全想明白设计，写好设计文档再去实现
- 不要复制你的代码
- 合理进行层次化设计以及使用宏定义，保持良好的代码风格以及良好的扩展性会让实验顺利很多
- 要充分测试你的CPU，最好搭建自动化评测机 + 手动构造特殊样例，评测机会有讨论区大佬开源可以使用
- 实验课以外的理论课同样需要非常重视，哪怕它们之间在部分内容上有些割裂
