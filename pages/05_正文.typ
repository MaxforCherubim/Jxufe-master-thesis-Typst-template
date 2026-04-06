#import "../utils/typeset.typ": *
#show: typeset

= 绪论

== 研究背景与意义

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 10)

=== 文献评述

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 10)

=== Test

Context.

= 理论基础

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 40)

== 概念定义

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 10)

=== 研究内容

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 10)

==== 四级标题

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 40)

===== 五级标题

#kouhu(indices: 1, length: 20)
#lorem(10)
#kouhu(indices: 2, length: 10)
#figure(
  image("../imgs/论文流程图.png", width: 90%),
  caption: "论文流程图",
) <图2.1>

= 数据集构建

== 数据清洗

数据清洗流程图如下#[@图3.1]所示
#figure(
  image("../imgs/数据清洗流程图.png", width: 90%),
  caption: "数据清洗流程图",
) <图3.1>
注：如有需要可对图片进行注释说明。

图片来源：如需对图片来源进行说明，请参照此格式。

#linebreak()

脚注#footnote("脚注文本")

= 模型构建

#figure(
  tlt("../tables/三线表.xlsx"),
  caption: "筛分粒度组成",
) <表1>
注：如有需要可对表格进行注释说明。

数据来源：如需对#[@表1]来源进行说明，请参照此格式。
