---
layout: 2019-abstract
title: "Using ML for Code Discovery at Facebook"
by: Frank Luan
affiliation: Facebook, Inc.
video: 
profpic-class: frank_luan
---

<br/>

### Abstract

Developers at large companies typically work with large codebases. Finding the relevant code or APIs to use for a given task is a real challenge, as is getting examples of how to use those APIs. As popular as Stack Overflow is, unfortunately it is not very helpful for questions pertaining to proprietary code. To solve this challenge, we created two techniques that apply machine learning to code discovery problems: Neural Code Search (NCS) and Aroma. NCS is a natural-language code search engine. A developer expresses their intent in natural language, and NCS retrieves closely-related code directly from an unannotated codebase. NCS overcomes the limitations of purely text-based searches, and also, it does not assume the availability of an aligned corpus of code fragments and their descriptions for training.  NCS instead uses a combination of word embeddings and information-retrieval techniques to carry out search. It relies on the observation that there is enough natural language content within the code itself — for example, meaningful method names — to make search possible. Aroma is a code recommendation tool. Given a code snippet as query, Aroma finds the most similar code in the repository, then creates clusters of similar code that contain additional usage patterns, and returns a code recommendation from each cluster. The code recommendations are idiomatic coding patterns that extend the query code snippet in some way, that will help developers discover common API usage patterns or common error handlers. Aroma helps developers cross-check their code against similar code written by others and helps them write better, production-ready code. Authors: Celeste Barnaby, Sonia Kim, Hongyu Li, Frank Luan, Koushik Sen, Satish Chandra

### Bio

Frank Luan is a software engineer at Facebook. He works in the Big Code team (with the rest of the authors) to apply machine learning techniques to build intelligent assistants that help developers write code.

