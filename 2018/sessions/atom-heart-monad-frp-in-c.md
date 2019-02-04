---
layout: 2018-abstract
title: "Atom Heart Monad: FRP in C++"
by: Ivan Čukić
affiliation: KDE e.V.
video: https://www.youtube.com/watch?v=_Ji1HyZxXvo
profpic-class: ivan_cukic
---

[@ivan_cukic](https://twitter.com/ivan_cukic)
<br/>

### Abstract

C++ is not what you would usually call a functional programming language because it does not encourage writing code in the functional style. But it does provide enough features to allow many functional idioms to be implemented. One benefit that it has compared to other languages is the level of control we get when implementing these idioms as the compiler does not try to enforce idiomatic rules that we need to hack around. This talk will be about the design and implementation of a reactive programming model that allows easy programming of asynchronous software systems (systems with asynchronously executed parts) that efficiently hides the inversion of control usually present in systems like these. We will present multilevel reactive streams -- a composition of a generalized continuation monad with a few other useful monads thrown in for a good measure. Multilevel reactive streams provide greater expressibility compared to normal reactive streams as the stream transformations can be applied on any level -- on the value directly, or on a boxed value when it is needed. This programming model will be demonstrated along with the implementation of a simple web service where the whole system logic is defined as a chain of reactive stream transformations.

### Bio

Ivan Čukić is the author of "Functional Programming in C++" book by Manning Publishing. He's located somewhere between industry and academia - as a core developer of the KDE project and as a lecturer and researcher at the University of Belgrade.

