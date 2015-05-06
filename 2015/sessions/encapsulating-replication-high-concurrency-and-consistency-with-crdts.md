---
layout: abstract
title: "Encapsulating replication, high concurrency and consistency with CRDTs"
by: Marc Shapiro
affiliation: Inria/LIP6
profpic-class: marc
---

### Abstract 

In clouds and other large-scale distributed systems, data is shared by replicating it a different geographical locations. This creates a fundamental trade-off between availability, scalability, and correctnes: Strong consistency is easy to program against, but is slow, expensive, and is unavailable when the system partitions; whereas Eventual consistency (EC) can be cheaper, faster, and more scalable, but remains very ad-hoc, and is hard to understand and to use correctly. But would it be possible to have replicas that remain available for both reads and writes with fast response times, to tolerate slow and unreliable network links, and yet to ensure consistency?

We propose a theoretically sound approach, Conflict-Free Replicated Data Types (CRDTs). A CRDT encapsulates replication and concurrency, and safe and convergent by construction, thanks to some simple mathematical properties of conflict resolution. CRDTs remain responsive, available and scalable despite high network latency, faults, or disconnection. We present a portfolio of generally-useful CRDT data types, including variations on counters, registers, sets, maps, graphs and sequences. We also present some recent lower bounds and optimality results. We also show how asynchronous, always-available updates can be mixed (when the network is not partitioned) with occasional synchronous updates for ensuring stronger invariants.


### Bio

Marc Shapiro does his research on distributed computer systems, data replication and consistency algorithms, and distributed garbage collection. He invented the proxy concept, which is now universal on the Internet. He published at SOSP and OSDI, the two most prestigious venues of the area (one of the only two French papers at both venues). He was instrumental in the creation of EuroSys, the main European venue in the area. He authored 64 international publications, 17 recognised software systems, and four patents. Dr Shapiro’s research started with a PhD from Université Paul Sabatier for research performed at at LAAS in Toulouse, France, followed by a post-doc at MIT, and a researcher position at CMIRH. He is a researcher at INRIA since 1984. He spent a one-year sabbatical at Cornell, and he led the Cambridge Distributed Systems group at Microsoft Research Cambridge. He is currently a Senior Researcher for INRIA Paris-Rocquencourt, in the Regal group, located at LIP6.