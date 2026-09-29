---
title: "ITIL methodology: principles and approach"
translationKey: "itil-methodology"
date: "2026-09-29"
lastmod: "2026-09-29"
description: "ITIL methodology refers to a service management approach, distinct from its list of processes. Guiding principles and practical implementation explained."
categories: ["ITSM and ITIL"]
tags: ["ITIL", "ITSM", "method", "approach", "governance"]
author: "claire-vasseur"
image: "/images/blog/methodologie-itil.webp"
imageAlt: "Red translucent geometric cubes in an abstract arrangement"
imageCredit: "Photo par Steve A Johnson via Pexels"
faq:
  - question: "Is the ITIL methodology a mandatory standard?"
    answer: "No. ITIL is a framework of good practices, not a certifiable standard for an organisation. A company can draw on it partially, at its own pace, with no obligation of compliance. Certification of a service management system falls under the ISO/IEC 20000 standard, which is distinct from the ITIL framework itself."
  - question: "What is the difference between ITIL methodology and its list of processes?"
    answer: "The methodology covers the overall logic: the principles that guide decisions and the progression chosen to apply them. The list of processes, or practices in ITIL 4 vocabulary, describes the content of each building block taken separately, such as incident management or change management. Knowing each practice individually says nothing about how to connect them, which is the role of the methodology."
  - question: "Should the entire ITIL methodology be applied from the start?"
    answer: "No, and the framework itself advises against it. The start where you are guiding principle calls for building on what already exists rather than a blank page, and the progress iteratively principle recommends short increments followed by a measurement of their effects. Adopting every practice at once is rarely sustainable and rarely useful."
  - question: "Who leads an ITIL approach within an organisation?"
    answer: "Leadership most often falls to a service management function or to the IT department, with a decision-making sponsor able to arbitrate priorities. Frontline teams, support as well as operations, need to be involved from the earliest stages: an approach decided without them usually runs into their own workarounds."
readingTime: true
---

> **In short:**
> 1. ITIL methodology refers to the approach and principles that frame service management, not just the list of its practices.
> 2. It rests on a service value system driven by guiding principles, to be invoked rather than mechanically followed step by step.
> 3. An effective rollout moves forward in short stages, building on what already exists, rather than through the full and simultaneous application of the framework.
> 4. Confusing the methodology with a catalogue of mandatory processes is the most frequent mistake, and the costliest one to correct.

ITIL methodology refers to how an organisation conducts its IT service management: the overall logic, the principles that guide decisions, and the progression chosen to put them into practice. It differs from the list of ITIL practices, incident management, change management or problem management, which describes the content of each building block without explaining how to connect them. This distinction shapes the rest of this article.

## What is ITIL methodology?

ITIL is not a project management methodology in the strict sense, the way PRINCE2 or an agile approach might be. It is a **framework of good practices** for IT service management, structured around a service value system. Talking about "ITIL methodology" means referring to how this framework is applied in practice: the principles that guide choices, the chain of activities that turns a request into a delivered service, and the governance that keeps the whole thing coherent.

This methodology sits at a different level from ITSM, the broader discipline of IT service management, of which ITIL is only one framework among others. The [differences between ESM and ITSM](/en/blog/esm-vs-itsm-differences/) help place ITIL within that wider landscape: ESM extends the service management logic beyond the IT department alone, while ITIL stays focused on IT.

### A framework, not a piece of software or an org chart

ITIL describes practices, never a specific tool or an imposed team structure. The methodology therefore does not dictate which ticketing software to use or how many support tiers to set up: those decisions depend on each organisation's own context, not on the framework. This is precisely what distinguishes a methodology from a configuration manual: it points to a direction and to criteria for making trade-offs, leaving each team to choose the concrete means to get there.

This flexibility explains why two organisations that both claim to follow ITIL can have very different support setups, one centralised around a single service desk, the other spread across business units, without either one falling outside the framework.

## An approach built on principles, not a sequence of tasks

Since ITIL 4, the approach rests on seven **guiding principles**, valid regardless of context: focus on value, start where you are, progress iteratively with feedback, collaborate and promote visibility, think and work holistically, keep it simple and practical, optimize and automate. A guiding principle is not followed step by step like a procedure, it is invoked when facing a choice: a scoping trade-off, an exception request, a design decision.

The detail of each of these [seven ITIL 4 guiding principles](/en/blog/itil-4-guiding-principles/) deserves examination on its own. What matters here is their role within the methodology: they come before the practices and serve to interpret them, not to replace them. An organisation that knows all 34 ITIL 4 practices without relying on these principles is applying a catalogue, not a methodology.

