---
title: "Defining support SLAs that actually hold"
translationKey: "support-sla"
date: "2026-08-28"
lastmod: "2026-08-28"
description: "A miscalibrated support SLA turns against the team. A method for setting turnaround commitments you can keep."
categories: ["Service Desk and Ticketing"]
tags: ["SLA", "service desk", "support", "priority", "metrics"]
author: "thomas-durand"
image: "/images/blog/definir-sla-support.webp"
imageAlt: "Desk with a digital clock showing the time"
faq:
  - question: "How do you define a support SLA?"
    answer: "A support SLA is defined in three steps: build a priority matrix crossing urgency and impact, attach a response time and a restoration time to each priority level, then calibrate those times on what is actually observed rather than on a theoretical target. A commitment set below current performance is mechanically unachievable, and one set too loosely steers nothing. The most reliable rule is to start from the median measured over the last six months."
  - question: "Should response time and resolution time be separated?"
    answer: "Yes. Response time measures service desk reactivity, resolution time measures the capacity of the whole chain. Conflating them hides where the time is lost."
  - question: "What about tickets pending on the requester?"
    answer: "The SLA clock must be paused while waiting for information from the requester, otherwise the metric penalises the team for a delay it does not control."
readingTime: true
---

> **In short:**
> 1. An SLA rests on a priority matrix crossing urgency and impact, never on urgency as declared by the requester.
> 2. Two distinct commitments are required: response time and restoration time.
> 3. Calibration is done on the median actually observed, not on a theoretical target.
> 4. Without pausing the clock while waiting on the requester, the metric becomes unfair and stops being used.

## What an SLA actually commits to

A **service level agreement** is a commitment made to users on measurable turnaround times. It does not describe an ambition, it describes an enforceable promise. This is why an SLA set above the team's real capacity produces the opposite of the intended effect: breaches become the norm, and nobody looks at the indicator any more.

### The most common starting mistake

Letting the requester set the priority. Every request then becomes urgent, and the queue is no longer prioritised at all. Priority must be derived from a matrix, using two objectively assessable variables.

## The urgency and impact matrix

| Impact / Urgency | Low | Medium | High |
|---|---|---|---|
| One user | P4 | P3 | P3 |
| One team | P3 | P2 | P2 |
| A site or a critical service | P2 | P1 | P1 |

Impact measures how many people or how critical the affected service is. Urgency measures how far the request can be deferred. Priority follows mechanically, which removes the argument from the moment the ticket is raised.

## Two clocks, not one

- **Response time** runs from ticket creation to qualification by an agent. It measures [service desk](/en/blog/service-desk-vs-help-desk/) reactivity
- **Restoration time** runs until the service is back. It measures the capacity of the whole support chain

Tracking only the second makes it impossible to know where time is lost. A ten-minute response followed by a three-day resolution is not the same problem as a two-day response.

## Calibrating on reality

1. Extract the median observed time per priority level over the last six months
2. Set the commitment slightly above that median, to leave headroom
3. Tighten in stages, in step with gains on first-line resolution rate

This incremental progression matches one of the [ITIL 4 guiding principles](/en/blog/itil-4-guiding-principles/). It assumes a reliable ticket history, therefore stable categorisation, and it benefits from the findings of [problem management](/en/blog/incident-management-vs-problem-management/) to cut volume at source.

## Clock rules to write down explicitly

- Clock paused while waiting for information from the requester
- Explicit service hours, with non-working days handled
- An unambiguous definition of closure, workaround accepted or not

## Frequently asked questions

<details>
<summary>How do you define a support SLA?</summary>

A support SLA is defined in three steps: build a priority matrix crossing urgency and impact, attach a response time and a restoration time to each priority level, then calibrate those times on what is actually observed rather than on a theoretical target. A commitment set below current performance is mechanically unachievable, and one set too loosely steers nothing. The most reliable rule is to start from the median measured over the last six months.

</details>

<details>
<summary>Should response time and resolution time be separated?</summary>

Yes. Response time measures service desk reactivity, resolution time measures the capacity of the whole chain. Conflating them hides where the time is lost.

</details>

<details>
<summary>What about tickets pending on the requester?</summary>

The SLA clock must be paused while waiting for information from the requester, otherwise the metric penalises the team for a delay it does not control.

</details>
