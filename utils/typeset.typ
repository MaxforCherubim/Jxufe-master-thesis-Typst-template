#import "@preview/cuti:0.4.0": show-cn-fakebold
#import "@preview/pointless-size:0.1.1": zh
#import "@preview/itemize:0.2.0" as el
#import "@preview/numblex:0.2.0": numblex
#import "@preview/kouhu:0.2.0": kouhu

#let typeset(doc) = {
  show: show-cn-fakebold
  show: el.default-enum-list.with(bottom-edge: "baseline")

  //! 设置页眉页脚
  let calc-headings(headings) = {
    let max-page-num = calc.max(..headings.map(i => i.location().page()))
    let first-headings = (none,) * max-page-num
    let last-heading = context query(heading.where(level: 1).before(here())).at(-1).body
    let target-headings = (none,) * counter(page).final().at(0)
    //! 该循环排除了一页出现两个一级标题的情况
    for h in headings {
      if first-headings.at(h.location().page() - 1) == none {
        first-headings.at(h.location().page() - 1) = h.body
      }
    }
    for i in range(target-headings.len()) {
      target-headings.at(i) = {
        if i + 1 <= first-headings.len() and first-headings.at(i) != none {
          first-headings.at(i)
        } else {
          last-heading
        }
      }
    }
    target-headings
  }
  let paper-title = "论文标题"
  set page(
    margin: (
      top: 3.5cm,
      bottom: 2.5cm,
      left: 2.5cm,
      right: 2.5cm,
    ),
    header-ascent: 0.5cm,
    header: context [
      #set text(font: ("Times New Roman", "SimSun"), size: zh(5))
      #set align(center + bottom)
      #let is-odd = calc.odd(here().page())
      #let head-text = if is-odd {
        paper-title
      } else {
        calc-headings(query(heading.where(level: 1))).at(here().page() - 1)
      }
      #head-text
      #v(-6pt)
      #line(length: 100%, stroke: 0.5pt)
    ],
    footer-descent: 0.5em,
    footer: context [
      #set text(font: "Times New Roman", size: zh(-5))
      #set align(center + top)
      #counter(page).display("1")
    ],
  )

  //! 设置标题序号
  set heading(
    numbering: numblex(
      "
    {[1    ]:d==1;[1]:d==2;[1]:d==3}
    {[.1    ]:d==2;[.1]:d==3}
    {[.1    ]:d==3;}
    {        ([1]):d==4}
    {        [①]:d==5}
    ",
    ),
  )
  show heading.where(level: 1): it => {
    show h.where(amount: 0.3em): none
    it //h是Typst的内置“间距原语”
  }

  //! 设置标题格式
  show heading: set text(weight: "regular")
  show heading.where(level: 1): it => {
    set text(
      font: ("Times New Roman", "SimHei"),
      size: zh(-3),
      top-edge: 1.5em,
    )
    //! 第一个一级标题之前（含自身）就一个，所以大于1就分页
    if query(heading.where(level: 1).before(here())).len() > 1 {
      pagebreak() + it
    } else {
      it
    }
    v(0.5em)
  }
  show heading.where(level: 2): it => {
    set text(
      font: ("Times New Roman", "SimHei"),
      size: zh(4),
      top-edge: 1.5em,
    )
    v(0.5em)
    it
    v(0.5em)
  }
  show heading.where(level: 3): it => {
    set text(
      font: ("Times New Roman", "SimHei"),
      size: zh(-4),
    )
    v(0.5em)
    it
    v(0.5em)
  }
  show heading.where(level: 4): it => {
    set text(
      font: ("Times New Roman", "SimSun"),
      size: zh(-4),
    )
    it
  }
  show heading.where(level: 4): it => {
    set text(
      font: ("Times New Roman", "SimSun"),
      size: zh(-4),
    )
    it
  }

  //! 设置段落格式
  set par(
    justify: true,
    first-line-indent: (amount: 2em, all: true),
    leading: 1em,
    spacing: 1em,
  )

  //! 设置正文格式
  set text(
    font: (
      "Times New Roman",
      "SimSun",
    ),
    size: zh(-4),
    lang: "zh",
    region: "cn",
  )
  doc
}
