---
layout: 2016-abstract
title: "From Unikernels to Databases to UIs: Truly full-stack apps in OCaml"
by: Sean Grove
profpic-class: seangrove
---

[@sgrove](https://twitter.com/sgrove)

### Abstract

What happens when your app is its own VM, boots in 50ms, and can share the same
code across browser/mobile/server components? Let’s find out!

With libraries like Mirage, js_of_ocaml, & ARM compiler output OCaml apps can
operate at such a low level we don’t even need operating systems on the backend
anymore (removing 15 million lines of memory-unsafe code) - while at the same
time, writing UI’s is easier & more reliable than ever before, with lightweight
type-checked code sharing between server, browser clients, & native mobile apps.

We’ll look at a thought experiment of what’s enabled by new tech in OCaml like
Unikernels, efficient JS/ARM output, React/Native support, and easy host
interop.

### Bio

Sean’s been convinced there are better ways to develop applications across the
stack for years, and built time-traveling debuggers, interface builders, layout
tools, and graphic design tools in his quest to explore the space. His company
was the first to deploy ClojureScript’s Om library to a production app in early
2014, he helped lay the architecture for CircleCI’s open-source frontend app and
https://www.precursorapp.com.