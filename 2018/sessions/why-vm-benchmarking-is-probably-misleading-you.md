---
layout: 2018-abstract
title: "Why VM Benchmarking is Probably Misleading you"
by: Edd Barrett
affiliation: King's College London
video: https://www.youtube.com/watch?v=hj4VmvyqbKY
profpic-class: edd_barrett
---

[@vext01](https://twitter.com/vext01)
<br/>

### Abstract

So you are evaluating a Just-In-Time (JIT) compiler? You probably know that you have to run benchmarks and conventional wisdom says that you should take measurements after the JIT has "warmed up". But how many benchmark iterations is that? 5, 10, 20? Over the course of 2 years we devised (probably) the world's most rigorous Virtual Machine (VM) benchmarking experiment, designed to measure the peak performance and warmup time of modern JITted VMs such as Hotspot, LuaJIT, PyPy, Graal and V8. To our surprise, not only did few of these VMs warm up as expected, but in many cases performance did not stabilise after thousands of iterations or even degraded over time. In this presentation I will show results which will make you reconsider the assumptions which underpin widespread benchmarking practice. I will show a new benchmarking technique which takes neither peak performance -- nor even a steady state -- as a given.

### Bio

Edd is a Research Associate within the Software Development Team at King's College London. He works on Just-In-Time compiler technology and language composition.

