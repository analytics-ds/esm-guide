---
title: "ESM vs ITSM: what actually changes"
translationKey: "esm-vs-itsm"
date: "2026-08-14"
lastmod: "2026-08-14"
description: "ESM and ITSM share the same mechanics but not the same scope. What genuinely changes in practice."
categories: ["ESM Fundamentals"]
tags: ["ESM", "ITSM", "service management", "processes", "governance"]
author: "claire-vasseur"
image: "/images/blog/esm-ou-itsm-differences.webp"
imageAlt: "Interior of an office building with clean lines"
faq:
  - question: "What is the difference between ESM and ITSM?"
    answer: "ITSM, or IT Service Management, organises the services delivered by the IT department: incidents, requests, changes, assets. ESM, or Enterprise Service Management, applies those same mechanics to other support functions such as HR, facilities or finance. The difference therefore lies not in the method, which is identical, but in the scope covered and in the governance it demands, since several departments must agree on a shared language."
  - question: "Does ESM replace ITSM?"
    answer: "No. ESM encompasses ITSM rather than replacing it. IT practice remains the methodological foundation and, in most organisations, the first service catalogue to go live."
  - question: "Can you do ESM with your current ITSM tool?"
    answer: "Usually yes, provided the platform supports multiple catalogues, multiple assignment queues and access rights partitioned by department."
readingTime: true
---

> **In short:**
> 1. ITSM and ESM rest on the same objects: service catalogue, ticket, priority, turnaround commitment, knowledge base.
> 2. The only structural difference is scope: IT for ITSM, every support function for ESM.
> 3. Moving from one to the other is a governance project, not a technical one.
> 4. Three technical capabilities gate the transition: multiple catalogues, multiple assignment queues, partitioned access rights.

## Two acronyms, one mechanism

**ITSM** organises the services delivered by the IT department. **ESM** applies the same reasoning to every function delivering an internal service. The building blocks are identical: describe a service, open a channel to request it, assign the request to someone, commit to a deadline, measure.

### What ESM inherits directly from ITSM

The distinction between incident and request, priority derived from urgency and impact, the self-service knowledge base, support tiers: all of it comes from IT and transfers without rewriting. Those foundations are covered in our article on the [fundamentals of Enterprise Service Management](/en/blog/what-is-enterprise-service-management/).

## What genuinely changes

| Dimension | ITSM | ESM |
|---|---|---|
| Scope | IT department | Every support function |
| Sponsor | Head of IT | Executive committee or general secretariat |
| Main difficulty | Technical and volume related | Political and organisational |
| Reference framework | ITIL, ISO/IEC 20000 | No dedicated framework |

The difficulty shifts. In ITSM, the obstacle is industrialising a high volume of requests. In ESM, the obstacle is agreement between departments that share neither vocabulary, nor culture of deadlines, nor confidentiality obligations.

## The three technical conditions for the transition

- **Multiple catalogues**: every department must publish its own services without depending on IT
- **Multiple assignment queues**: an HR request must never land in the IT queue
- **Partitioned access rights**: a sick note or an expense claim has no business being readable by a technician

That last point is the most commonly underestimated. A platform unable to hide ticket content from unrelated teams rules itself out of HR and legal use cases from the start. The topic belongs in the selection grid, alongside the criteria listed in our [ITSM platform selection grid](/en/blog/choosing-an-itsm-platform/).

## In what order to proceed

1. Stabilise ITSM practice, including the [distinction between incident and problem management](/en/blog/incident-management-vs-problem-management/)
2. Extend to a single pilot department, with its own catalogue
3. Generalise once the rights model has been proven

## Frequently asked questions

<details>
<summary>What is the difference between ESM and ITSM?</summary>

ITSM, or IT Service Management, organises the services delivered by the IT department: incidents, requests, changes, assets. ESM, or Enterprise Service Management, applies those same mechanics to other support functions such as HR, facilities or finance. The difference therefore lies not in the method, which is identical, but in the scope covered and in the governance it demands, since several departments must agree on a shared language.

</details>

<details>
<summary>Does ESM replace ITSM?</summary>

No. ESM encompasses ITSM rather than replacing it. IT practice remains the methodological foundation and, in most organisations, the first service catalogue to go live.

</details>

<details>
<summary>Can you do ESM with your current ITSM tool?</summary>

Usually yes, provided the platform supports multiple catalogues, multiple assignment queues and access rights partitioned by department.

</details>
