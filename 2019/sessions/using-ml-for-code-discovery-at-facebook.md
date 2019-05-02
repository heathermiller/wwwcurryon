---
layout: 2019-abstract
title: "Using ML for Code Discovery at Facebook"
speakers:
  - id: "frank_luan"
    name: "Frank Luan"
    affiliation: "Facebook, Inc."
    url: ""
    twitter: ""
    known-for: ""
---

<br/>

### Abstract

For developers working with large codebases,finding the relevant code or APIs for a given task is a challenge. Sites like Stack Overflow are not very helpful for questions pertaining to proprietary code. To solve this challenge, we created two techniques that apply machine learning to code discovery problems: Neural Code Search (NCS) and Aroma. NCS is a natural-language code search engine. A developer expresses their intent in natural language, and NCS retrieves closely-related code directly from an unannotated codebase. NCS overcomes the limitations of purely text-based searches, and also, it does not assume the availability of an aligned corpus of code fragments and their descriptions for training.  NCS instead uses a combination of word embeddings and information-retrieval techniques to carry out search. Aroma is a code recommendation tool. Given a code snippet as query, Aroma finds the most similar code in the repository, then creates clusters of similar code that contain additional usage patterns, and returns a code recommendation from each cluster. Aroma helps developers cross-check their code against similar code written by others and helps them write better, production-ready code.

### Bio

Frank Luan is a software engineer at Facebook. He works in the Big Code team (with the rest of the authors) to apply machine learning techniques to build intelligent assistants that help developers write code.

