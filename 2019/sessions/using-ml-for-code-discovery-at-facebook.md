---
layout: 2019-abstract
title: "Using ML for Code Discovery at Facebook"
speakers:
  - id: "frank_luan"
    name: "Frank Luan"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
  - id: "celeste_barnaby"
    name: "Celeste Barnaby"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
  - id: "koushik_sen"
    name: "Koushik Sen"
    affiliation: "UC Berkeley"
    url: ""
    twitter: ""
    known-for: ""
    list: "yes"
  - id: "satish_chandra"
    name: "Satish Chandra"
    affiliation: "Facebook"
    url: ""
    twitter: ""
    known-for: ""
    list: "no"
    video: "https://www.youtube.com/watch?v=2WIwx02t4PQ"
---

<br/>

### Abstract

For developers working with large codebases, finding the relevant code or APIs for a given task is a challenge. Sites like Stack Overflow are not very helpful for questions pertaining to proprietary code. To solve this challenge, we created two techniques that apply machine learning to code discovery problems: Neural Code Search (NCS) and Aroma. NCS is a natural-language code search engine. A developer expresses their intent in natural language, and NCS retrieves closely-related code directly from an unannotated codebase. NCS overcomes the limitations of purely text-based searches, and also, it does not assume the availability of an aligned corpus of code fragments and their descriptions for training.  NCS instead uses a combination of word embeddings and information-retrieval techniques to carry out search. Aroma is a code recommendation tool. Given a code snippet as query, Aroma finds the most similar code in the repository, then creates clusters of similar code that contain additional usage patterns, and returns a code recommendation from each cluster. Aroma helps developers cross-check their code against similar code written by others and helps them write better, production-ready code.

### Bio

_Frank Luan_ is a software engineer at Facebook. He works in the Big Code team to apply machine learning techniques to build intelligent assistants that help developers write code. He graduated from the University of Chicago in 2017 with a B.S. in Computer Science and a B.A. in Statistics.


_Celeste Barnaby_ is a software engineer at Facebook. She works in the Big Code team to apply machine learning techniques to build intelligent assistants that help developers write code. She graduated from Wesleyan University in 2018 with a B.A. in Computer Science and a B.A. in Mathematics.


_Koushik Sen_ is a professor in the Department of Electrical Engineering and Computer Sciences at the University of California, Berkeley. His research interest lies in Software Engineering, Programming Languages, and Formal methods. He is interested in developing software tools and methodologies that improve programmer productivity and software quality. He is best known for his work on “DART: Directed Automated Random Testing” and concolic testing. He has received a NSF CAREER Award in 2008, a Haifa Verification Conference (HVC) Award in 2009, a IFIP TC2 Manfred Paul Award for Excellence in Software: Theory and Practice in 2010, a Sloan Foundation Fellowship in 2011, a Professor R. Narasimhan Lecture Award in 2014, an Okawa Foundation Research Grant in 2015, and an ACM SIGSOFT Impact Paper Award in 2019. He has won several ACM SIGSOFT Distinguished Paper Awards. He received the C.L. and Jane W-S. Liu Award in 2004, the C. W. Gear Outstanding Graduate Award in 2005, and the David J. Kuck Outstanding Ph.D. Thesis Award in 2007, and a Distinguished Alumni Educator Award in 2014 from the UIUC Department of Computer Science. He holds a B.Tech from Indian Institute of Technology, Kanpur, and M.S. and Ph.D. in CS from University of Illinois at Urbana-Champaign.


_Satish Chandra_ obtained jis PhD from the University of Wisconsin-Madison in 1997, and a B.Tech. from the Indian Institute of Technology-Kanpur in 1991, both in computer science. From 1997 to 2002, he was a member of technical staff at Bell Laboratories, where his research focused on program analysis, domain-specific languages, and data-communication protocols. From 2002 to 2013, he was a research staff member at IBM Research, where his research focused on bug finding and verification, software synthesis, and test automation. From 2013 to 2016, he worked at Samsung Research America, where he led the advanced programming tools research team. In 2016, he started working at Facebook. He is an ACM Distinguished Scientist.
