---
layout: 2016-abstract
title: "Data-driven Software security using Differential Privacy and Deep Learning"
by: Úlfar Erlingsson
affiliation: Google
profpic-class: ulfar
---

<br/><br/>

### Abstract

For computer software, our security models, policies, mechanisms, and means of
assurance were primarily conceived and developed before the end of the 1970‘s.
However, since that time, software has changed radically: it is thousands of
times larger, comprises countless libraries, layers, and services, and is used
for more purposes, in far more complex ways. This suggests that we should
revisit some of our core computer security concepts. For example, what does the
Principle of Least Privilege mean when all software contains libraries that can
express arbitrary functionality? And, what security policy should be enforced
when software is too complex for either its developers or its users to explain
its intended behavior in detail? One possibility is to take an empirical,
data-driven approach to modern software, and determine its exact, concrete
behavior via comprehensive, online monitoring. Such an approach can be a
practical, effective basis for security—as demonstrated by its success in spam
and abuse fighting—but its use to constrain software behavior raises many
questions. In particular, two questions seem critical. First, is it possible to
learn the details of how software is behaving, without intruding on the privacy
of its users? Second, are those details a good foundation for deriving security
policies that constrain how software should behave? This talk answers both these
questions in the affirmative, as part of an overall approach to data-driven
security. Specifically, the talk describes techniques for learning detailed
software statistics while providing differential privacy for its users, and how
deep learning can help derive useful security policies that match users’
expectations with intended software behavior. Those techniques are both
practical and easy to adopt, and have already been used at scale for billions of
users.

### Bio

Úlfar currently heads a security research team at Google. Previously, he has
been a researcher at Microsoft Research, Silicon Valley, an Associate Professor
at Reykjavik University, Iceland, and led security technology at two startups:
GreenBorder and deCODE Genetics. He holds a PhD in computer science from Cornell
University.