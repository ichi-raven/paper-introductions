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
  - Realtime screen-space refractions and caustics @Mayer2026SSTracing
    - *Avoid ray marching by using Newton's method* for intersection tests
    - Achieve convergence *only in 2-6 iterations*, enabling real-time performance\
      (ray marching typically requires 100 steps)

  #figure(
    image("assets/image.png"),
    caption: "teaser image: A boat scene",
  )
]

#show figure.caption: it => it.body

#slide(title: "Background and Context")[
  - In computer graphics, *refractions and caustics are important* for transparent materials 
    - like water and glass
  
  - Caustics rendering using full ray tracing (path tracing) is \ *completely impractical for real-time applications*...
    - Even path tracing, it is too difficult to converge in low spp

  - Traditional methods rely on *screen-space ray marching*.
    - computationally expensive $arrow.r$ not suitable for real-time applications
  
 #place(bottom + center, dy: -50pt)[
    #text(size: 16pt)[complement]
    ]
]

#slide(title: "Key Idea: Newton's Method")[
  - *Newton's method* is an iterative root-finding algorithm that can be used to find the intersection of rays with surfaces
    - It converges quadratically near the root, which allows for fast convergence in a few iterations

  #figure(
    text(size: 28pt)[$s_{n + 1} = s_n - frac(f(s_n), f'(s_n))$],
    caption: text(size: 15pt)[Newton's method iteration formula],
    gap: 25pt
  )

  - The authors adapt Newton's method to solve the ray-surface intersection problem in screen space
]

#slide(title: "References")[
  #bibliography("references.bib", style: "ieee", title: none)
]