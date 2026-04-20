#import "@preview/touying:0.5.2": pause, meanwhile

#import "../slide-template.typ": slide, title-slide

#title-slide(
  title: "Ultra-fast Screen-Space Refractions and Caustics via Newton's Method",
  authors: "Chase Mayer*1, Ulf Assarsson*2, Erik Sintorn*2
  *1: Harvard-Westlake School
  *2: Chalmers University of Technology and University of Gothenburg",
  venue: "Journal of Computer Graphics Techniques (JCGT) 
   vol. 15, no. 1, 44-59, 2026"
)

#slide(title: "Overview")[
  - リアルタイムな、スクリーンスペースでの屈折とコースティクスの計算手法を提案 @Mayer2026SSTracing
    - 先行研究の課題A
    - 先行研究の課題B
  - 本論文のアプローチ

  #figure(
    image("assets/image.png"),
    caption: "teaser image: A boat scene",
  )
]

#slide(title: "Method")[
  - 提案手法の概要
    - ステップ１
    - ステップ２
]

#slide(title: "References")[
  #bibliography("references.bib", style: "ieee", title: none)
]