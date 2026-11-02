// Franco Chalissery's CV. CI compiles it to /franco-chalissery-cv.pdf with
// Typst once it contains no "TODO" markers; then remove `draft = true` from
// content/go/cv.md so /cv points at it.
//
// Local build:  make cv   (needs the typst CLI, https://typst.app)
//
// Uses only fonts bundled with Typst, so CI needs no extra font install.

#let accent = rgb("#6c3483")
#let muted = rgb("#5f6368")

#set document(title: "Franco Chalissery — CV", author: "Franco Chalissery")
#set page(paper: "a4", margin: (x: 1.7cm, y: 1.5cm))
#set text(font: "Libertinus Serif", size: 10.5pt)
#set par(leading: 0.6em)
#set list(marker: [•], indent: 0.2em, body-indent: 0.5em, spacing: 0.6em)
#show link: set text(fill: accent)

#let section(title) = {
  v(0.8em)
  text(weight: "bold", size: 11pt, fill: accent, tracking: 0.06em)[#upper(title)]
  v(-0.6em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(-0.1em)
}

// One role or degree: title and organisation on the left, dates on the right.
#let entry(title, org, dates, body) = {
  grid(
    columns: (1fr, auto),
    [*#title* #h(0.3em) #text(fill: muted)[· #org]],
    text(fill: muted)[#dates],
  )
  v(-0.3em)
  body
  v(0.3em)
}

// ---------------------------------------------------------------- header

#align(center)[
  #text(size: 22pt, weight: "bold")[Franco Chalissery]
  #v(-0.6em)
  #text(size: 12pt, fill: muted)[Software Engineer]
  #v(-0.4em)
  #link("mailto:tofchaliss@gmail.com")[tofchaliss\@gmail.com] ·
  #link("https://tofchaliss.com")[tofchaliss.com] ·
  #link("https://github.com/tofchaliss")[github.com/tofchaliss] ·
  #link("https://www.linkedin.com/in/francochalissery/")[linkedin.com/in/francochalissery]
]

// --------------------------------------------------------------- summary

#section("Summary")
Software engineer focusing on infrastructure, platforms, Linux, open source
software, DevOps, distributed computing (Kubernetes), containerization, and the
cloud. I currently work primarily in Python, Go, and shell scripting.

// ------------------------------------------------------------ experience

#section("Experience")

// Copy each role from LinkedIn. Duplicate the block for every position.
#entry("TODO: Job title", "TODO: Company, City", "TODO: Mon YYYY – Present")[
  - TODO: what you built or owned, and its impact (numbers help)
  - TODO: second achievement
]

// -------------------------------------------------------------- projects

#section("Selected projects")

#entry("Themis", link("https://github.com/tofchaliss/themis")[github.com/tofchaliss/themis], "Go · PostgreSQL")[
  Open-source security-intelligence backend: ingests SBOM and VEX documents,
  correlates components against NVD and OSV CVE feeds, and produces
  prioritised, triaged findings without touching the build system.
]

#entry("themis-ai-runtime", link("https://github.com/tofchaliss/themis-ai-runtime")[github.com/tofchaliss/themis-ai-runtime], "Go")[
  Governed harness that runs model-backed work for Themis under deterministic
  control, plus a benchmark suite for the models behind it.
]

#entry("chopin", link("https://github.com/tofchaliss/chopin")[github.com/tofchaliss/chopin], "Python · MCP")[
  Development orchestrator that runs a plan → build → test → review loop
  across AI agents over local Git and a small MCP server.
]

// ---------------------------------------------------------------- skills

#section("Skills")
#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.6em,
  [*Languages*], [Python, Go, Shell],
  [*Platforms*], [Linux, Kubernetes, containers, cloud],
  [*Practices*], [DevOps, distributed systems, open source],
)

// ------------------------------------------------------------- education

#section("Education")
#entry("TODO: Degree", "TODO: Institution", "TODO: YYYY – YYYY")[]
