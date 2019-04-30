---
layout: 2019-abstract
title: "Run, actor, run"
by: Sebastian Blessing &amp; Tobias Wrigstad &amp; Sophia Drossopoulou
affiliation: Imperial College London &amp; Digital Frontier GmbH &amp; Uppsala University
video: 
profpic-class: sebastian_blessing_and_tobias_wrigstad_and_sophia_drossopoulou
---

[@scblessing](https://twitter.com/scblessing)
<br/>

### Abstract

The actor paradigm has been proposed as a natural approach to the development of concurrent programs. It has lead to the development of several actor-based languages, each representing different points in the language design space (e.g., pattern matching on message queues, ordering guarantees, sharing of mutable state), as well as in the implementation design space (e.g., mapping of actors to threads, garbage collection, scheduling).  But how do these languages perform? The Savina collection of micro benchmarks attempts to approach this question, with multiple programs exercising different design aspects. In our work to understand actor language performance, we want to run as many of the Savina programs as possible in as many actor languages as possible on increasingly capable configurations. In this talk we want to give a preliminary report for 27 out of the 29 Savina programs in three actor-based languages representing different ends in the design spectrum: Akka, CAF and Pony. We ran them on two architectures and using 2, 4, … 64 logical cores. We will show the results in beautiful plots. Be prepared for considerable disparity in the scaling behaviour across languages and programs.  And what conclusions can we draw from this disparity?  We will propose criteria describing the programs’ profiles (ratio of messages over work, contention etc) and their performance profiles (decreasing, jittering etc). We want to gauge the  audience’s opinions as to how intuitive and predictive such profiles are, and what else they should include. . We will then  attempt to correlate program profiles, scaling shapes with the implementation choices, again inviting the audience’s views on expected outcomes or co-relations to be considered.  We will also discuss further things to measure, whether we need a Savina II, and what programs this would consist of.   Actor language aficionados are invited to send us their Savina benchmark programs for their favourite actor languages in time before CurryOn so that we can include them in our study.

### Bio

From a young age, Sebastian Blessing has dreamt of engineering a programming language. After his MSc at Imperial College, he joined the team of Sylvan Clebsch, Andy McNeil, and Sophia Drossopoulou, which designed and implemented the first version of the Pony language. He is now working part-time on his PhD devoted to transparent distributed actor based programming, while also working full-time at the Digital Frontier GmbH and ABS on the development of custom solutions for ERP and data analytics, and applying his programming and engineering philosophy on a daily basis.  Tobias Wrigstad  is an associate professor at Uppsala University in Sweden working on Programming Languages and Software Engineering. He is currently most passionate about Type Systems, Garbage Collection and managed language runtimes – preferably all at the same time. Sophia Drossopoulou is a Professor at Imperial College London, working on Programming Languages, Program Verification and Specification, and Object Capabilities. She is optimistic that most things have reasons, and is passionate about finding and formulating  the most elegant, succinct and precise explanations. !!Message to CurryOn organisers!! We would like to do a chess-time talk format if possible. We think that the format and the concrete questions for the audience is an excellent fit for the topic, and what is intuitive and/or interesting in reporting on benchmarking.

