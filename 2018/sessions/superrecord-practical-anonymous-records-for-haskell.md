---
layout: 2018-abstract
title: "SuperRecord: Practical Anonymous Records for Haskell"
by: Alexander Thiemann
affiliation: Stripe Inc
profpic-class: alexander_thiemann
---

[@agrafix](https://twitter.com/agrafix)
<br/>

### Abstract

As the shape of data frequently changes whilst being processed by an application, anonymous records and their implications are a very useful tool to concise type-safe program design despite these requirements. Some good examples are type safe database libraries supporting table joins, RESTful JSON APIs, configuration environments or mock-free unit tests. Currently, Haskell's built-in type system and GHC do not support structural typing with anonymous records, but it is practical to implement an anonymous record library built on top of modern Haskell which is performant. In this presentation, we will present different programming problems to which anonymous records provide a great tool for an elegant and sensible solution compared to nominal data structures. Next to the examples given above, we will also explore how one can leverage anonymous records to maintain backward compatibility in web APIs without impacting underlying program design choices in further development.  We will dive into the implementation of an anonymous record library for Haskell covering some interesting takeaways on runtime and compile time considerations as well as benchmarking Haskell code.

### Bio

I’m Alexander Thiemann, currently software engineer at Stripe. I’ve co-founded two Haskell start-ups (TramCloud, BahnBuddy) and was software engineer at a Haskell shop (Checkpad MED) for 5 years. I maintain the Haskell web framework Spock.

