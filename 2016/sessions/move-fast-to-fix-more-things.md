---
layout: 2016-abstract
title: "Move Fast to Fix More Things"
by: Peter O'Hearn
affiliation: Facebook
profpic-class: peterohearn
---

<br/><br/>

### Abstract

I spent most of my career in academia, working on such topics as denotational
semantics and logics of programs. Now I work for Facebook with a team that
deploys a program analyser, Infer, based on recent research in program analysis,
which itself applied a relatively recent theoretical development in logics of
programs, separation logic. In this talk I will talk about our experience
deploying this technology, some the challenges we faced, and lessons learned.
Most importantly, adapting to Facebook’s fast-paced engineering culture -
illustrated by the “Move Fast and Break Things” and similar posters adorning its
office walls - has taught me that if verification technology can move fast, in
tune with programmers’ workflow, then they will fix more things. This contrasts
sharply with the “Move Slow and Break Almost Nothing” attitude to using
verification that I learned as an academic. I will also argue that there are
ways in which work in program analysis can focus more on the value that can be
brought to programmers; for example, I will discuss the merits of “fix rate” as
a measure of analysis value, as compared to the more traditional ” false
positive rate” concept.

### Bio

Peter O’Hearn works as an Engineering Manager at Facebook with the Static
Analysis Tools team, and as a Professor of Computer Science at University
College London. His research has been in the broad areas of programming
languages and logic, ranging from new logics and mathematical models to
industrial applications of program proof. With John Reynolds he developed
separation logic, a theory which opened up new practical possibilities for
program proof. In 2009 he cofounded a software verification startup company,
Monoidics Ltd, which was acquired by Facebook in 2013. The Facebook Infer
program analyzer, recently open-sourced, runs on every modification to the code
of Facebook’s mobile apps — including the main Facebook apps for Android and
iOS, Facebook Messenger and Instagram — in a typical month issuing millions of
calls to a custom separation logic theorem prover and resulting in hundreds of
bugs being fixed before they reach production.