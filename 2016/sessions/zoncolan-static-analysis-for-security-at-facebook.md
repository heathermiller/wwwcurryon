---
layout: 2016-abstract
title: "Static analysis for security at the Facebook scale"
by: Francesco Logozzo
affiliation: Facebook
profpic-class: francesco
---

[@francescologozz](https://twitter.com/francescologozz)


### Abstract

The scale and continuous growth of commercial code bases are the greatest
challenges for adoption of automated analysis tools in Industry. Alas, scale is
largely ignored by academic research. We developped  a new static analysis tool
for security to scale to Facebook scale. It relies on abstract interpretation to
focus on the properties that really matter to security engineers and provides
fine control on the cost/precision ratio. It was designed from day one for “real
world” security and privacy problems at scale. Facebook codebase is huge, and we
can analyze it, from scratch in 13 minutes. This talk will give attendees a peek
at some of the secret sauce we use to achieve such amazing performance and
precision

### Bio

I love static program analysis. I’ve been designing and implementing widely used
static analysis tools. I published papers in the most important research
conferences and gave talks at main industrial conferences as e.g., Build.