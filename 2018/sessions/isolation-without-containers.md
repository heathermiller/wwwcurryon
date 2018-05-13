---
layout: 2018-abstract
title: "Isolation Without Containers"
by: Tyler McMullen
affiliation: Fastly
profpic-class: tyler_mcmullen
---

[@tbmcmullen](https://twitter.com/tbmcmullen)
<br/>

### Abstract

Software Fault Isolation, or SFI, is a way of preventing errors or unexpected behavior in one program from affecting others. Sandboxes, processes, containers, and VMs are all forms of SFI. SFI is a deeply important part of not only operating systems, but also browsers, and even server software.

The ways in which SFI can be implemented vary widely. Operating systems take advantage of hardware capabilities, like the MMU (Memory Management Unit). Others, like processes and containers, use facilities provided by the operating system kernel to provide isolation. Some types of sandboxing even use a combination of the compiler and runtime libraries in order to provide safety.

Each of the methods of implementing SFI have advantages and disadvantages, but we don't often think of them as different options toward a similar end goal. When we consider the growing prevalence of things like edge computing and "Internet of Things", our common patterns start to falter. 

In this talk, we'll focus on how sandboxing compilers work. There are important benefits, but also major pitfalls and challenges to making it both safe and fast. We'll talk about machine code generation and optimization, trap handling, memory sandboxing, and how it all integrates into an existing system. This is all based on a real compiler and sandbox, currently in development, that is designed to run many thousands of sandboxes concurrently in server applications.

### Bio

Tyler McMullen is CTO of Fastly, where he’s responsible for the system architecture and leads the company’s technology vision. As part of the founding team, Tyler built the first versions of Fastly’s instant purging system, API, and Real-time Analytics. Before Fastly, Tyler worked on text analysis and recommendations at Scribd. A self-described technology curmudgeon, he has experience in everything from web design to kernel development, and loathes all of it. Especially distributed systems.


