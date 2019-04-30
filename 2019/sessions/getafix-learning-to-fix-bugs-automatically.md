---
layout: 2019-abstract
title: "Getafix: Learning to fix bugs automatically"
by: Andrew Scott &amp; Johannes Bader &amp; Satish Chandra
affiliation: Facebook
video: 
profpic-class: andrew_scott_and_johannes_bader_and_satish_chandra
---

<br/>

### Abstract

Developers spend a significant amount of their time doing maintenance work, including fixing bugs. Bug fixes often are of a repetitive nature, so at first look, it appears that some portion of this work should be automated. Indeed, some recent approaches offer automation, but these typically explore a large space of potential fixes by making varying combinations of mutations, trying them all until one that passes the test suite is found. These approaches are not only computationally expensive, they also suggest fixes that may not look natural to a developer. We present Getafix, a tool to offer bug fix suggestions automatically but in a way that addresses the above shortcomings. Getafix is based on learning from bug fix history. Since all code commits are logged, it is possible to extract past code changes that were made for the purpose of fixing bugs. Getafix learns, in an off-line phase, a set of templates from past fixes. Then, as a new bug report appears, Getafix uses the learned templates for the type of bug as well as its context in code to create and rank a set of possible fix suggestions. Getafix is able to create possible fixes on the order of seconds, as well as offer fixes that resemble human-made fixes.  As a result, Getafix is able to generate bug fixes fast enough to be useful as well as acceptable for developers. Getafix currently works on bugs reported by a static analyzer. At Facebook, Getafix has been used to suggest fixes for bugs reported by Infer: along with Infer bug reports, Getafix offers a fix suggestion and offers the developer a choice to accept the fix at the click of a button.

### Bio

I graduated from Harvey Mudd College in 2017 with a BS in computer science. Since then I've been working at Facebook to study how developers change code, particularly the Getafix project which I'm presenting.

