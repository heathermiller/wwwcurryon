---
layout: 2017-abstract
title: "Flow Reloaded: New Challenges and New Opportunities"
by: Avik Chaudhuri
affiliation: Facebook
profpic-class: avik_chaudhuri
---

[@__avik](https://twitter.com/__avik)

<br/>

### Abstract

Flow is a static type checker for JavaScript that is in heavy use at Facebook. Flow's design carefully balances the dual needs of precision and speed: its powerful flow analysis helps it understand idiomatic patterns in modern JavaScript, whereas its parallel and incremental architecture provides the illusion of near-instantaneous type checking. While this design has served us well over the past three years, new challenges and opportunities have forced us to rethink some core parts of the design. This talk will focus on two new directions. One direction is scaling. With our ever-growing repositories, we cannot simply scale gracefully with overall code size: we have to instead scale with the size of the diffs of a single developer. This in turn has led to a complete re-architecture of Flow towards &quot;lazy&quot; type checking, where the type checker initializes by computing just the dependency information among files, and then grows the set of files that are analyzed as files are changed. Another direction is soundness. As Flow continues to cover increasing percentage of our codebase, a natural question to ask is whether we can use types for optimizing our code. Flow's types are optional and are not backed by runtime checks. We have been exploring a system of &quot;trusted&quot; types where types that may not be sound are marked as such so that an optimizing compiler can either validate such types with runtime checks or avoid optimizing based on such types.

### Bio

I created Flow, a type checker for JavaScript based on flow analysis whose distinguishing characteristics include mostly-automatic type checking for several common JavaScript idioms via advanced type inference, and near-instantaneous response times via aggressive modularization and parallelization. My current work involves leading the development of Flow at Facebook.

I briefly served as a member of ECMA TC39, the de-facto JavaScript design committee. During that time, I explored the design of features such as shared-memory concurrency control, and the implementation of advanced compilation techniques such as profile-guided type inference, in the context of JavaScript.

While at Adobe, I led the design of ActionScript 4, a significant re-implementation of the source and bytecode languages underlying Flash to target high-performance gaming. I drove research on future versions of ActionScript, including features such as generics and transactions.

