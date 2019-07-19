---
layout: 2019-abstract
title: "Getafix: Learning to fix bugs automatically"
speakers:
  - id: "andrew_scott"
    name: "Andrew Scott"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
  - id: "johannes_bader"
    name: "Johannes Bader"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
  - id: "satish_chandra"
    name: "Satish Chandra"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
    video: "https://www.youtube.com/watch?v=9QvcUNBPw4A"
---

<br/>

### Abstract

Developers spend a significant amount of their time fixing bugs. Fixes often are repetitive, so it appears that some portion of this work should be automated. Indeed, some recent approaches offer automation, but these typically explore a large space of potential fixes by making varying combinations of mutations, trying them all until one that passes the test suite. This is not only computationally expensive, but the suggested may not look natural to a developer. We present Getafix, a tool that offers readable bug fixes without requiring massive computational resources. Getafix leaarns from your bug fix history. It extracts past code changes that fixed bugs and learns, in an off-line phase, a set of templates from those fixes. As new bug reports appear, Getafix uses these templates to create and rank a set of suggestions in mere seconds, as well as offer fixes that resemble human-made fixes.  At Facebook, Getafix has been used to suggest fixes for bugs reported by Infer.

### Bio

_Andrew Scott_ graduated from Harvey Mudd College in 2017 with a BS in computer science. Since then I've been working at Facebook to study how developers change code, particularly the Getafix project which I'm presenting.


_Johannes Bader_ is a software engineer at Facebook. He works on the Getafix project, which attempts to automate predictable engineering work by finding patterns in human code changes. From 2016 to 2018 he worked at Microsoft on the open source tool AutoRest, which auto-generates natural code in several programming languages from REST API specifications. He received his MS in computer science from Karlsruhe Institute of Technology in 2016 and wrote his thesis on gradual program verification at Carnegie Mellon University.


_Satish Chandra_ obtained jis PhD from the University of Wisconsin-Madison in 1997, and a B.Tech. from the Indian Institute of Technology-Kanpur in 1991, both in computer science. From 1997 to 2002, he was a member of technical staff at Bell Laboratories, where his research focused on program analysis, domain-specific languages, and data-communication protocols. From 2002 to 2013, he was a research staff member at IBM Research, where his research focused on bug finding and verification, software synthesis, and test automation. From 2013 to 2016, he worked at Samsung Research America, where he led the advanced programming tools research team. In 2016, he started working at Facebook. He is an ACM Distinguished Scientist.
