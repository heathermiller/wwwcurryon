---
layout: abstract
title: "LLVM for JavaScript"
by: Filip Pizlo
affiliation: Apple
profpic-class: filip
---

[@filpizlo](https://twitter.com/filpizlo)

### Abstract 

Dynamic languages have exploded in popularity, and are increasingly being used for high-performance applications. Many projects have sprung up attempting to write compilers for these languages. Lower-level languages, like C, already have well-engineered compilers that can generate fast code. This begs the question: can we reuse existing C compiler infrastructures to generate good code for a dynamic language? I’ll dive into the engineering of the WebKit Fourth-Tier LLVM (FTL) JIT compiler, a production-strength compiler for JavaScript that uses the LLVM C compiler optimization pipeline and backend. At the outset, LLVM had no prior support for JavaScript semantics or even a way to represent a dynamic type, nor did it have support for self-modifying code or on-stack replacement. Bridging the gap between JavaScript and LLVM required adding new dynamism features to LLVM as well as carefully architecting WebKit’s side of the compiler pipeline, runtime, and garbage collector to fit with LLVM’s constraints. Three aspects of FTL will be covered: mostly-accurate garbage collection, new LLVM features for self-modifying code, and the FTL front-end compilation pipeline.

### Bio

Filip works on compilers and language runtime systems at Apple and in particular on the WebKit open source project. He is ever finishing his PhD in computer science at the S3 Lab at Purdue University. His research interests include memory management (specifically, garbage collection), real-time systems, concurrency, programming languages and compilers. Most of his research has involved various Java virtual machines, including Jikes RVM, Ovm, and Fiji VM. He was variously on the core team of all three. These days most of his work involves WebKit’s excellent JavaScript engine, which is called JavaScriptCore, mostly on the optimizing just-in-time (JIT) compiler and its dynamic type inference engine, but also the interpreter, object model, and garbage collector. He also sometimes commit things to LLVM.