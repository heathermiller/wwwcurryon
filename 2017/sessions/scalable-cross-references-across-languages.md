---
layout: 2017-abstract
title: "Scalable cross-references across languages"
by: Luke Zarko
affiliation: Google, Inc
profpic-class: luke_zarko
---

<br/>

<br/>

### Abstract

The Kythe project defines a graph model for representing glosses of programs. Tools like source code browsers and documentation generators that act on this model can therefore be written only once rather than once per language. The graph model is designed to scale to very large codebases like Google's. We support C++, Java, and Go in our open-source project (with developing support for TypeScript and Rust); internally, we have different levels of support for Python, Dart, Closure JavaScript, protocol buffers (an interface description language), and various proprietary languages. In this talk, we introduce the Kythe graph model, describe how our tools make use of that model, and present a case study on linking between languages through generated code from protocol buffers.

### Bio

After undergraduate and graduate study at the University of Pennsylvania and graduate study in programming languages at Carnegie Mellon University, Luke joined Google where he is presently working with the Kythe team.

