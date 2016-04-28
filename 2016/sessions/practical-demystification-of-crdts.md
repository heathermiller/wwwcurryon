---
layout: 2016-abstract
title: "Practical Demystification of CRDTs"
by: Dmitry Ivanov & Nami Nasserazad
affiliation: TomTom
profpic-class: dmitryivanov
---

<br>

<div class="circular naminasserazad" style="float: left; margin-top: -20px; margin-right: 18px; "></div>

<br> <br> <br> <br>

### Abstract

In a connected world, synchronising mutable information between different
devices with different clock precision can be a difficult problem. A piece of
data may have many out-of-sync replicas but all of those should eventually be in
a consistent state. For example, TomTom users, having personal navigation
devices, smartphones, MyDrive website accounts, expect their navigation
information be synchronised properly even in the occasional absence of network
connection. Conflict-free Replicated Data Types (CRDTs) provide robust data
structures to achieve proper synchronisation in an unreliable network of
devices. They enable the conflict resolution being done locally at the data type
level while guaranteeing the eventual consistency between replicas. In this
talk, in addition to an introduction to common CRDT types, our main focus will
be on a special subtype of CRDT Set called OUR-Set (Observed, Updated, Removed),
which we created to extend known CRDT sets with update functionality. We will
exhibit basic implementations of various CRDTs in Scala and Java, and will
enumerate subtle considerations which should be taken into account. We will also
explain the advantages of these data structures to solve many synchronisation
problems as well as their limitations.

### Bio (Dmitry Ivanov)

"Dmitry is a senior software engineer at TomTom, Amsterdam. He has been obsessed
with Scala language since 2010 and is fascinated with all things related to
Cloud, DevOps and building scalable distributed systems. Prior to joining
TomTom, Dmitry worked on backend services in a few international startups
(Reltio, AmbiqTech).

In his spare time he is involved in organising various programming meetups
around Amsterdam, and occasionally gives talks at those."