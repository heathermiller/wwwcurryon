---
layout: 2017-abstract
title: "Machine learning systems with privacy and for privacy: TensorFlow & PATE-G"
by: Martín Abadi
affiliation: Google
profpic-class: martin_abadi
---

<br/>

<br/>

### Abstract

Machine learning is powered by training data. In this talk, we discuss the
privacy of training data and how to protect it. We describe one recent technique
for this purpose, PATE-G, where several models based on different subsets of the
training data are combined into one model that does not depend “too much” on any
particular piece of the training data.

Machine learning is enabled by software systems. These systems should
efficiently support both established techniques (e.g., stochastic gradient
descent) and newer ones (e.g., adversarial networks). In this talk, we focus on
TensorFlow, a flexible, programmable system for large-scale machine learning.

TensorFlow and PATE-G go well together. In particular, PATE-G is not tied to one
particular learning algorithm. Conversely, TensorFlow makes it easy to express
the techniques on which PATE-G relies.

The talk is based on joint work with many people, primarily in Google Brain.
More information on TensorFlow can be found at
[tensorflow.org](http://tensorflow.org). PATE-G is described in a paper
available at
[https://arxiv.org/abs/1610.05755](https://arxiv.org/abs/1610.05755).

### Bio

Martín Abadi is a Principal Scientist at Google, in the Google Brain team. He is
also a Professor Emeritus at the University of California at Santa Cruz, where
was a Professor in the Computer Science Department till 2013. He has held an
annual Chair at the Collège de France, has taught at Stanford University and the
University of California at Berkeley,  and has worked at Digital’s System
Research Center, Microsoft Research Silicon Valley, and other industrial
research labs. He received his Ph.D. at Stanford University in 1987. His
research is mainly on computer and network security, programming languages, and
specification and verification methods. It has been recognized with the
Outstanding Innovation Award of the ACM Special Interest Group on Security,
Audit and Control and with the Hall of Fame Award of the ACM Special Interest
Group on Operating Systems, among other awards. He is a Fellow of the
Association for Computing Machinery and of the American Association for the
Advancement of Science (AAAS). He holds a doctorate honoris causa from École
normale supérieure de Cachan.
