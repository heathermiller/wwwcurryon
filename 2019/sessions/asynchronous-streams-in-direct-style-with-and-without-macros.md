---
layout: 2019-abstract
title: "Asynchronous streams in direct style with and without macros"
speakers:
  - id: "philipp_haller"
    name: "Philipp Haller"
    affiliation: "KTH"
    url: "http://www.csc.kth.se/~phaller/"
    twitter: "philippkhaller"
    known-for: ""
    list: "yes"
---

<br/>

### Abstract

Scala-async is a macro for simplifying the use of futures. This talk presents an extension of scala-async which additionally enables writing producers and consumers of asynchronous streams using familiar straight-line, blocking-style code while using efficient non-blocking, event-based concurrency under the hood. Building on the Reactive Streams standard enables integrating with many stream-based Scala libraries and frameworks. The second part of the talk shows how OpenJDK Project Loom fibers can be used to implement extended scala-async without the use of Scala's deprecated macro system.

### Bio

Philipp Haller is an associate professor in the department of computer science at KTH Royal Institute of Technology in Stockholm, the leading technical university in Sweden. Philipp is co-author of Scala's async/await extension for asynchronous programming, and one of the lead designers of Scala's futures library. Main author of the book "Actors in Scala," he created Scala's first widely-used actor library. Previously, Philipp held positions at Typesafe, Stanford University, and EPFL.

