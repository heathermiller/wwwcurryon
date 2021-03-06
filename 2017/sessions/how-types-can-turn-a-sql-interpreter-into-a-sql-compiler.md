---
layout: 2017-abstract
title: "How types can turn a SQL interpreter into a SQL compiler"
by: Tiark Rompf
affiliation: Purdue University
profpic-class: tiark_rompf
---

[@tiarkrompf](https://twitter.com/tiarkrompf)

<br/>

### Abstract

Commercial and open source database systems consist of millions of lines of highly optimized C code. Yet, their performance on individual queries falls 10x or 100x short of what a hand-written, specialized, implementation of the same query can achieve. In this talk we will present Flare, a SQL query engine implemented entirely in Scala. Where other systems interpret query plans, operator by operator, Flare generates and compiles low-level C code for whole queries at runtime, using the LMS (Lightweight Modular Staging) framework. This approach yields performance up to 100x faster than highly-tuned commercial systems, and compact and high-level code (about ~3000 lines) at the same time. We will also discuss how Flare can be integrated as accelerator back-end with the popular Apache Spark big data platform.


### Bio

Tiark Rompf is an Assistant Professor of Computer Science at Purdue University. His work focuses on runtime code generation, advanced compiler technology, and associated language support. From 2008 to 2014 he was a member of Martin Odersky’s Scala team at EPFL where he developed the LMS compiler framework and made various contributions to the Scala language and toolchain (delimited continuations, efficient immutable data structures, compiler speedups, formalization of the type system). He received his PhD from EPFL in 2012. From 2012 to 2014 he was a researcher at Oracle Labs. His work received awards including CACM Research Highlight 2012, VLDB Best Paper 2014, NSF CAREER 2016, and Google Faculty Research Award 2016.

