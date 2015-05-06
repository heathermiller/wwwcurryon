---
layout: abstract
title: "Servant: a type-level DSL for web APIs"
by: Julian Arni
affiliation: Zalora
profpic-class: julian
---

<br>

### Abstract 

Servant is a new, type-level Haskell EDSL for describing web APIs. It allows for arbitrarily sophisticated descriptions of a web server’s API. With servant, it is possible to state that an endpoint returns either a 201 HTTP status code with a url in the Location header and no body, or a 200 HTTP status code response with a serialized “Person” resource in the body in XML or JSONMime-Types. The “expressions” (types) of the DSL can be “interpreted” in a variety of ways: to create web servers that conform to the API described, while reducing the boilerplate of implementation; to generate documentation for the API; to generate client-side libraries in various languages to query that API. The web framework that is the upshot of this is quite different from most, and facilitates a separation between data and presentation in a novel way. Type-level DSLs are not a common thing, nor are web API DSLs. We describe what it’s like to have data at the type-level, and in particular how that design is an outgrowth of the literature on what is known as the “expression problem”. In particular, we show how we maintain extensibility along the dimension of data (new elements can be added to our DSL) and operations (new intepretations of the DSLs expressions can be implemented) while maintaining type safety, by “raising” data to the type-level, and functions into type-classes. This compares favorably to the array of Web Application Description Languages that currently exist.

### Bio

Julian Arni studied philosophy at Harvard and the University of Pittsburgh before becoming obsessed with Haskell. He is currently a Haskell consultant for Zalora.
