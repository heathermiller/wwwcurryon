---
layout: abstract
title: "Pyro – Typing Python in Python"
by: Alex Muscar
profpic-class: alex
---

<br><br>

### Abstract 

At Lyst, we use Python quite heavily. Our code base is around 500k lines of code, spanning multiple domains, from your run of the mill Django web app to machine learning algorithms. Now, we all know that, while Python is good for quickly prototyping apps, its latent typing doesn’t make scaling a large code base easy. Couple this with fast iteration cycles—tens of commits and a couple of releases each day—and you’re sure to get a vast—and interesting—collection of bugs. Motivated by the above, we decided to develop an in-house type checker for Python. While there are plenty of similar projects, most notably MyPy, they all fall short with respect to one or more of our constraints:

- we use Python 2, and migrating to Python 3 would not be feasible at the moment;
- while some of our engineers have experience with statically typed languages, a good deal don’t, or are not willing to switch to a fully annotated solution;
- the type checker should be written in a language that makes it easy for our engineers to contribute to the project.

Thus, Pyro, our in-house Python 2 type checker written in Python was born. Pyro adopts a structural typing discipline, and it uses row polymorphism to represent objects. We feel that this is closer to Python’s “duck typed” nature than nominal alternatives like MyPy, and it makes type inference easier–since one of our requirements is to minimise the number of annotations provided by the programmer. And the fact that it’s written in Python is a good exercise in “dogfooding”. Given that Pyro is a “20% project”, i.e. it’s mostly developed in the spare time between other tasks, it’s still in alpha, but we do expect to have a preview somewhere around the beginning of May.

### Bio

My name is Alex Muscar, and I am originally from Romania. Currently I am a Software Engineer at [Lyst](http://www.lyst.com), a software company in the fashion industry, based in London. There I do mostly infrastructure and server side development. I hold a Ph.D. in Computer Science, in the field of Agent Oriented Programming Languages. As you can guess, I’m really passionate about all things programming languages. I’m especially interested in functional programming, and I hold a soft spot for Lisp. Besides programming I really like literature, and travelling.

