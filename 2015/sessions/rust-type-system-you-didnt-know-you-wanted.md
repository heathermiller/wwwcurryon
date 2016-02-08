---
layout: 2015-abstract
title: "Rust: A Type System You Didn't Know You Wanted"
by: Felix Klock
affiliation: Mozilla
profpic-class: felix
---

[@pnkfelix](https://twitter.com/pnkfelix)

### Abstract

[Rust](http://www.rust-lang.org/) is a new system
programming language that provides memory safety and data-race freedom
while offering efficiency and low-level control comparable to that of
C and C++. Rust allows for safe systems programming, including
use of concurrent threads with shared data.

Rust's core concepts are _ownership_ and _borrowing_,
which are both deeply integrated into its type-system. Higher-level
features, such as dynamically-growable arrays, reference-counted data,
and mutex locks, are defined in _libraries_, not the language;
the language ensures that their use in client code is safe. Writing
such client code remains convenient, thanks to type-system features
like generics, inference, and associated types.

In this presentation, I will present the core concepts of the Rust
type system, focusing especially on (1.) transfer of ownership, (2.)
ensuring validity of borrowed data, and (3.) automatic resource
cleanup. I will also show how different libraries provide new
high-level functionality to Rust, either via safe primitives offered
by the language and its standard library, or via Rust
<code>unsafe</code> blocks which allow access to foreign libraries and
low-level bit hacking in Rust itself.



### Bio

Felix Klock is a research engineer at Mozilla.  He works on the Rust compiler and runtime libraries, and obtained his PhD in Computer Science from Northeastern University.  He previously worked on the ActionScript Virtual Machine for the Adobe Flash runtime.  He is also one of the developers of the Larceny Scheme language runtime.

