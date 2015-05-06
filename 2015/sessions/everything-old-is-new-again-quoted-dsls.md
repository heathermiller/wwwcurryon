---
layout: abstract
title: "Everything old is new again: Quoted domain specific languages"
by: Philip Wadler
profpic-class: phil
---

[@philipwadler](https://twitter.com/philipwadler)


### Abstract 

Fashions come, go, return. We describes a new approach to domain specific languages, called QDSL, that resurrects two old ideas: quoted terms for domain specific languages, from McCarthy’s Lisp of 1960, and the subformula property, from Gentzen’s natural deduction of 1935. Quoted terms allow the domain specific language to share the syntax and type system of the host language. Normalising quoted terms ensures the subformula property, which provides strong guarantees, e.g., that one can use higher-order or nested code in the source while guaranteeing first-order or flat code in the target, or using types guide loop fusion. We give three examples of QDSL: QFeldspar (a variant of Feldsar), P-LINQ for F#, and some uses of Scala LMS; and we provide a comparison between QDSL and EDSL (embedded DSL).

### Bio

Philip Wadler is Professor of Theoretical Computer Science at the University of Edinburgh. He is an ACM Fellow and a Fellow of the Royal Society of Edinburgh, past chair of ACM SIGPLAN, past holder of a Royal Society-Wolfson Research Merit Fellowship, and a winner of the POPL Most Influential Paper Award. Previously, he worked or studied at Stanford, Xerox Parc, CMU, Oxford, Chalmers, Glasgow, Bell Labs, and Avaya Labs, and visited as a guest professor in Copenhagen, Sydney, and Paris. He has an h-index of 60, with more than 18,000 citations to his work according to Google Scholar. He contributed to the designs of Haskell, Java, and XQuery, and is a co-author of Introduction to Functional Programming, XQuery from the Experts and Generics and Collections in Java. He has delivered invited talks in locations ranging from Aizu to Zurich.

