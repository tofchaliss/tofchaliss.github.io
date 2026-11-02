// Franco Chalissery's CV, published at tofchaliss.com/cv.
//
// CI compiles this to /franco-chalissery-cv.pdf on every deploy. If you add a
// placeholder, write it as TO-DO in capitals without the hyphen: CI skips
// publishing the PDF while any such marker is present.
//
// Local build:  make cv   (needs the typst CLI, https://typst.app)
//
// Uses only fonts bundled with Typst, so CI needs no extra font install.

#let accent = rgb("#6c3483")
#let muted = rgb("#5f6368")

#set document(title: "Franco Chalissery — CV", author: "Franco Chalissery")
#set page(paper: "a4", margin: (x: 1.5cm, y: 1.1cm))
#set text(font: "Libertinus Serif", size: 9.6pt)
#set par(leading: 0.5em)
#set list(marker: [•], indent: 0.2em, body-indent: 0.5em, spacing: 0.45em)
#show link: set text(fill: accent)

#let section(title) = {
  v(0.4em)
  text(weight: "bold", size: 10.5pt, fill: accent, tracking: 0.06em)[#upper(title)]
  v(-0.6em)
  line(length: 100%, stroke: 0.6pt + accent)
  v(-0.15em)
}

// One role or degree: title and organisation on the left, dates on the right.
#let entry(title, org, dates, body) = {
  grid(
    columns: (1fr, auto),
    [*#title* #h(0.3em) #text(fill: muted)[· #org]],
    text(fill: muted)[#dates],
  )
  v(-0.35em)
  body
  v(0.2em)
}

// ---------------------------------------------------------------- header

#align(center)[
  #text(size: 21pt, weight: "bold")[Franco Chalissery]
  #v(-0.65em)
  #text(size: 11.5pt, fill: muted)[Software Architect · Distributed Systems, Cloud Architecture, Backend Scalability]
  #v(-0.45em)
  Bangalore, India ·
  #link("mailto:francochalissery@gmail.com")[francochalissery\@gmail.com] ·
  #link("https://tofchaliss.com")[tofchaliss.com] ·
  #link("https://github.com/tofchaliss")[github.com/tofchaliss] ·
  #link("https://www.linkedin.com/in/francochalissery/")[linkedin.com/in/francochalissery]
]

// --------------------------------------------------------------- summary

#section("Summary")
Engineering leader experienced in designing and scaling distributed systems,
cloud-native microservices, and event-driven architectures. Proven track record of leading cross-functional teams, mentoring engineers, and driving
technical vision across large-scale, high-availability platforms. Strong
collaborator with product and business stakeholders, aligning technical roadmaps
with business outcomes.

// ---------------------------------------------------------------- skills

#section("Skills")
#grid(
  columns: (auto, 1fr),
  column-gutter: 1em,
  row-gutter: 0.45em,
  [*Technical*], [Python, Go, SQL, RESTful APIs, Redis, MongoDB, Elasticsearch, Kafka, GenAI],
  [*Cloud & DevOps*], [AWS, Azure, Docker, CI/CD, monitoring (Splunk, Prometheus, Grafana, ELK)],
  [*Core*], [Distributed systems, microservices architecture, cloud computing, scalable system design, data engineering, performance optimisation],
  [*Leadership*], [Mentoring and team leadership, cross-functional collaboration, stakeholder communication, conflict resolution],
  [*CS fundamentals*], [Algorithms, data structures, object-oriented design, system design],
)

// ------------------------------------------------------------ experience

#section("Experience")

#entry("Software Architect", "Radisys India, Bangalore", "Nov 2012 – Present")[
  - Designed and implemented a cloud-native Media Server that eliminated single points of failure and improved availability and fault isolation.
  - Redesigned the Media Server to support 20K RPM, reducing end-to-end latency by 30% and improving the product-wide user experience.
  - Led the design, implementation, and rollout of a multi-cell architecture for Identity Services, improving fault isolation, resilience, and high availability across regions.
  - Architected a highly scalable, distributed real-time data synchronisation pipeline on Kafka and Elasticsearch, enabling low-latency, tenant-aware updates and fast, flexible search across customer data.
  - Architected a canary rollout module enabling phased deployments, early issue detection, and lower transition risk.
  - Improved service resilience with fail-open strategies, load shedding, rate limiting, and caching, leading to significant availability gains.
  - Building GenAI-assisted vulnerability assessment and remediation for legacy products: a tracker for assessment and remediation plus a mitigation system.
  - Operated Tier-0 services through on-call leadership, in-depth incident analysis, and systemic fixes delivered across teams.
  - Collaborated with product teams and stakeholders to align technical solutions with business and integration goals.
  - Mentored and coached a team of 6–8 engineers, leading to multiple promotions to senior roles within a year and a high-performance culture that accelerated delivery.
]

#entry("Lead Engineer", "Sasken Communication, Bangalore", "Dec 2006 – Aug 2012")[
  - Designed and developed middleware at the heart of the eNodeB and the CDMA RNC, as part of the core network middleware team.
  - Developed a green deployment procedure for the RNC software, crucial for multiple North American vendors.
  - Developed interfacing components for ATCA hardware: IPMC, Shelf Manager, and Switch Blade.
  - Partnered with SRE, DevOps, and cross-functional teams to meet strict data and search SLAs.
  - Hired, mentored, and promoted engineers, building a collaborative, high-performing team.
]

#entry("Software Engineer", "Tandem Infotech, Bangalore", "Mar 2005 – Nov 2006")[
  - Developed a Linux kernel module for a new printer model previously run by standalone software, integrated on soft real-time Linux.
  - Implemented a printer module reporting statistics (ink, hardware diagnostics, and more) to a configurable central console.
]

// -------------------------------------------------------------- projects

#section("Open source")

#entry("Themis", link("https://github.com/tofchaliss/themis")[github.com/tofchaliss/themis], "Go · PostgreSQL")[
  Security-intelligence backend that ingests SBOM and VEX documents, correlates
  components against NVD and OSV CVE feeds, and produces prioritised, triaged
  findings; with a governed AI runtime
  (#link("https://github.com/tofchaliss/themis-ai-runtime")[themis-ai-runtime]) that keeps model output advisory.
]

// ------------------------------------------------------------- education

#section("Education")
#entry("Post Graduate Diploma in Embedded System Design", "CDAC, Trivandrum", "")[]
#entry("Bachelor of Engineering, Electronics and Communication Engineering", "Mookambigai Engineering College, Trichy", "")[]