These principles connect with the service value system, the overall structure that links an opportunity or a request to the value ultimately produced for the organisation consuming it. ITIL methodology, in practice, consists of moving each request through this chain, drawing on the guiding principles at every decision point, rather than ticking off a list of tasks disconnected from one another.

## The main stages of an ITIL approach

Implementing ITIL methodology follows a fairly stable progression from one organisation to another, even though the pace and scope vary considerably.

| Stage | Objective |
|---|---|
| Current state assessment | Document the practices actually followed, workarounds included, before any decision to change them |
| Prioritisation | Identify the friction points that cost the most for users and for support, and focus effort there |
| Progressive rollout | Deploy a limited scope, measure the effects, then expand in increments |
| Measurement and continual improvement | Track simple indicators and adjust the approach rather than treating it as finished |

### Matching the pace to the size of the organisation

A small structure can go through these stages in a few weeks on a limited scope, such as incident management alone. A large organisation, with several business units and legacy systems, is better off handling each stage separately by domain rather than aiming for a single simultaneous rollout, which is harder to steer and to correct if something goes wrong.

## The benefits of a well-run ITIL approach

A properly conducted ITIL methodology brings a shared vocabulary between support, operations and business units, which reduces misunderstandings when incidents are reported. It also clarifies responsibilities: who decides, who executes, who is kept informed, at every stage of a delivered service. This clarity shows up concretely in day to day ticket handling, particularly when [incident management and problem management](/en/blog/incident-management-vs-problem-management/) are properly distinguished, a common confusion that slows down the durable resolution of recurring outages.

Another expected benefit: a stronger ability to justify trade-offs to management, since the methodology provides a shared framework for making the case for an investment or a delay. A service desk that documents its practices following the same logic finally has a stable foundation for training newcomers, without depending on the individual memory of a few experienced agents.

### A foundation for dialogue with the rest of the business

ITIL methodology does not only benefit IT. A vocabulary shared between the IT department and business units makes it easier to negotiate expected service levels and to prioritise change requests, two areas where the absence of a common framework often leads to informal, poorly tracked trade-offs.

## The mistakes that turn the approach into a straitjacket

The first mistake is treating ITIL as a standard to follow to the letter, when it is in fact a framework of practices meant to be adapted. This confusion often surfaces around [ITIL certifications](/en/blog/itil-certification-levels/), which validate an individual's knowledge of the framework but say nothing about the compliance of an entire organisation.

The second mistake is trying to apply every practice from the very start of the project, instead of following the iterative progress principle. The outcome is almost always the same: an overly heavy undertaking, teams losing motivation before seeing any concrete result, and a silent return to old habits.

The third mistake is automating a poorly designed process instead of fixing it first. Automating a bad practice only industrialises its flaws, which is exactly what the optimize and automate principle points out by placing optimisation before automation, never the other way round.

A fourth, subtler mistake is treating the approach as a one-off project with an end date. A methodology that is never revisited after its initial rollout stiffens over time, as the organisation, its tools and its services keep evolving around it without it accounting for that change.

## Frequently asked questions

<details>
<summary>Is the ITIL methodology a mandatory standard?</summary>

No. ITIL is a framework of good practices, not a certifiable standard for an organisation. A company can draw on it partially, at its own pace, with no obligation of compliance. Certification of a service management system falls under the ISO/IEC 20000 standard, which is distinct from the ITIL framework itself.

</details>

<details>
<summary>What is the difference between ITIL methodology and its list of processes?</summary>

The methodology covers the overall logic: the principles that guide decisions and the progression chosen to apply them. The list of processes, or practices in ITIL 4 vocabulary, describes the content of each building block taken separately, such as incident management or change management. Knowing each practice individually says nothing about how to connect them, which is the role of the methodology.

</details>

<details>
<summary>Should the entire ITIL methodology be applied from the start?</summary>

No, and the framework itself advises against it. The start where you are guiding principle calls for building on what already exists rather than a blank page, and the progress iteratively principle recommends short increments followed by a measurement of their effects. Adopting every practice at once is rarely sustainable and rarely useful.

</details>

<details>
<summary>Who leads an ITIL approach within an organisation?</summary>

Leadership most often falls to a service management function or to the IT department, with a decision-making sponsor able to arbitrate priorities. Frontline teams, support as well as operations, need to be involved from the earliest stages: an approach decided without them usually runs into their own workarounds.

</details>
