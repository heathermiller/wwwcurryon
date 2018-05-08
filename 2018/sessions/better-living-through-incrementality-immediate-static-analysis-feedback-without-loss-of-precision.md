---
layout: 2018-abstract
title: "Better living through incrementality: Immediate static analysis feedback without loss of precision"
by: Tamás Szabó
affiliation: itemis
profpic-class: tamas_szabo
---

[@szabta89](https://twitter.com/szabta89)
<br/>

### Abstract

Static analyses are vital in modern software development. Static analyses are best known for detecting errors at compile time and thus helping developers to write correct code. That’s an honorable quest and not for nothing static analysis is sometimes referred to as lightweight verification.But static analysis has a second quest of equal importance: to aid program understanding. Development tools such as IDEs use information computed by static analyses to _explain_ the program to the developer (variable v has type int, variables v1 and v2 point to the same object), to provide _exploration_ functionality (jump to declaration, find call sites), to _guide_ developers (uninitialized read, dead code), and to provide sophisticated _edit actions_ (refactorings). IDEs must provide all these features without interrupting the workflow of the developer. In particular, IDEs must react quickly to code changes. That is, the underlying static analyses need to be incremental.  We present IncA, a language-independent framework for incremental static analysis that does not compromise on precision. IncA provides a DSL for the definition of static analyses and incrementalizes them automatically. We explain how the IncA compiler translates analysis specifications into Datalog-style rules and how the IncA runtime solves these rules incrementally. We particularly discuss how IncA incrementalizes fixpoint computations, which are ubiquitous in data-flow analysis. IncA is a joint effort of industry (itemis, IncQuery Labs) and academia (TU Delft, TU Budapest). IncA has been used to incrementalize control flow and points-to analysis for C, string analysis and strong points-to analysis for Java, and type analysis for Rust. However, one of our main application areas are DSLs: DSL adoption requires competitive tooling, yet it does not pay off to invest years of engineering to build and maintain incremental analyses. IncA protects analysis developers from the technical details of incrementalization (dependency tracking, caching, cache invalidation), and thus significantly reduces the engineering effort.

### Bio

Tamás is a PhD student at Delft University of Technology and a software engineer at itemis. As a researcher, his focus is on incremental static analyses.  As an engineer, he works on (domain-specific) programming languages, compilers, and their accompanying tooling. As a synergy of these two directions, his current goal is to develop a program analysis framework that can empower efficient analyses in the next generation of language workbenches. You can contact him at tamas.szabo@itemis.de and find further information at [szabta89.github.io](szabta89.github.io). 

Sebastian is an assistant professor at TU Delft, where he works on the foundation and application of programming languages. His current work includes incremental static analysis and build systems, modernizing legacy code to adopt new language features, and safe refactorings, analyses, type systems, and program transformations. Sebastian received degrees in computer science from TU Darmstadt (BSc 2007), Aarhus University (MSc 2009), and Philipps-Universität Marburg (PhD 2013), has worked as a postdoctoral researcher at TU Darmstadt until 2016, and has run an External Research Office sponsored by Oracle Labs from 2014 to 2016. Please see his [personal website](http://erdweg.org/) for further information.

