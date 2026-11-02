+++
title = "Projects"
description = "Things I'm building and the notes I keep while learning."
template = "projects.html"

[extra]
projects = [
	{ name = "Themis", url = "https://github.com/tofchaliss/themis", tags = ["Go", "PostgreSQL", "Security"], description = "Open-source security-intelligence backend. It ingests SBOM and VEX documents, correlates components against NVD and OSV CVE feeds, and turns the results into prioritised, triaged findings — without touching your build system." },
	{ name = "themis-ai-runtime", url = "https://github.com/tofchaliss/themis-ai-runtime", tags = ["Go", "AI", "Governance"], description = "The AI execution layer for Themis: a governed harness that runs model-backed work under deterministic control, plus a benchmark suite for the models behind it. Model output stays advisory." },
	{ name = "chopin", url = "https://github.com/tofchaliss/chopin", tags = ["Python", "MCP", "Agents"], description = "My development orchestrator for the Themis platform. It drives a plan → build → test → review loop with one model as architect and reviewer and another as implementer, over local Git and a small MCP server." },
	{ name = "system-design-notes", url = "https://github.com/tofchaliss/system-design-notes", tags = ["Notes", "Distributed systems"], description = "My study notes on system design: caching strategies and eviction, CAP and consistency levels, clocks, and summaries of research papers." },
]
+++

Most of my time outside work goes into **Themis**, a platform for tracking
vulnerabilities in the software you ship, and the tooling around it. All of
these are open source on [GitHub](https://github.com/tofchaliss).
