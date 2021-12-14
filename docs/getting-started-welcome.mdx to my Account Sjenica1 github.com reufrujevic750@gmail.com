---
id: getting-started-welcome
title: Welcome to the Token Engineering community!
sidebar_label: Welcome
---

The Token Engineering Community is here to answer the following question: "What does it take to do token engineering, and how can we forward this nascent discipline together?" 

## So what is "token engineering?"

Token engineering is a crossdisciplinary field that draws from established practices in systems, electrical, robotics & controls engineering, and more. It also draws from fields as diverse as Behavioural & Ecological Economics, Operations Research, AI & Optimization, as explored by Shermin Voshmgir & Michael Zargham in this paper on the [Foundations of Cryptoeconomic Systems](https://epub.wu.ac.at/7309/8/Foundations%20of%20Cryptoeconomic%20Systems.pdf). It is a methodology that goes all the way from ideation to design, modeling, simulation, testing, deployment, and maintentance. It's the process of building cryptoeconomic systems that work, and keep working. Just like other public infrastructure like bridges and power grids, our future economic systems also need to be rigorously designed to be reliable under widely varying conditions. The goal of token engineering is to design and create tokeneconomic systems that are robust against exploits, unintended consequences and cascade failures, in order to protect and empower users. 

![Knowledge Domains](https://user-images.githubusercontent.com/14944510/81488973-ca9f0d80-92a2-11ea-8d12-869382001b50.png)

## How does it work?

### Define system goals & properties

Token engineering design starts with understanding the desired goals of a given system, and then working backwards to determine the properties and structure required to achieve those goals. This is carried out in a baseline assessment, including system mapping & canvassing as described by Stephen Young in this article on the [token engineering process](https://medium.com/@stephen_yo/a-token-engineering-process-16687f3b9a74). The good folks at the [Platform Design Toolkit](https://platformdesigntoolkit.com/) have a suite of tools that are useful for this stage of the design process.

### Model system & identify necessary mechanisms 

The next step in the token engineering process is to produce stock & flow diagrams representing the states of your system and how they change relative to each other. This diagram can be considered like a 'circuit diagram' of your system, that tracks flows of tokens that could represent funds, governance, reputation, and more. These systems can be complex and non-linear, which is explored in this article by Brandon Ramirez on [cryptoeconomic protocols as complex systems](https://thegraph.com/blog/modeling-cryptoeconomic-protocols-as-complex-systems-part-1).

> stock & flow diagram to include

### Identify useful mechanisms & compose them into design patterns

As an engineer, mechanisms should be designed where certain properties hold under all conditions. This is possible through mathematical formalization as found in the [research of Dr. Michael Zargham & the Institute for Cryptoeconomics at the Vienna University of Economics & Business](https://epub.wu.ac.at/7381/1/zargham_shorish_paruch.pdf).  Understanding the difficulty of this process, teams such as the [Commons Stack](https://www.commonsstack.org) are working to produce a toolkit of mechanisms & design patterns that can be customized & reused by various projects to reduce the barriers to adoption.

### Draw system flows & state transitions into a differential specification
Understanding the states, mechanisms and behaviours of your system and the agents interacting with it, the next step is to map your system flows into a differential specification diagram, which will inform your cadCAD wiring in the next step of the process. The differential specification diagram takes into account system policies, agent behaviours, and exogenous processes (i.e. random external events), and the complex interaction patterns existing between them.

> diff spec diagram to include

### Simulate & test your system

It's important to model, validate, test and iterate your system with tools like [cadCAD](https://www.cadCAD.org) before deploying your code to production. As discussed in this article by Jeff Emmett on [open token engineering tools](https://medium.com/commonsstack/establishing-open-token-engineering-tools-standards-9584b40dfe30), this step can include A/B testing, parameter sweeps, Monte Carlo analyses and more.

> simulation notebook diagram to include

### Test IRL & iterate your model

As in all engineering disciplines, theory only gets us so far. We need to implement & dogfood the designed system in controlled and low-risk environments, and iterate our model with new learnings from deployment. Ultimately, the engineering process does not promise perfect results every time, but it does provide replicable models that we can continually improve.

