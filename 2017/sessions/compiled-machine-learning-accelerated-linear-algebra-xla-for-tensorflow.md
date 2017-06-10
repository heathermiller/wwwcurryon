---
layout: 2017-abstract
title: "Compiled Machine Learning: Accelerated Linear Algebra (XLA) for TensorFlow"
by: Peter Hawkins
affiliation: Google
profpic-class: peter_hawkins
---

<br/>

<br/>

### Abstract

TensorFlow is a widely used package for machine learning. It allows programmers to define computations in terms of dataflow graphs, and to execute these graphs in a distributed manner across heterogeneous computing devices. It supports both production applications and research on new machine learning ideas. Alas, this flexibility and generality sometimes pose challenges for performance. Addressing these challenges, XLA (Accelerated Linear Algebra) is a new just-in-time compiler for TensorFlow. XLA analyzes TensorFlow dataflow graphs, specializes them for actual runtime dimensions and types, fuses multiple operations together, and emits efficient native machine code. It targets not only CPUs and GPUs but novel accelerators (in particular, Google's Tensor Processing Units).  In sum, this talk is an introduction to XLA and its techniques, and an illustration of how compilers still matter greatly in the brave new world of machine learning.

### Bio

Peter is a research scientist on the Google Brain team.

