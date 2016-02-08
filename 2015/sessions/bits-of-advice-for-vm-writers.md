---
layout: 2015-abstract
title: "Bits of Advice for VM Writers"
by: Cliff Click
affiliation: H2O
profpic-class: cliff
---

<br>

### Abstract

This is a talk about the choices one makes when building a Virtual Machine. Many of these choices aren’t even obviously being made when you first get the machine running - it’s not until years later when you look at your limitations that you even realize there was a choice. There’s the obvious Big VM (server, desktop, laptop, cell phone?) vs Small VM (embedded device, cell phone?) choice. But also: GC-or-no-GC. Portable or not (X86 vs ARM? vs Power/Sparc/tiny-DSP)? Multi-threaded or not? Run any “native” code - or only highly cooperative code? Run inside a pre-emptive multi-tasking OS? Or bare metal? Interpret bytecodes/p-codes vs dumb template-JIT vs Multi-tier-highly-optimizing-JIT? The set of choices goes on and on.

Most of these choices interact in Bad Ways… and usually the interactions are not obvious until long after the design decisions are made and locked in. And worse: most of the choices have to be made from the start, when you don’t really know the answers. Coding for yourself & your PhD advisor? Coding for a fortune-1000 company? Coding for the Internet-Scale-Masses? All different scenarios, with radically different goals. While the talk is based on my experience with the HotSpot Java VM, the bits of advice only loosely tied to Java, and can equally be applied to a host of other (VM) hosted languages.

### Bio

Cliff Click is the CTO and Co-Founder of H2O, makers of H2O, the open source math and machine learning engine for Big Data. Cliff wrote his first compiler when he was 15 (Pascal to TRS Z-80!), although Cliff’s most famous compiler is the HotSpot Server Compiler (the Sea of Nodes IR). Cliff helped Azul Systems build an 864 core pure-Java mainframe that keeps GC pauses on 500Gb heaps to under 10ms, and worked on all aspects of that JVM. Before that he worked on HotSpot at Sun Microsystems, and was at least partially responsible for bringing Java into the mainstream. Cliff is invited to speak regularly at industry and academic conferences and has published many papers about HotSpot technology. He holds a PhD in Computer Science from Rice University and about 20 patents.

