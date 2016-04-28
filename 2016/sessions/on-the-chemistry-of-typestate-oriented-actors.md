---
layout: 2016-abstract
title: "On the chemistry of typestate-oriented actors"
by: Silvia Crafa
affiliation: University of Padova
profpic-class: silviacrafa
---

### Abstract

Typestate-oriented programming is an extension of the OO paradigm where objects
are modeled not just in terms of interfaces but in terms of their usage
protocols, describing legal sequences of method calls, possibly depending on the
object’s internal state. We argue that the Actor Model allows typestate-OOP in
an inherently distributed setting, whereby objects/actors can be accessed
concurrently by several processes, and local entities cooperate to carry out a
communication protocol. In this presentation we illustrate the approach by means
of a number of examples written in Scala Akka. We show that Scala’s abstractions
support clean and natural typestate-oriented actor programming with the usual
asynchronous and non-blocking semantics. We also show that the standard type
system of Scala and a typed wrapping of usual (untyped) Akka’s ActorRef are
enough to provide rich forms of type safety so that well-typed actors respect
their intended communication protocols.

This approach draws on a solid theoretical background, consisting of a sound
behavioral type system for the Join Calculus, that is a foundational calculus of
distributed asynchronous processes whose semantics is based on the Chemical
Abstract Machine, that unveiled its strong connections with typestate-oriented
programming of both concurrent objects and Actors.

### Bio

Silvia Crafa is Professor of Advanced Topics in Programming Languages at
University of Padova, and she is member of the IFIP Working Group n.1.8:
Concurrency Theory. Her research focuses on formal methods for the analysis of
concurrent and distributed systems, ranging form the study of semantic
foundations to logics and type systems.