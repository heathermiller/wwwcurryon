---
layout: 2019-abstract
title: "Glean: facts about code"
speakers:
  - id: "simon_marlow"
    name: "Simon Marlow"
    affiliation: "Facebook"
    url: "https://simonmar.github.io"
    twitter: "simonmar"
    known-for: "Haskell"
    list: "yes"
---

<br/>

### Abstract

Semantic information about source code is a central requirement for
searching, navigating, and analysing code, all of which are important
tools in a developer's workflow.  As the size of the codebase grows,
collecting and maintaining accurate semantic information about the
code becomes harder; meanwhile our tools demand richer and richer
information.  In this talk I'll describe a system called Glean that
we're building at Facebook to address these problems. Glean is a
datalog-inspired storage and query engine that collects facts about
code from language-specific analysers and allows tools to query the
facts. Glean also supports automatically deriving facts so that
information can be presented at different levels of abstraction, from
very detailed language-specific information needed by analysers, to
the high-level language-independent relationships typically needed by
IDEs.

### Bio

Simon Marlow is a Software Engineer on Facebook's Abuse Detection Systems team in London. He is working on Haxl, a Haskell-based domain-specific language that is used by the teams fighting spam and malware. Simon is a co-author of the Glasgow Haskell Compiler, author of the book "Parallel and Concurrent Programming in Haskell", and has a string of research publications in functional programming, language design, compilers, and language implementation.

