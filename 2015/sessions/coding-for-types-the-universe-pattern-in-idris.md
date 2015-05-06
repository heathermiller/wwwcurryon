---
layout: abstract
title: "Coding for Types: The Universe Pattern in Idris"
by: David Christiansen
profpic-class: david
---

[@d_christiansen](https://twitter.com/d_christiansen)

### Abstract 

Some libraries need to be generic over only some of the available types. For instance, a serialization library might only support a pre-defined collection of types, a DSL for GPU computation might require that its inputs be arrays of types that map nicely to OpenCL, and a database library might ensure a relationship between queries and their schemas.

A dependently typed language allows programmers to write functions that compute types from ordinary data. We say that the data is a code for the resulting types, and that the collection of types selected by the codes is a closed universe. Dependent pattern matching allows one pattern to refine another, so we can use computed types in later arguments. Universes can be used for embedded domain-specific languages, to do safe ad-hoc polymorphism, and to write generic libraries. Idris’s type providers allow codes to be computed effectfully from the real world during type checking, increasing the practical applicability of the pattern. For example, the codes can represent database schemas with their interpretations as types being Idris datatypes that can be saved in that schema, resulting in a type-safe query language that is checked against the current schema.

This talk is not a general introduction to dependently typed programming — rather, it is a discussion of a specific design pattern. Nonetheless, it is intended to be accessible to anyone with some experience with statically typed functional programming in a language like Haskell, OCaml, F#, or Scala.

### Bio

David Christiansen is a contributor to the Idris language. He is a PhD student at the IT University of Copenhagen, working on combining dependent types and metaprogramming to implement domain-specific languages.