#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
#align(center)[#text(size: 35pt)[6 $sigma$]]
= 什么是$sigma$
$sigma$是在统计学中表示标准差代的符号。

一个用缺陷来衡量过程的统计概念——在六西格玛水平上，每百万个机会就有3.4个缺陷。
#figure(caption: [6$sigma$])[#image("image-23.png")]
= Critical-to-Quality(CTQ)
显著影响该流程输出的流程要素。识别这些要素就是弄清楚如何进行改进，从而大大降低成本和提高质量。

Six Sigma is about practices that help you eliminate defects and always
deliver products and services that meet customer specifications.
#image("image-27.png")
显著影响该流程输出的流程要素。识别这些要素就是弄清楚如何进行改进，从而大大降低成本和提高质量。
= 怎么实现$6sigma$:DMAIC 
+ Define
+ Measure
+ Analyze
+ Improve
+ Control
= 实现$6sigma$的工具
== Brainstorming
#figure(caption: [5why 通过 不断的提问来找到问题根源])[#image("image-24.png")]
== Mistake Proofing(防呆设计)
= Key Roles for Six Sigma
+ Executive Leadership
+ Champions
+ Master Black Belts
+ Black Belts
+ Green Belts
== Process capability
过程能力是指一个过程能够持续产生符合过程规范的输出的度量/程度。

Process capability refers to the
measure/degree to which a process
can consistently produce output that
meets process specifications.

要足够多的样本，大概是大于50才是有效的
#image("image-25.png")
=== 两个重要参数(前提是数据是符合正态分布的)
- $C_p$
  $ C_p=("USL"-"LSL")/(6sigma) $
- $C_"pk"$
  $ C_"pk"=min[("USL"-mu)/(3sigma), (mu-"LSL")/(3sigma)] $
  #image("image-26.png")
  $C_"pk">2$是要尽量做到的。
