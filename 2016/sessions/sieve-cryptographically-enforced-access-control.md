---
layout: 2016-abstract
title: "Sieve: Cryptographically Enforced Access Control for User Data in Untrusted Clouds"
by: Frank Wang
affiliation: MIT
profpic-class: frankwang
---

[@ffwang2](https://twitter.com/ffwang2)

### Abstract

Modern web services rob users of low-level control over cloud storage—a user’s
single logical data set is scattered across multiple storage silos whose access
controls are set by web services, not users. The consequence is that users lack
the ultimate authority to determine how their data is shared with other web
services. In this talk, we introduce Sieve, a new platform which selectively
(and securely) exposes user data to web services. Sieve has a user-centric
storage model: each user uploads encrypted data to a single cloud store, and by
default, only the user knows the decryption keys. Given this storage model,
Sieve defines an infrastructure to support rich, legacy web applications. Using
attribute-based encryption, Sieve allows users to define intuitively
understandable access policies that are cryptographically enforceable. Using key
homomorphism, Sieve can re-encrypt user data on storage providers in situ,
revoking decryption keys from web services without revealing new keys to the
storage provider. Using secret sharing and two-factor authentication, Sieve
protects cryptographic secrets against the loss of user devices like smartphones
and laptops. The result is that users can enjoy rich, legacy web applications,
while benefiting from cryptographically strong controls over which data a web
service can access.

### Bio

Frank Wang is a 4th year PhD student at MIT focusing on building secure systems.
He is advised by Nickolai Zeldovich and James Mickens. He did his undergraduate
at Stanford, focusing on cryptography. He runs the MIT security seminar and is a
member of the student team at Roughdraft Ventures, which provides small capital
to early stage student startups. He has interned at the security teams at Google
and Facebook as well as consulted for various security companies, such as
Qualys.