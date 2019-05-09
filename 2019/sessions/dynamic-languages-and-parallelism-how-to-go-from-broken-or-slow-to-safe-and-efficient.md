---
layout: 2019-abstract
title: "Dynamic Languages and Parallelism: How to Go from Broken or Slow to Safe and Efficient?"
speakers:
  - id: "stefan_marr"
    name: "Stefan Marr"
    affiliation: "University of Kent"
    url: "https://stefan-marr.de/"
    twitter: "smarr"
    known-for: ""
    list: "yes"
---

<br/>

### Abstract

In a world of microservices and horizontal scaling, why would we need parallelism beyond that? Indeed, it's not for everyone, and perhaps that is one of the reasons why it is not generally efficient yet. Though, did you ever wish you could experiment with data processing, heavy computations, or possibly machine learning by simply writing some plain Ruby or Python code? This talk is going to look into how we can make this possible. Python and Ruby-like languages have shared memory and threads. This means they got the basic ingredients for textbook-style parallelism. Unfortunately, none of the various Python or Ruby implementations provide us with fast or safe parallel execution. While PyPy and JRuby promise us fast execution of Python or Ruby programs, they either restrict parallelism by some global lock, or expose us to race conditions we never knew existed. To give sufficient context, this talk gives an overview over some of the tricks  modern dynamic language implementations pull to make execution as fast as for statically-typed languages. These tricks, while necessary, unfortunately are the origin of much of the trouble with parallel execution. However, we got a solution that enables classic textbook parallelism as well as what we consider modern dynamic-style parallel computations, and I'll try to convince you that safe and efficient parallelism is possible.

### Bio

Stefan Marr is a Lecturer (Assistant Professor) at the University of Kent. He is interested in concurrency, parallelism, language implementation, and optimization. Unfortunately, all these things make programming even more unintuitive. Thus, he also investigates how to enable better tooling and debugging to allow us to understand what our applications actually do.

