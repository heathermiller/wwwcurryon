---
layout: 2018-abstract
title: "A CRDT Primer: Defanging Order Theory"
by: John Mumm
affiliation: Vectrology Solutions
profpic-class: john_mumm
---

<br/>

### Abstract

When it comes to distributed systems, coordination is slow. This is true whether we’re talking about a system that favors consistency or one that favors high availability. CRDTs are data structures that promise strong eventual consistency for highly available systems without the costs of coordination. A gossip protocol will do the trick. If you’ve read anything about the theory behind state-based convergent CRDTs, you may have run across the term “monotonic join semi-lattice.” Despite the intimidating name, this concept (drawn from order theory) is built out of familiar elements. And rather than indicating that you need an advanced degree in mathematics to understand how CRDTs work, it turns out that with a little work, it can help clarify why, when it comes to state-based CRDTs, you can rely on gossip to get your system to converge on the One True Value. In this talk, I’m going to start from the familiar elements constituting a join semi-lattice and build up to the complete concept. I’ll then explain how state-based CRDTs work, relying on the lessons we’ve learned from order theory.

### Bio

John Mumm is a Netherlands-based software engineer working on Wallaroo, an open source high-performance framework for building stateful distributed applications. John holds a PhD in philosophy.

