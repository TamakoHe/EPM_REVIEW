#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
#align(center)[#text(size: 35pt)[Quality control]]
= QC的目标
尽量找出产品的所有缺陷(identify any defects), 在产品发布开发(developed)之后，但是发布(released)之前。
= QC和QA(quality assurance)
- 质量保证（QA）是一个积极主动的过程，通过逐步完善制造流程、政策和程序来预防缺陷。
- 质量控制（QC）是一个反应性流程，专注于在交付给客户之前有效识别成品的缺陷。
#figure(caption: [QA and QC])[#image("image.png")]
= 七种QC工具
== Flowchart
就是流程图，有不同形状的框的那种
#figure(caption: [Flowchart])[#image("image-1.png")]
== Check Sheet
#figure(caption: [Check Sheet])[#image("image-2.png")]
== Cause-Effect Diagram 
一种典型的Cause-Effect Diagram图是鱼骨(ishikawa) diagram.
#figure(caption: [石川图])[#image("image-3.png")]
== Pareto Chart 
#image("image-4.png")
从左到右，事件发生的频率逐渐降低，总共加起来是100%
== Control Charts 
Control charts are used to determine whether a process is stable and predictable over time.
#image("image-5.png")
control charts 包含一个中间的平均值线，由历史数据决定最高值(upper control limit)和最低值(lower control limit). 
$ overline(X)=(sum_(i=1)^N x_i)/N $
$ hat(sigma)=sqrt((sum_(i=1)^N (x_i-overline(X))^2)/N) $
$ "UCL"=overline(X)+A hat(sigma) $
$ "LCL"=overline(X)-A hat(sigma) $
描述的是过程随着时间的改变。
$A$的作用(假设数据符合正太分布) 
#image("image-6.png")
如果数据符合正太分布，那么$A=1$, 68.26%的数据在控制边界内，$A=2$，95.44%的 
数据应该在控制边界内。
= Histogram(直方图 📊)
直方图本质上是一个条形图，让您一目了然地了解流程中存在的变化。尽管，它创建了一个“块分布曲线”，可用于帮助识别和消除过程变化的原因。
#image("image-7.png")
数值是很轴，频率是纵轴，总面积为1。
= Scatter Diagram(散点图)
散点图绘制成对的数字数据，每个轴上有一个变量，以寻找它们之间的关系。如果变量是相关的，这些点将沿着一条线或曲线落下。相关性越好，紧密的点就越贴合线。
= Cost of Quality (COQ)
质量成本（COQ）是指在确保您获得高质量交付成果时产生的成本。它还包括处理您工作中任何缺陷的费用。这与生产成本不同，生产成本是指在劳动力和材料上花费的总金额。
#figure(caption: [COQ曲线])[#image("image-8.png")]
== Prevention Costs(预防费用)
防止出现劣质产品的成本
== Appraisal Costs(评价费用)
#image("image-9.png")
是质量和过程审查之类的费用
== Internal Failure Costs 
和在交付给消费者之前发现的内部缺陷
#image("image-10.png") 
== External Failure Costs
在交付之后发现了缺陷的成本
*最糟糕的COQ,预防和评价费用增加预算来减少内部和外部COQ*
#image("image-11.png") 
== 可见和不可见COQ 
#image("image-12.png")
