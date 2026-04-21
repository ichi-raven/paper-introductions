
#import "@preview/touying:0.5.2": pause, meanwhile

#let green-main = rgb("#00B050")
#let font-name = "Yu Gothic"


// 通常スライドマクロ
#let slide(title: "", body) = {
  pagebreak()
  set page(
    paper: "presentation-16-9",
    margin: (top: 72pt, bottom: 16pt, left: 16pt, right: 16pt),
    header: {
      set text(fill: white, font: font-name)
      grid(
        columns: (1fr, auto),
        align: horizon,
        // 左：タイトル
        block(
          width: 110%, height: 60pt,
          fill: green-main,
          inset: (left: 16pt),
          outset: (left: 16pt, right: 16pt)
        )[
          #align(horizon)[
            #text(size: 28pt, weight: "bold")[#title]
          ]
        ],
        // 右：ページ番号
        block(
          height: 60pt,
          fill: green-main,
          inset: (right: 10pt),
          outset: (right: 16pt)
        )[
          #align(horizon)[
            #context {
              text(size: 13pt)[《#here().page()》]
              // box(stroke: white + 1pt, inset: (x: 8pt, y: 4pt))[
                
              // ]
            }
          ]
        ],
      )
    },
  )
  set text(font: font-name, size: 18pt)

  // コンテンツエリア
  block(
    width: 100%, height: 100%,
    //stroke: (paint: rgb("#aaaaaa"), thickness: 1pt, dash: "dashed"),
    inset: 20pt,
  )[#body]
}

// タイトルスライドマクロ
#let title-slide(
  header: "Paper introduction",
  title: "Title",
  authors: "Authors and their affiliations",
  venue: "Journal or conference name",
  theme-name: "ichi-raven",
  footnote: "* All figures without annotation in this slide are quoted from the same paper",
) = {
  set page(paper: "presentation-16-9", margin: 0pt, fill: green-main)
  set text(fill: white, font: font-name)

  place(top + center, dy: 40pt)[
    #text(size: 26pt)[#header]
  ]
  align(center + horizon)[
    #v(-30pt)
    #text(size: 36pt, weight: "bold")[#title]
    #v(20pt)
    #align(left)[
      #pad(left: 60pt)[#text(size: 20pt)[#authors]]
    ]
  ]
  place(bottom + center, dy: -50pt)[
    #text(size: 16pt)[#venue \ #theme-name]
  ]
  place(bottom + right, dy: -10pt, dx: -10pt)[
    #text(size: 13pt, style: "italic")[#footnote]
  ]
}

#let caption(body) = text(size: 12pt, fill: gray, body)