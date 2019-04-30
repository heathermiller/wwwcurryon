---
layout: 2019-abstract
title: "No Hands on Deck: Automation @Uber"
by: Adam Welc
affiliation: Uber
video: 
profpic-class: adam_welc
---

<br/>

### Abstract

At Uber we operate at a scale that rivals some of the largest engineering organizations in the industry. In particular, we concurrently develop multiple mobile applications cumulatively spanning millions code lines, with hundreds of engineers often pushing thousands of changes to our main applications repository (aka monorepo) each day. Under these circumstances, it is absolutely crucial to minimize manual effort required to build, refactor, and optimize our applications. In this talk you will learn how we automate various aspects of application development using both novel techniques and tools developed at Uber and by adapting existing solutions to operate at Uber's scale. First I will describe the SubmitQueue, a fully automated component of Uber's application build pipeline that supports thousands of daily commits while maintaining an "always green" master branch of the monorepo that always successfully compiles and passes all the tests. Then I will present Piranha, an automated source code cleanup tool removing dead code guarded by stale feature flags. Finally, I will share lessons learned from automating deployment of already existing application optimizations, using as an example what we believe is the first non-Facebook production deployment of Facebook's ReDex bytecode optimizer.

### Bio

Adam Welc is a Senior Engineer at Uber's Programming Systems Team, where he currently works on application analysis and performance tuning as well as on developing tools to improve developers' experience. More generally, his professional interests are in the area of programming language design, implementation, and tooling with specific focus on run-time system and compiler optimizations. Adam has over ten years of experience working with with different types of virtual machines, compilers, and other large and complicated frameworks and systems. He holds a PhD in Computer Science from Purdue University.

