---
layout: 2018-abstract
title: "Adding kind-polymorphism to the Scala programming language"
by: Miles Sabin
affiliation: Underscore Consulting, Typelevel
profpic-class: miles_sabin
---

[@milessabin](https://twitter.com/milessabin)
<br/>

### Abstract

In Scala, the data type generic programming library shapeless is the tool that people reach for when they have problems involving abstraction over data types of different shapes and sizes. But suppose we wanted to support this sort of generic programming directly in the language? What sort of primitive mechanisms would we choose? In this talk I will argue that kind-polymorphism, the ability to abstract over type constructors of any arity, is one we should give serious consideration to. I will demonstrate a prototype implementation in the Typelevel Scala compiler and show how it can be used to dramatically simplify generic programming in Scala.

### Bio

Miles has been doing stuff with Scala for more than a decade, currently with Underscore Consulting. He is a cofounder of Typelevel and his best known project, the Scala generic programming library shapeless, is the weapon of choice wherever boilerplate needs to be scrapped or arities abstracted over.

