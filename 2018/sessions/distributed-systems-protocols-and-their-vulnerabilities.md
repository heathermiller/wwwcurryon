---
layout: 2018-abstract
title: "Distributed Systems Protocols and their Vulnerabilities"
by: Yifan Xing
affiliation: Northeastern University
profpic-class: yifan_xing
---

[@yifan_xing_e](https://twitter.com/yifan_xing_e)
<br/>

### Abstract

Many messaging systems that are widely used in the industry, e.g., Kafka, use centralized distributed systems services to achieve reliability and consensus between servers. Companies in the industry use the services; however, only a few of them understand the details of the protocols. This talk brings the principles used in academia to the industry by introducing the common distributed systems protocols implemented underneath the popular services. In addition, this talk will compare the differences between how the protocols are used in both academia and the industry. It provides details of how the protocols, specifically Paxos and Raft, work, including how they elect leaders among servers, how they achieve consensus between machines, and how they reliability process and execute client commands. Therefore, it shows how the systems and services, which use the protocols, are enabled to have fault-tolerance, and to achieve confidentiality, integrity, authenticity, availability, etc. From the reliability and security point of view, the talk discusses how the protocols deal with machine failures, including leader failures and replicas failures. It shows the vulnerabilities and potential security issues exist in the protocols. Last but not least, we'll take a look at what we can do to avoid the vulnerabilities when applying the academic theories in the industry.

### Bio

Yifan is an open-source contributor, speaker, and ScalaBridge Boston organizer. She implemented the Raft protocol, which is a consensus algorithm that allows servers to work together reliably and resiliently. Her work involves many distributed systems related topics, including network protocols, consensus, network security, etc. For side projects, Yifan also contribute on the message queue systems and asynchronous APIs for a Scala open source project Shared Health Research Information Network (SHRINE) at Harvard Medical School. She gave a talk at ReactSphere about asynchronous programming in Scala.

