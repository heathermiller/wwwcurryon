---
layout: abstract
title: "Pony: making it easy to write efficient, concurrent, data-race free programs"
by: Sylvan Clebsch, Sebastian Blessing, Sophia Drossopoulou
affiliation: Imperial College
profpic-class: sylvan
---
<br>

<div class="circular sebastian" style="float: left; margin-top: -20px; margin-right: 18px; "></div>
<div class="circular sophia" style="float: left; margin-top: -20px; margin-right: 18px; "></div>

 <br> <br> <br> <br> <br>
[@ponylang](https://twitter.com/ponylang)

### Abstract 

Pony is an object oriented, imperative, actor based programming language which makes it easy to write super-fast programs. Its development started as vision in Sylvan’s mind about 5 years ago, followed by a concerted effort 1 year ago, and open sourcing in May.

This talk will first answer the question we are often asked: why is it called Pony? It will then outline the major design and implementation decisions: the type system (which supports data-race free, copyless message passing of mutable structures), pattern matching, the use of LLVM, the implementation of message queues, the application of the actor paradigm to garbage collection, and benchmarks.

We'll do a bit of hands-on programming to show some interesting features, and then we'll talk about the future direction of the language and how to get involved.

### Bio

Sylvan Clebsch was kicked out of a lot of schools before becoming a serial entrepeneur in the 90s, working on embedded OSes, secure systems, VOIP, physical simulation, and graphics engines, before accidentally becoming an Executive Director in IT at a major investment bank - which he has now left. Sebastian Blessing has an MSc from Imperial College, with experience in ERP systems development. Sophia Drossopoulou is Professor of Programming Languages at Imperial College, with research in formal models for programming language features, type systems, and program verification. Sylvan and Sebastian work at Causality, developing Pony, and are part-time PhD students at Imperial College.