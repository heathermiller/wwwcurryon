---
layout: 2019-abstract
title: "Loom: Bringing Lightweight Threads and Delimited Continuations to the JVM"
speakers:
  - id: "ron_pressler"
    name: "Ron Pressler"
    affiliation: "Oracle"
    url: "https://pron.github.io"
    twitter: "pressron"
    known-for: ""
    list: "yes"
    video: "https://www.youtube.com/watch?v=r6P0_FDr53Q"
---

<br/>

### Abstract

Various asynchronous programming techniques, from simple callbacks, through so-called reactive APIs, to specialized language constructs such as async/await, are growing in popularity. Requirements for concurrent applications under heavy load are the reason for this growth in popularity. Traditional programming technique based on blocking IO operations do not scale because OS kernel threads — the software unit of concurrency — are too heavyweight to directly represent fine-grained domain units of concurrency, such as the user session or the transaction. These techniques come at a great cost and do not integrate at all smoothly with the core ideas of imperative programming languages — they require built-in constructs to be reimplemented in DSLs, lose important context, and make interoperation with existing code very difficult. Therefore, instead of abandoning the abstraction most natural for imperative code — the thread and blocking operations — we have decided to provide a lightweight implementation of threads, in the runtime rather than the OS, in the JDK, as part of Project Loom. This talk will present the work done in Project Loom, from delimited continuations, through fibers, to structured concurrency, explain why we believe this is the correct approach for the JDK, and discuss some of the peculiar challenges of implementing lightweight threads in the JVM.

### Bio

Ron works on OpenJDK in Oracle's Java Platform Group as the technical lead of Project Loom.
