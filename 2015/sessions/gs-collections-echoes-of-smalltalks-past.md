---
layout: abstract
title: "GS Collections: Echoes of Smalltalk’s Past"
by: Alex Iliev
affiliation: Goldman Sachs
profpic-class: alexi
---

### Abstract 

We present the history of a Java collections library developed at Goldman Sachs, examine some of its notable implementation techniques and look at some of its main applications. GS Collections is now one of the top open source libraries of its kind, and is influencing the evolving design of the Java core libraries. Why did a very commercially oriented financial services firm develop such a library? The JDK collections library was often inefficient with space usage. This was a problem for applications processing large volumes of data. Thus, GS Collections incorporates various space optimisations. Notably, it keeps the space used by small collections to a minimum, and its hash table implementation stores the table keys and values in a novel manner. GS Collections also includes a full range of collections algorithms, inspired by the Smalltalk collections protocol. Over time it has gained more components inspired by functional languages, like immutable collections.

### Bio

Alex Iliev is a Vice President in the Technology Division of Goldman Sachs. Since 2007 he has developed authorization systems, runtime platforms and most recently Web platforms. He has used and advocated for GS Collections for most of that time. He received a Ph.D. in Computer Science from Dartmouth College, with a dissertation on applied security and privacy.