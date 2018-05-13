---
layout: 2018-abstract
title: "Hackett: a metaprogrammable Haskell"
by: Alexis King
affiliation: Northwestern University
profpic-class: alexis_king
---

[@lexi_lambda](https://twitter.com/lexi_lambda)
<br/>

### Abstract

What would you get if you combined a cutting edge, state of the art macro system with a tried and true, industrial-strength type system? The answer is Hackett, a programming language that embeds the power of the Haskell type system within the Racket macro system. Traditional approaches to macro-enabled Haskells have been relatively straightforward, bolting a macroexpander onto the frontend of an otherwise mundane compiler, but this is a shallow, unsatisfying embedding—by its very nature, the typechecker does not run until macroexpansion is complete, so the wealth of static information embedded in the type system is inaccessible to macro authors. In contrast, Hackett applies and extends recent research first presented at POPL 2017 that enables *interleaving* macroexpansion and typechecking, opening up entirely new ways for programmers to tinker with their language and construct embedded DSLs.

While Hackett is still in development, it is already starting to bear fruit as a vehicle to explore this relatively unexplored design space. In this talk, we will take a look at some real Hackett code to get a feel for what the language is like, survey some of the underlying Racket technologies that make a sampling of Hackett’s features possible, and also discuss some of the ways Hackett is likely to grow and develop in the near future. Finally, we’ll compare and contrast Hackett’s approach to metaprogramming with other approaches in the design space to see what makes Hackett unique.

### Bio

Alexis is a research programmer at Northwestern University’s programming language research group, where she works on various things related to Racket and hygienic macros. Until recently, she previously worked as a Haskell developer writing infrastructure and tooling, with a focus on effect systems and automated software testing.

