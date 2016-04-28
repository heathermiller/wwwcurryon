---
layout: 2016-abstract
title: "Distributed Configuration with Clojure"
by: Renzo Borgatti
affiliation: Mailonline
profpic-class: renzo
---

[@reborg](https://twitter.com/reborg)

### Abstract

Configuration is one of those features that almost each application solves in a
different way. But the problem is always the same: how can we change the
behaviour of a system without (hopefully) restarting it, re-building it, or God
forbid, changing the code. At the same time, how can we track and "diff” config
changes effectively? Files, DBs, key-value stores: there are many ways to store
configuration and each one adds some valuable aspect. In this presentation I
want to talk about a solution that groups together all the requirements above in
a simple and elegant way. In the process we are going to see what aspects of a
functional language like Clojure enables real-time, client/server communication
and fail-over capabilities.

### Bio

Renzo Borgatti is a developer currently working at the Mailonline on a large
Clojure codebase. I started professionally around 2000 but I’ve got my Commodore
C16 sometimes in 1986. I’ve done work/research for different industries,
corporate and startups, Europe and USA. I moved between Java, Ruby, Objective-C
and finally landed on Clojure.