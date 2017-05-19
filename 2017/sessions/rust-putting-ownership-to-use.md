---
layout: 2017-abstract
title: "Rust: Putting Ownership to Use"
by: Niko Matsakis
affiliation: Mozilla Research
profpic-class: niko_matsakis
---

[@nikomatsakis](https://twitter.com/nikomatsakis)

<br/>

### Abstract

Rust is a new systems-programming language that is becoming increasingly
popular. It aims to combine C++'s focus on zero-cost abstractions with
numerous ideas that emerged first in academia, most notably affine and
region types ("ownership and borrowing") and Haskell's type classes
("traits"). One of the key goals for Rust is that it does not require a
garbage collector.

In this talk, I'll give a brief overview of Rust's key features, with a
focus on the type system. I'll talk about how we leverage a few core
features to offer a variety of APIs -- ranging from efficient
collections to various styles of parallel programming -- while still
guaranteeing memory safety and data-race freedom.


### Bio

Nicholas Matsakis is a senior researcher at Mozilla research and a
member of the Rust core team. He has been working on Rust since 2011 and
did much of the initial work on its type system and other core features.
He did his undergraduate study at MIT, graduating in 2001, and later
obtained a PhD in 2011, working with Thomas Gross at ETH Zurich.
