---
layout: 2018-abstract
title: "Constant-time crypto programming with FaCT"
by: Sunjay Cauligi
affiliation: UCSD
profpic-class: sunjay_cauligi
---

<br/>

### Abstract

Implementing cryptographic algorithms that do not inadvertently leak secret information is notoriously difficult.  Today's general-purpose programming languages and compilers do not account for data sensitivity; consequently, most real-world crypto code is written in a subset of C intended to predictably run in constant time.  This C subset, however, forgoes structured programming as we know it -- crypto developers, today, do not have the luxury of if-statements, efficient looping constructs, or procedural abstractions when handling sensitive data.  Unsurprisingly, even high-profile libraries, such as OpenSSL, have repeatedly suffered from bugs in such code. In this talk, I will describe FaCT, a new domain-specific language that addresses the challenge of writing constant-time crypto code.  With FaCT, developers write crypto code using standard, high-level language constructs; FaCT, in turn, compiles such high-level code into constant-time assembly.  FaCT is not a standalone language. Rather, we designed FaCT to be embedded into existing, large projects and language.  In this talk, I will describe how we integrated FaCT in several such projects (OpenSSL, libsodium, and mbedtls) and languages (C, Python, and Haskell).

### Bio

Sunjay is a Ph.D. student in Computer Science and Engineering at UC
San Diego.  His research interests lie at the intersection of security
and programming languages. In particular, he is interested in applying
type theory and language design creating more secure systems. Prior to
UCSD, Sunjay worked on security and privacy at the University of
Washington.

