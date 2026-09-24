---
title: "Incident and problem management: stop confusing them"
translationKey: "incident-vs-problem"
date: "2026-08-21"
lastmod: "2026-08-21"
description: "Incident and problem are not the same thing in ITSM. What the confusion costs and how to separate the two flows."
categories: ["ITSM and ITIL"]
tags: ["incident management", "ITIL", "ITSM", "service desk", "root cause"]
author: "thomas-durand"
image: "/images/blog/gestion-incidents-gestion-problemes.webp"
imageAlt: "Technician working on a network cable panel"
faq:
  - question: "What is the difference between incident management and problem management?"
    answer: "Incident management aims to restore service as fast as possible, workaround included, without seeking the origin of the failure. Problem management aims to identify the root cause of one or more incidents and remove it for good. The two practices therefore pursue opposite objectives over time: the first optimises time to restore, the second optimises the number of incidents avoided. Mixing them in a single queue always sacrifices the second."
  - question: "Can an incident become a problem?"
    answer: "An incident does not become a problem, it can trigger one. The problem is a separate record, which may group several incidents sharing the same presumed cause."
  - question: "What is a known error?"
    answer: "A known error is a problem whose root cause has been identified and for which a workaround is documented, while the permanent fix has yet to be deployed."
readingTime: true
---

> **In short:**
> 1. An incident is measured in time to restore, a problem in incidents avoided.
> 2. A workaround closes an incident but never closes a problem.
> 3. Grouping recurring incidents is the main entry signal for problem management.
> 4. A known error is a problem with an identified cause and a documented workaround, ahead of the permanent fix.

## Two practices, two clocks

An **incident** is an unplanned interruption to a service or a reduction in its quality. The associated practice pursues one objective: restore service as quickly as possible. Restart, fail over, reassign a licence, the means hardly matter, including when they fix nothing fundamental.

A **problem** is the cause, confirmed or presumed, of one or more incidents. The associated practice pursues the opposite objective over time: take the time needed to understand, then remove the cause.

### Why the confusion is expensive

When both flows share a queue and a team, urgency always wins. Workarounds pile up, the same failure returns, and the service desk ends up handling the same symptom ten times over without ever getting the analysis time it needs.

## Telling them apart day to day

| Criterion | Incident | Problem |
|---|---|---|
| Objective | Restore the service | Remove the cause |
| Indicator | Time to restore | Incidents avoided |
| Closure | Service working again | Cause removed or known error documented |
| Trigger | User report or monitoring alert | Recurrence, criticality, trend analysis |

## Signals for opening a problem record

- The same symptom reported more than three times over a short period
- A major incident, even isolated, affecting a critical service
- A workaround applied repeatedly by support teams
- A visible trend in ticket statistics by category

That last point assumes reliable ticket categorisation, which points straight back to the quality of [service desk](/en/blog/service-desk-vs-help-desk/) organisation and to the accuracy of inventory data, since root cause analysis without a [usable CMDB](/en/blog/cmdb-explained/) amounts to searching blind.

## Putting the separation in place

1. Create a distinct record type for problems, with its own lifecycle
2. Ring-fence analysis time that incidents in progress cannot interrupt
3. Document known errors systematically and expose them to the first line

The third point produces the fastest effect: a documented, accessible workaround turns a second-line incident into an immediate first-line answer. It is also a direct application of the ITIL principle "optimise and automate", covered in our article on the [ITIL 4 guiding principles](/en/blog/itil-4-guiding-principles/).

## Frequently asked questions

<details>
<summary>What is the difference between incident management and problem management?</summary>

Incident management aims to restore service as fast as possible, workaround included, without seeking the origin of the failure. Problem management aims to identify the root cause of one or more incidents and remove it for good. The two practices therefore pursue opposite objectives over time: the first optimises time to restore, the second optimises the number of incidents avoided. Mixing them in a single queue always sacrifices the second.

</details>

<details>
<summary>Can an incident become a problem?</summary>

An incident does not become a problem, it can trigger one. The problem is a separate record, which may group several incidents sharing the same presumed cause.

</details>

<details>
<summary>What is a known error?</summary>

A known error is a problem whose root cause has been identified and for which a workaround is documented, while the permanent fix has yet to be deployed.

</details>
