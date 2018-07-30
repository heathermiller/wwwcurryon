---
layout: 2018-abstract
title: "Linear Haskell: practical linearity in a higher-order polymorphic language"
by: Simon Peyton Jones
affiliation: Microsoft Research
video: https://www.youtube.com/watch?v=t0mhvd3-60Y
profpic-class: simon_peyton_jones
---

<br/>

### Abstract

Linear type systems are more often talked about than used, with the notable exception of Rust -- a keynote at Curry On 2017.  I have long thought that we should be able to use linearity to improve the expressiveness and efficiency of functional programming languages, especially Haskell.  But I always got lost in a deep swamp of exclamation marks and upside down &amp; symbols. In a collaboration with Tweag I/O, we came up with a new approach to linearity that really does seem to have a good power-to-weight ratio, and that fits smoothly with the existing language. The key ideas is to attach linearity to function arrows, rather than bifurcating types into linear and non-linear versions (the dominant approach). In this talk I'll explain and motivate the key ideas, from the point of view of a programmer rather than a type theorist, focusing especially on update-in-place, and on I/O protocols.  I hope you'll come away with a clearer picture of the linearity landscape and how we might think about it.

### Bio

I’m a researcher at Microsoft Research in Cambridge, England. I started here in Sept 1998. I’m also an Honorary Professor of the Computing Science Department at Glasgow University, where I was a professor during 1990-1998. I am married to Dorothy, a priest in the Church of England. We have six children. I’m interested in the design, implementation, and application of lazy functional languages. In practical terms, that means I spend a most of my time on the design and implementation of the language Haskell. In particular, much of my work is focused around the Glasgow Haskell Compiler, and its ramifications. I am chair of Computing at School, the group at the epicentre of the reform of the national curriculum for Computing in England.

