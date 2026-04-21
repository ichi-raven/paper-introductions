#import "@preview/touying:0.5.2": pause, meanwhile

#import "../slide-template.typ": slide, title-slide

#title-slide(
  title: "",
  authors: "
  *1: 
  *2: ",
  venue: ""
)

#slide(title: "Overview")[

]

#show figure.caption: it => it.body

#slide(title: "Background and Context")[
 
]

#slide(title: "References")[
  #bibliography("references.bib", style: "ieee", title: none)
]