#let info-key(body, info-inset: info-inset, is-meta: false) = {
  set text(
    font: 字体.黑体,
    size: 字号.五号,
    weight: "regular",
  )
  rect(
    width: 100%,
    inset: info-inset,
    stroke: none,
    justify-text(with-tail: is-meta, body)
  )
}
#let info-value(body, info-inset: info-inset, is-meta: false, no-stroke: false) = {
  set align(center)
  rect(
    width: 100%,
    inset: info-inset,
    stroke: if no-stroke { none } else { (bottom: stoke-width + black) },
    text(
      font: 字体.黑体,
      size: 字号.五号,
      bottom-edge: "descender",
    )
  )
}
#let meta-info-key = info-key.with(info-inset: (x: 0pt, bottom: 2pt), is-meta: true)
#let meta-info-value = info-value.with(info-inset: (x: 0pt, bottom: 2pt), is-meta: true)

#block(width: 70pt, inset: meta-block-inset, grid(
  columns: (35pt, 1fr),
  column-gutter: 10pt,
  row-gutter: 1pt,
  meta-info-key("学校代码"),
  meta-info-value("school-code", info.school-code),
  meta-info-key("分类号"),
  meta-info-value("clc", info.clc),
  meta-info-key("密级"),
  meta-info-value("secret-level", info.secret-level),
  meta-info-key("UDC"),
  meta-info-value("udc", info.udc),
  meta-info-key("学号"),
  meta-info-value("student-id", info.student-id),
))