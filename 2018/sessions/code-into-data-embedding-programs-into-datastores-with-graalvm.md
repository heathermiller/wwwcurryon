---
layout: 2018-abstract
title: "Code into Data: Embedding programs into datastores with GraalVM"
by: Thomas Würthinger
affiliation: Oracle
profpic-class: thomas_wurthinger
---

<br/>

### Abstract

High-performance language runtimes often execute isolated from datastores. Encoding logic in the form of stored procedures requires relying on different execution engines and sometimes even different languages. Our vision of the future of execution runtimes is GraalVM: an integrated, polyglot, high-performance execution environment that can not only run stand-alone but also efficiently embedded in other systems. It supports shared tooling independent of the specific language and specific embedding. We designed the GraalVM runtime with complete separation of logical and physical data layout in mind. This allows direct access to custom data formats without marshalling overheads. GraalVM supports dynamic languages such as JavaScript, Ruby, Python and R. Additionally, even lower level languages such as C, C++, Go, and Rust are integrated into the ecosystem via LLVM bitcode and can execute in a sandboxed and secure manner.

### Bio

Thomas Wuerthinger is a Senior Research Director at Oracle Labs leading the GraalVM team. He is the architect of the GraalVM compiler and the Truffle self-optimizing runtime system. Previously, he worked on the Crankshaft optimizing compiler of V8 at Google, and the Maxine research virtual machine at Sun Microsystems. He received a PhD degree from JKU Linz for his research about dynamic code evolution.

