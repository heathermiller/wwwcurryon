---
layout: 2019-abstract
title: "Conflict resolution"
speakers:
  - id: "james_coglan"
    name: "James Coglan"
    affiliation: ""
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
    video: "https://www.youtube.com/watch?v=tyj390blxPc"
---

<br/>

### Abstract

How is a Git branch like a database transaction? Git, like a database, is designed to let multiple clients concurrently edit a set of records -- the files in your project. Despite their apparent differences, they both solve a similar fundamental problem: with concurrent edits, how do you avoid two people unknowingly overwriting one another's updates? In this talk, we'll look at what happens during a Git merge, what causes conflicts to happen, and how Git prevents users in a distributed network from losing each other's changes. We'll learn how this relates to the broader theory of concurrent editing in distributed systems, providing a deeper understanding of many other data systems beyond version control.

### Bio

James is the author of several open-source tools for Ruby and JavaScript, including the Faye WebSocket messaging system and the parsing toolkit Canopy. He is the author of "Building Git", a book about the computer science behind Git.
