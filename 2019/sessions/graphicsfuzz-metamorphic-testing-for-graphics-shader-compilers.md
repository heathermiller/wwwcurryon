---
layout: 2019-abstract
title: "GraphicsFuzz: Metamorphic Testing for Graphics Shader Compilers"
speakers:
  - id: "alastair_donaldson"
    name: "Alastair Donaldson"
    affiliation: "Google"
    url: "http://multicore.doc.ic.ac.uk"
    twitter: "afd_icl"
    known-for: ""
---

<br/>

### Abstract

Graphics drivers are hard to build and hard to test, yet their correct operation is critical: a mobile device that is functioning perfectly well with the exception of its display is not very useful!  In this talk I will describe our experience building and using GraphicsFuzz, an automated testing tool for graphics drivers based on metamorphic testing.  GraphicsFuzz originated as a research project at Imperial College London, which led to the GraphicsFuzz spin-out company that was acquired by Google in 2018.  GraphicsFuzz is now a central line of defence in ensuring the quality of graphics drivers for the Android platform.  GraphicsFuzz focuses on finding bugs in shader compilers.  GraphicsFuzz automatically finds cases where a shader compiler has generated wrong code by: (1) starting with an original, high-value shader (e.g. captured from a game); (2) applying semantics-preserving transformations to this original shader to produce a family of equivalent shaders that should render identical or very similar images to the original shader when executed on the same GPU; (3) calling out compiler bugs by identifying significant mismatch between images; (4) homing in on the root causes of bugs by automatically reducing a transformed shader for which a mismatch occurs until the difference between the original and transformed shaders is as small as possible whilst still preserving the mismatch.  As well as providing technical details of how the approach works and showcasing some example bugs found by the technique, I will discuss some of the main open problems and opportunities related to applying metamorphic testing automatically at scale, including how to cope with potential false alarms related to round-off error associated with floating-point computation, how to automatically triage and de-duplicate bug reports, and how to test the metamorphic testing tool itself.

### Bio

Alastair Donaldson is a Software Engineer working in the Android Graphics Tools team at Google, where he leads the GraphicsFuzz project on automated graphics driver testing.  Alastair is also a Reader in the Department of Computing at Imperial College London, which is where the research behind GraphicsFuzz originated; this research led to a start-up company (of the same name) that was acquired by Google in 2018.  His research and engineering work focuses on novel techniques and tools to support programming, testing and reasoning about highly parallel systems.  He was the recipient of the 2017 BCS Roger Needham Award and an EPSRC Early Career Fellowship, and has published 80+ articles on programming languages, formal verification, software testing and parallel programming.  Alastair was previously a Visiting Researcher at Microsoft Research Redmond, an EPSRC Postdoctoral Research Fellow at the University of Oxford and a Research Engineer at Codeplay Software Ltd.  He holds a PhD from the University of Glasgow, and is a Fellow of the British Computer Society.

