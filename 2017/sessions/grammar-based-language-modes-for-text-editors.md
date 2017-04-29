---
layout: 2017-abstract
title: "Grammar-based language modes for text editors"
by: Marijn Haverbeke
affiliation: Independent
profpic-class: marijn_haverbeke
---

[@marijnjh](https://twitter.com/marijnjh)

<br/>

### Abstract

In order to effectively edit code, you'll want your editor to have some knowledge of the language you're working with, so that it can at the very least highlight tokens and auto-indent. This has traditionally been done with editor-specific, usually regular expression-based formats, which have a tendency to be either too weak to express exotic syntactic features, or cumbersome to work with. This talk describes a system that uses Parser Expression Grammars to implement editor language modes, making it relatively easy to write modes for complicated grammars. Such grammars provide more information than traditional token-level mode definitions, so that features like by-expression or by-statement editing commands can be supported with little extra work. Additionally, the composability of PEG grammars is exploited to easily create grammars for mixed-language files (think HTML with JavaScript and CSS) and custom dialects.

### Bio

Marijn is a failed academic who then failed to thrive in industry and finally found his niche as independent developer of open-source software, mostly in the editor and tooling space.

