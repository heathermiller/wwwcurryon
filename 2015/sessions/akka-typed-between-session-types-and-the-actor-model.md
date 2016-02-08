---
layout: 2015-abstract
title: "Akka Typed: Between Session Types and the Actor Model"
by: Roland Kuhn
affiliation: Typesafe
profpic-class: roland
---

[@rolandkuhn](https://twitter.com/rolandkuhn)


### Abstract

No matter how we look at it—from the standpoint of the Reactive Manifesto or through the subtly changed implications of Moore’s law—the most pressing challenge for the implementation, validation and verification of computing systems is distribution. While the choice to distribute a program across concurrent execution units allows us to achieve both elasticity and resilience, it also entails a new set of problems that are not present in purely local programs.

Session types have been proposed in recent years as an extension to distributed process calculi in order to reign in the complexity of verifying protocols and their implementation in independent agents, but to date no common implementations exist in the industry.

We come at this problem from the inverse direction: starting out from the untyped Actor Model we have developed Akka as a successful platform that is serving as the foundation for some of the largest and most demanding services provided on the internet. The topmost feature request has always been the introduction of more type-safety, especially since the dynamic and structural type system expressed in Akka Actors stands in stark contrast to the nominal and static type systems of its host languages, Scala and Java.

In this presentation we introduce the Akka Typed project, a large jump in the platform’s evolution that includes not only typed Actor references but also a principled approach to behavioral composition of individual Actors. We detail how the added type information can be used to regain a level of type-safety that is at least as expressive as method signatures in statically typed OO languages. Finally we discuss how far this can be pushed in the direction of protocols and session types and where we currently fall short of these theoretical models.

### Bio

Roland Kuhn is leading the Akka project at Typesafe, a co-author of the Reactive Manifesto and the book Reactive Design Patterns, co-teaching the Coursera course “Principles of Reactive Programming” and a passionate open-source hakker. He also holds a PhD in particle physics and has worked in the space industry for several years.