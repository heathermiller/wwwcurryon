---
layout: 2017-abstract
title: "Profunctor Optics: Modular Data Accessors"
by: Jeremy Gibbons
affiliation: University of Oxford
profpic-class: jeremy_gibbons
---

[@jer_gib](https://twitter.com/jer_gib)

<br/>

### Abstract

Data accessors allow one to read and write components of a data structure; examples include lenses for accessing the fields of a record, prisms for accessing the variants of a union, and traversals for accessing the elements of a container. These data accessors are collectively known as optics; they are fundamental to programs that manipulate complex data. Individual data accessors for simple data structures are easy to write, for example as pairs of &quot;getter&quot; and &quot;setter&quot; methods. However, it is not obvious how to combine data accessors, in such a way that data accessors for a compound data structure are composed out of smaller data accessors for the parts of that structure. Generally, one has to write a sequence of statements or declarations that navigate step by step through the data structure, accessing one level at a time - which is to say, data accessors are traditionally not first-class citizens, combinable in their own right. We present a framework for modular data access, in which individual data accessors for simple data structures may be freely combined to obtain more complex data accessors for compound data structures. Data accessors become first-class citizens.  The framework is based around the notion of profunctors, a flexible generalization of functions. The language features required are higher-order functions (&quot;lambdas&quot; or &quot;closures&quot;), parametrized types (&quot;generics&quot; or &quot;abstract types&quot;) of higher kind, and some mechanism for separating interfaces from implementations (&quot;abstract classes&quot; or &quot;modules&quot;). We use Haskell as a vehicle in which to present our constructions, but other languages such as Scala that provide the necessary features work just as well.

### Bio

I am Professor of Computing in the Department of Computer Science at the University of Oxford. I am currently Director of the Software Engineering Programme, which offers part-time professional Masters’ degrees in Software Engineering and in Software and Systems Security. I also lead the Algebra of Programming research group. I am Editor-in-Chief of the Journal of Functional Programming, Past Vice Chair of ACM SIGPLAN, Past Chair of IFIP WG2.1. Before taking up this post in 1999, I held lectureships at Oxford Brookes University and the University of Auckland, New Zealand.

