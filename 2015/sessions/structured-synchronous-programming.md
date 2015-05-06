---
layout: abstract
title: "Structured Synchronous Programming"
by: Francisco Sant'Anna
profpic-class: francisco
---

[@fsantanna_puc](https://twitter.com/fsantanna_puc)

<br>

### Abstract 

The origins of synchronous programming for real-time and reactive systems date back to the early 80’s with the co-development of the structured/imperative language Esterel and the dataflow/declarative language Lustre. In recent years, Functional Reactive Programming (FRP) has modernized the dataflow style, inspiring a number of languages and libraries, such as Flapjax, Rx (from Microsoft), React (from Facebook), and Elm. In contrast, the structured style did not follow this trend and is now confined to the domain of real-time embedded control systems. In this talk, we present a contemporary outlook of synchronous imperative programming through the programming language Céu. Céu extends classical structured programming with lexical compositions of lines of execution that can await, allowing them to retain state across reactions to environment and escape from the “callback hell”. Support for lexical compositions preserves static reasoning and memory management as found in classical structured programming, contrasting with functional and actor-based alternatives that rely on garbage collection.

### Bio

Francisco Sant’Anna is a post-doc in LabLua, PUC-Rio, Brazil. He works with concurrency and programming languages for real-time, reactive, embedded, and/or multimedia systems.