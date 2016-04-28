---
layout: 2016-abstract
title: "Using Object Algebras To Design Embedded Domain Specific Languages"
by: Julien Richard-Foy
affiliation: Zengularity
profpic-class: julienrf
---

[@julienrf](https://twitter.com/julienrf)

<br/>

### Abstract

Object algebras have very interesting properties and are yet underused for
defining embedded DSLs. Object algebras allow the developer to define embedded
DSLs in an extensible and modular way: DSLs can be broken down into independent
pieces and can have several independent interpretations. Furthermore, with
object algebras it is easy to define families of DSLs, that is, DSLs that
specialize other DSLs. Finally, the cost of interpretation is cheap because
there is no intermediate representation. This talk shows how to design such DSLs
in Scala, and exercises the aforementioned features on a practical example: a
DSL describing HTTP APIs in which one can derive clients, servers and
documentation.

### Bio

Julien Richard-Foy is a consultant for Zengularity. He likes designing code at
the right level of abstraction.