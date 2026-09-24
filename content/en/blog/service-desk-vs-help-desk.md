---
title: "Service desk and help desk: the vocabulary sorted"
translationKey: "service-desk-vs-help-desk"
date: "2026-08-26"
lastmod: "2026-08-26"
description: "Service desk, help desk, service centre: three terms often confused. What each one actually covers."
categories: ["Service Desk and Ticketing"]
tags: ["service desk", "help desk", "support", "ITIL", "ticketing"]
author: "thomas-durand"
image: "/images/blog/service-desk-help-desk-difference.webp"
imageAlt: "Reception counter in a company lobby"
faq:
  - question: "What is the difference between a service desk and a help desk?"
    answer: "A help desk handles incidents and faults reported by users: its scope is corrective and reactive. A service desk is a single point of contact that additionally covers service requests, communication about planned outages and the interface with other ITSM practices. In ITIL vocabulary only the term service desk is used, the help desk being historically a version restricted to fault handling."
  - question: "What is a single point of contact?"
    answer: "The single point of contact, or SPOC, is the principle that all user enquiries go through one intake channel, whichever team ultimately handles the request."
  - question: "How many support tiers should there be?"
    answer: "Three tiers is the most common pattern: a generalist first line, a specialised second line and a third line handled by the vendor or a technical expert."
readingTime: true
---

> **In short:**
> 1. A help desk handles faults, a service desk handles faults and service requests.
> 2. ITIL keeps only the term service desk, defined as the single point of contact between provider and users.
> 3. The three-tier pattern, generalist then specialist then vendor, remains the reference structure.
> 4. First-line resolution rate depends directly on the quality of the knowledge base made available.

## Three terms, three scopes

The **help desk** emerged from the need to centralise the reporting of IT faults. Its scope is corrective: a user sees a malfunction, reports it, a team fixes it.

The **service desk** widens that scope. It also receives service requests, which are not faults: a new account, an additional piece of software, a replacement device. It communicates about planned outages and acts as the interface with the other service management practices.

The term **service centre** is a common translation of service desk. It designates nothing different.

### What the framework says

ITIL uses only the notion of service desk and defines it as the single point of contact between the service provider and its users. The distinction with help desk is therefore historical rather than normative, which explains why both terms still coexist in vendor marketing.

## Incident versus request

| Type | Nature | Example | Handling |
|---|---|---|---|
| Incident | Unplanned interruption | Cannot connect to email | Restore as fast as possible |
| Service request | Request listed in the catalogue | Add a second monitor | Fulfil following a set procedure |

This separation drives everything downstream. An incident is measured in time to restore, a request in time to deliver, and conflating the two makes the indicators unreadable. The same separation logic applies between incidents and problems, as covered in our article on [incident and problem management](/en/blog/incident-management-vs-problem-management/).

## The three support tiers

1. **Tier 1**: generalist, qualifies the request, applies documented workarounds, routes
2. **Tier 2**: specialised by domain, picks up what tier 1 cannot resolve
3. **Tier 3**: vendor or engineering expertise, called in on rare cases or underlying fixes

The efficiency of this pattern is decided at the first tier. Every documented procedure and every published known error raises the immediate resolution rate, which assumes a knowledge base kept current and genuinely usable by agents.

## What to tool first

- A single intake channel, however many departments are involved, a principle at the heart of [Enterprise Service Management](/en/blog/what-is-enterprise-service-management/)
- Ticket categorisation that stays stable over time, without which no trend analysis is possible
- Explicit turnaround commitments, covered in our article on [support SLAs](/en/blog/defining-support-slas/)

## Frequently asked questions

<details>
<summary>What is the difference between a service desk and a help desk?</summary>

A help desk handles incidents and faults reported by users: its scope is corrective and reactive. A service desk is a single point of contact that additionally covers service requests, communication about planned outages and the interface with other ITSM practices. In ITIL vocabulary only the term service desk is used, the help desk being historically a version restricted to fault handling.

</details>

<details>
<summary>What is a single point of contact?</summary>

The single point of contact, or SPOC, is the principle that all user enquiries go through one intake channel, whichever team ultimately handles the request.

</details>

<details>
<summary>How many support tiers should there be?</summary>

Three tiers is the most common pattern: a generalist first line, a specialised second line and a third line handled by the vendor or a technical expert.

</details>
