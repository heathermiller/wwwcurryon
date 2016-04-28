---
layout: 2016-abstract
title: "Why Writing Correct Software Is Hard and Why Math (Alone) Won’t Help Us"
by: Ron Pressler
affiliation: Parallel Universe
profpic-class: ron
---

[@puniverseco](https://twitter.com/puniverseco)

### Abstract

The halting theorem is computer science’s first and best-known theorem, and
probably its most fundamental, yet much of the work we programmers do is try to
escape its consequences. In fact, some are even convinced that its implications
on real-world software are either slight or could be avoided altogether. This
talk will explore the halting theorem and its finite variants, and show how it
is inseparable from the very essence of computing and has an enormous
implication on real software. We will ask exactly how hard it is to write
correct software, and use computational complexity to answer that it is the
hardest problem in all of computer science and cannot possibly be circumvented
even if we try to forgo Turing completeness. An understanding of what
computation means leads to the conclusion that computation and correctness are
fundamentally, essentially and forever at odds. These ideas will take us from
computer science to philosophy and even to politics. We will then survey the
fascinating field of software verification. I’ll present principles that tie
deductive proofs, model checking, abstract interpretation and type systems
together, and present computational complexity results that impact them. In
particular, we’ll see how we can use nothing but the halting theorem to compute
the computational complexity bounds of type inference algorithms based on the
strength of the type system, and show why approaches like total functional
programming can do little to make correctness easier. The talk will end on a
positive note, showing the only viable way towards correct software, one that
can only be traveled if academia and industry work hand-in-hand. No background
is required other than an introductory familiarity with basic computer science.

### Bio

Ron Pressler is the founder of Parallel Universe, a company building a JVM-based
server-side stack for easily writing high-performance, low latency applications
that work in harmony with modern hardware architecture rather than fight it. In
the past year, he has been working on formally verifying complex distributed
algorithms.