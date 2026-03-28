#import "@preview/cuti:0.4.0": show-cn-fakebold
#import "@preview/pointless-size:0.1.1": zh
#import "@preview/itemize:0.2.0" as el
#import "@preview/numblex:0.2.0": numblex

#let typeset(doc) = {
  show: show-cn-fakebold
  show: el.default-enum-list.with(bottom-edge: "baseline")
  set heading(numbering: numblex("{[一]、:d==1}{[1].:d==2}{[1]):d==3}"))
  show heading.where(level: 1): it => {
    show h.where(amount: 0.3em): none
    it //h是Typst的内置“间距原语”
  }
  set page(margin: (
    top: 3.5cm,
    bottom: 2.5cm,
    left: 2.5cm,
    right: 2.5cm
  ))
  set par(
    justify: true,
    first-line-indent: 1.01cm
  )
  set text(
    font: (
      "Times New Roman",
      "SimSun",
    ),
    lang: "zh",
    region: "cn",
    top-edge: "ascender",
    bottom-edge: "descender"
  )
  doc
}