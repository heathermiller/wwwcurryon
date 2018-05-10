---
layout: 2018-abstract
title: "Constant-time crypto programming with FaCT"
by: Deian Stefan
affiliation: UCSD
profpic-class: deian_stefan
---

[@deiandelmars](https://twitter.com/deiandelmars)
<br/>

### Abstract

Implementing cryptographic algorithms that do not inadvertently leak secret information is notoriously difficult.  Today's general-purpose programming languages and compilers do not account for data sensitivity; consequently, most real-world crypto code is written in a subset of C intended to predictably run in constant time.  This C subset, however, forgoes structured programming as we know it -- crypto developers, today, do not have the luxury of if-statements, efficient looping constructs, or procedural abstractions when handling sensitive data.  Unsurprisingly, even high-profile libraries, such as OpenSSL, have repeatedly suffered from bugs in such code. In this talk, I will describe FaCT, a new domain-specific language that addresses the challenge of writing constant-time crypto code.  With FaCT, developers write crypto code using standard, high-level language constructs; FaCT, in turn, compiles such high-level code into constant-time assembly.  FaCT is not a standalone language. Rather, we designed FaCT to be embedded into existing, large projects and language.  In this talk, I will describe how we integrated FaCT in several such projects (OpenSSL, libsodium, and mbedtls) and languages (C, Python, and Haskell).

### Bio

Deian is an Assistant Professor in the UCSD CSE Department. He is also the Chief Scientist at Intrinsic, a web security start-up he co-founded. Deian's research interests span security, programming languages, and systems. He is particularly interested in building secure systems, such as browsers and language runtime systems, by applying programming language techniques and analysis.  Deian is also a member of the W3C WebAppSec and the Node.js Security working groups.  He completed his Ph.D. in Computer Science at Stanford under David Mazières, John C. Mitchell, and Alejandro Russo. Prior to Stanford, he obtained a B.E. and M.E. in Electrical Engineering at the Cooper Union. At Cooper, he worked on GPU and FPGA crypto implementations.

