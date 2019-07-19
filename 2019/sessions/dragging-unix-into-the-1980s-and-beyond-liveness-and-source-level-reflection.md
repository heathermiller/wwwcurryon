---
layout: 2019-abstract
title: "Dragging Unix into the 1980s (and beyond?): liveness and
source-level reflection"
speakers:
  - id: "stephen_kell"
    name: "Stephen Kell"
    affiliation: "University of Kent"
    url: "https://www.cs.kent.ac.uk/people/staff/srk21/#publications"
    twitter: "stephenrkell"
    known-for: ""
    list: "yes"
    video: "https://www.youtube.com/watch?v=nwrCestQTaw"
---

<br/>

### Abstract

Most software continues not to be soft. Most software, perhaps not coincidentally, is built atop Unix-like abstractions originating in the 1970s. To surmount this, instead of treating our Unix-like core as a black box (as language VMs do) or throwing it away (as the world has steadfastly refused to do) we can choose to evolve these abstractions, compatibly. Done right, this can give new 1980s-style superpowers (or things even more futuristic still!) to all software, not just new software built with new systems or languages. I'll talk about some new support for "live" change I'm prototyping within a commodity Linux userspace: object motion via pointer tracking, source-in-situ (borrowing the best properties of Smalltalk images), and reflection down to the source level. Along the way, we'll visit some of the murkier corners of the Unix userland, such as what goes on during dynamic linking, how debugging works and doesn't (currently), and why linking and garbage collection amount to the same problem.

### Bio

Stephen Kell does practical research on programming systems. His
interests span most aspects of how we build software. and his research
goal is to create infrastructure that makes quality software more
cost-effective to create -- where the costs in question are primarily
human, not about machine resources. The systems he builds sit mostly on
the boundary between operating systems and language runtimes, between
which he sees only a very fluid boundary.

Some past and present research topics include: building software out of
heterogeneous "found" components; robust dynamic analysis on the JVM;
cross-language interoperability; realistic formal and metaprogrammable
specifications of operating systems' linking, loading and system call
interfaces; reflective run-time services in Unix-like processes; and
using the latter to provide new kinds of dynamic checking in C and other
[traditionally] unsafe languages.

Currently he is a Lecturer at the University of Kent.
