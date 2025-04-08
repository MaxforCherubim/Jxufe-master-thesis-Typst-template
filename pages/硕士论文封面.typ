#set page(margin: (
  top: 3.5cm,
  bottom: 2.5cm,
  left: 2.5cm,
  right: 2.5cm
))

//TODO: 封面logo
// #image("../assets/江西财经大学相关元素/硕士毕业论文封面logo.png", width: 6.78cm)

//TODO: 出版信息
// #block(
//   width: 70pt,
//   inset: (left: -15pt),
//   grid(
//     columns: (35pt, 1fr),
//     column-gutter: 10pt,
//     row-gutter: 1pt,
//     {
//       set text(
//         font: 字体.宋体,
//         size: 字号.五号,
//         weight: "regular"
//       )
//       rect(
//         width: 100%,
//         inset: (x: 0pt, bottom: 2pt),
//         stroke: none,
//         justify-text("学校代码", with-tail: true)
//       )
//     }
//   )
// )

#v(185pt) //肉眼估算

//TODO: 硕士学位论文/MASTER DISSERTATION
#set text(1em)
#set text(font: "", size: 46pt)
#align(center, "硕士学位论文")
#set text(font: "STZhongsong", size: 26pt)
#align(center, "MASTER DISSERTATION")

#v(1em)
#v(1em)
#v(1em)

//TODO: 论文题目（中英）

//TODO: 作者信息

//TODO: 年月
// #datetime(
//   year: 2024,
//   month: 12,
//   day: 1, //必须要年月日齐全
// ).display(
//   "[year]年[month]月"
// )

//TODO: 分页符
#pagebreak()