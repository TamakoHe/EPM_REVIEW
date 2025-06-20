#set text(size: 15pt, font: ("Arial", "Source Han Serif SC"))
#set heading(numbering: "1.")
#align(center)[#text(size: 35pt)[Robust Manufacturing Design]]
= 定义 
Robust Design is an engineering methodology for improving
productivity during research and development (R&D) so that
high-quality products can be produced quickly and at low
cost.

鲁棒设计是一种在研发（R&D）期间提高生产力的工程方法，以便能够快速、低成本地生产出高质量的产品。

鲁棒设计借鉴了从统计实验设计到计划实验的许多想法，以获得有关工程决策所涉及的变量的可靠信息。

#image("image-13.png")
= Taguchi method 
== 什么是品质(Quality)
田口方法用total loss to society(对社会的负面影响)来描述品质

理想的品质意味着loss为0 
== cost 
+ Operation cost 
+ Manufacturing cost 
+ R&D cost(研发成本) 
制造成本和研发成本由生产商承担，然后通过产品的购买价格转嫁给客户。

更高的质量意味着更低的运营成本，反之亦然。

稳健设计(Robust design)是一种在提供高质量产品（客户满意度）的同时保持低运营成本的系统方法。
== Robust design的主要工具
+ Quality Loss Function
- 传统的质量损失函数
$ L(y)=cases(0\, |y-m|<Delta_0, A_0\, "otherwise") $
#figure(caption: [超出这个范围就要赔偿了])[#image("image-14.png")]
- 田口的观点
$ L(y)=k(y-m)^2 $
#figure(caption: [たぐち’s GLF])[#image("image-15.png")]
$ k=A_0/Delta_0^2 $
$y=m$的时候，质量损失函数为0，也就是最理想的情况，越远离m，质量损失的上涨速度越快
#figure(caption: [三种常见的QLF])[#image("image-16.png")]
+ Orthogonal arrays
= 参数的分类, P Diagram
+ Signal factor 
  主要是用于得到对应反馈所需要的信号
+ Noise factor
  这些参数可以由设计师以最佳方式指定。这些等同于优化中的设计变量。这些因素可以控制或操纵，以提高产品的性能和可靠性。电子制造中的控制因素示例可能包括：
  + 制造工艺参数
  + 材料性质
  + 部件选择
  + Assembly techniques(封住技术)
  + 测试流程(Testing procedures)
+ Control factor
  #image("image-17.png")
+ Noise factor
   + External
   + Unit-to-unit variation(不同的单元之间的可能设计成一样的参数实际有)
   + Deterioration 随着时间改变，产品的参数逐渐恶化
= Average Quality Loss
$y_1, y_2,...,y_n$代表了各个单元的各个品质因素
$ Q=1/n [L(y_1)+L(y_2)+...+L(y_n)] $
$L$是质量损失损失函数方程
$ Q=k/n [(y_1-m)^2+(y_2-m)^2+...+(y_n-m)^2]=k[(mu-m)^2+(n-1)/n sigma^2] $
$ mu=1/n sum_(i=1)^n y_i $
$ sigma^2=1/(n-1) sum_(i=1)^n (y_i-mu)^2 $
$n->infinity$, $Q=k[(mu-m)^2+sigma^2]$
= Engineering Design Problem (steps)
+ Concept Design
+ Parameter Design
+ Tolerance Design(找到合适的质量平衡点)
#image("image-22.png")
= Taguchi parameter design
#image("image-18.png")
Design parameters=control factors
= Design of Experiment
信息收集练习。DOE是一种用于确定过程输入和过程输出之间关系的结构化方法。

An information gathering exercise. DOE is a
structured method for determining the relationship between process inputs
and process outputs.

$ "需要实验的次数"="levels"^"factors" $
e.g: 2 levels 4 factors, $n=2^4=16$
目标：在最少的实验次数中得到输入和输出的关系

常见方法是构造Taguchi Orthogonal Array (OA)

正交数组的属性是，在所有其他因子的每个测试集中，每个因子设置都会出现相同的次数。这允许在各种条件下对因素水平进行平衡的比较。

怎么表示要进行的实验的类型:
$ L_n (m^p) $
$n$:做实验的次数\
$m$:number of levels\
$p$:number of variables\
#figure(caption: [$L_9 (3^4)$])[#image("image-19.png")]
- 可以结合外部噪声因素矩阵
#image("image-20.png")
#image("image-21.png")
得到了每一个实验的在每一个噪声条件下的每个变量的值之后，

对于每一行，计算每一行的Q(各变量的质量函数值的平均值)，然后找到最小的质量损失平均值的那一行。
