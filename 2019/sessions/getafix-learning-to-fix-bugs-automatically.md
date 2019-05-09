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
---

<br/>

### Abstract

Developers spend a significant amount of their time fixing bugs. Fixes often are repetitive, so it appears that some portion of this work should be automated. Indeed, some recent approaches offer automation, but these typically explore a large space of potential fixes by making varying combinations of mutations, trying them all until one that passes the test suite. This is not only computationally expensive, but the suggested may not look natural to a developer. We present Getafix, a tool that offers readable bug fixes without requiring massive computational resources. Getafix leaarns from your bug fix history. It extracts past code changes that fixed bugs and learns, in an off-line phase, a set of templates from those fixes. As new bug reports appear, Getafix uses these templates to create and rank a set of suggestions in mere seconds, as well as offer fixes that resemble human-made fixes.  At Facebook, Getafix has been used to suggest fixes for bugs reported by Infer.

### Bio

_Andrew Scott_ graduated from Harvey Mudd College in 2017 with a BS in computer science. Since then I've been working at Facebook to study how developers change code, particularly the Getafix project which I'm presenting.

