---
layout: 2019-abstract
title: "Gradual typing for Ruby at Scale with Sorbet"
by: Dmitry Petrashko
affiliation: Stripe
video: 
profpic-class: dmitry_petrashko
---

[@darkdimius](https://twitter.com/darkdimius)
<br/>

### Abstract

Stripe maintains an extremely large and growing Ruby code base in which ~3/4 of Stripe's engineers do most of their work. Continuing to scale development in that code base is one of the most critical tasks to maintaining product velocity and the productivity of Stripe engineering. Based on a wide range of experiences, we believe that adding static types for a significant subset of that codebase helps developers understand code better, write code with more confidence, and detect+prevent significant classes of bugs. This talk shares experience of Stripe successfully been building a typechecker for internal use, including core design decisions made in early days of the project and how they withstood reality of production use.

### Bio

Dmitry works on developer productivity at Stripe, Making it easy to confidently write maintainable, fast, and reliable code at Stripe by improving language, core abstractions, tools and educational materials. Before this, Dmitry co-architected Dotty, the compiler slated to become Scala3.
