---
layout: 2017-abstract
title: "Orchestrate ING with Petri Net"
by: Adil Akhter
affiliation: ING
profpic-class: adil_akhter
---

[@adilakhter](https://twitter.com/adilakhter)

<br/>

### Abstract

Evolving complexity of software systems and the interactions among them is one of the key problems in a large enterprise such as ING. As the systems evolve, it becomes difficult to reason about them and their dependencies. It also becomes harder to modify an existing system because it may cause unexpected effects in another system. A large contributing factor to this problem is the lack of visibility on how these systems interact among each other and their agreed contracts. At ING, we embark on a journey to apply concepts from functional programming, catalogue-driven fulfilment and distributed systems engineering to solve this problem. This is why we built Baker, an open-source library that facilitates: - An internal DSL to model micro-service based process flows in a declarative manner; - and an execution engine that first compiles the DSL program to a Petri Net and then executes it in an Akka cluster. Apart from compile-time verification, modelling processes with Petri Net enable us to analyse them and derive several interesting properties such as liveness and reachability of a business process. All system interactions in process are visualized as a graph as well. Intrigued? In this talk we are going to present Baker and demonstrate how we apply it to model and execute complex (micro-)service based process flows. We will show how by using Baker, we have significantly reduced the development time, which in turn fostered greater reusability of system interactions and reasoning about their underlying complexity.

### Bio

Adil Akhter is a Lead Engineer at ING in Amsterdam. He is a functional programmer and has been primarily hacking with Scala, Haskell and F#.

