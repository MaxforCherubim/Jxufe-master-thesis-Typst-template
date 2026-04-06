#import "@preview/rexllent:0.4.0": xlsx-parser
#import "@preview/pointless-size:0.1.1": zh

//! 设置三线表格式
#let tlt(path) = {
  set align(center)
  let data = read(path, encoding: none)
  xlsx-parser(
    data,
    parse-header: true,
    parse-stroke: true,
    prepend-elems: (table.hline()),
    stroke: (_, y) => {
      if y == 0 {
        return (bottom: black)
      }
    },
    table.hline(),
  )
}
