---
title: "CMDB: what it is for and how to feed it"
translationKey: "cmdb"
date: "2026-09-02"
lastmod: "2026-09-02"
description: "A CMDB is only worth anything if it is current. What it should contain and how to feed it without letting it drift."
categories: ["IT Asset Management"]
tags: ["CMDB", "ITAM", "asset management", "IT inventory", "ITIL"]
author: "claire-vasseur"
image: "/images/blog/cmdb-definition-alimentation.webp"
imageAlt: "Coiled RJ45 network cables on a light background"
faq:
  - question: "What is a CMDB and what is it for?"
    answer: "A CMDB, or configuration management database, records the configuration items of an information system and above all the relationships linking them: which server carries which application, which application serves which business service. Its main use is assessing the impact of an incident or a change before acting. Its value rests entirely on freshness: a manually maintained CMDB drifts within months and becomes more dangerous than useful, since decisions then rest on a false map."
  - question: "What is the difference between an inventory and a CMDB?"
    answer: "An inventory lists assets and their characteristics. A CMDB adds the dependency relationships between those items, which is what makes impact questions answerable."
  - question: "Should everything go into the CMDB?"
    answer: "No. Scope should be limited to items whose failure or modification affects a service. An exhaustive CMDB is unmanageable and goes stale faster than it can be populated."
readingTime: true
---

> **In short:**
> 1. A CMDB records configuration items and, above all, the dependency relationships linking them.
> 2. Its primary use is impact analysis, before a change or during a major incident.
> 3. An inventory lists assets, a CMDB adds dependencies: they are two different objects.
> 4. Manual population always drifts: automated collection is the only sustainable option.

## What a CMDB actually contains

A **CMDB**, for Configuration Management Database, records the configuration items of an information system: servers, workstations, applications, services, contracts. But the list is not the point. What separates a CMDB from a spreadsheet is the **relationships** between those items: which server hosts which database, which database feeds which application, which application delivers which business service.

### The question it must answer

"If I shut down this server tonight, who notices tomorrow morning." A CMDB that cannot answer that question has no operational use, however many rows it holds.

## Inventory and CMDB are not the same thing

| Object | Contents | Question answered |
|---|---|---|
| Inventory | Assets, technical characteristics, location, owner | What do I own and where |
| CMDB | Configuration items and their dependencies | What breaks if I touch this |
| Asset management | Financial lifecycle, contracts, licences, depreciation | What does it cost and until when |

The three overlap and often live in the same tool, which keeps the confusion alive. The practical starting point remains the inventory, fed by the collection methods covered in our article on [automated IT inventory](/blog/automated-it-inventory/).

## Why CMDBs drift

- Initial scope is too broad, and nobody keeps it current
- Relationships are captured once and never revisited
- No change process makes updating the database a condition of closure
- The tool does not distinguish automatically discovered data from manually entered data

That last point is decisive. Without source tagging, a manual correction is overwritten at the next collection run, or conversely blocks automatic discovery for good.

## A sustainable population method

1. **Limit scope** to critical services and what carries them, even if that covers less than half the estate
2. **Automate discovery** of technical items, and reserve manual entry for business relationships
3. **Wire updates into change management**, so no approved change leaves the database behind

The third point assumes an existing change management practice, therefore an ITSM foundation already in place. It is also what makes the CMDB usable in [problem management](/blog/incident-management-vs-problem-management/), where root cause analysis relies on dependencies to trace a symptom back to its origin.

## Frequently asked questions

<details>
<summary>What is a CMDB and what is it for?</summary>

A CMDB, or configuration management database, records the configuration items of an information system and above all the relationships linking them: which server carries which application, which application serves which business service. Its main use is assessing the impact of an incident or a change before acting. Its value rests entirely on freshness: a manually maintained CMDB drifts within months and becomes more dangerous than useful, since decisions then rest on a false map.

</details>

<details>
<summary>What is the difference between an inventory and a CMDB?</summary>

An inventory lists assets and their characteristics. A CMDB adds the dependency relationships between those items, which is what makes impact questions answerable.

</details>

<details>
<summary>Should everything go into the CMDB?</summary>

No. Scope should be limited to items whose failure or modification affects a service. An exhaustive CMDB is unmanageable and goes stale faster than it can be populated.

</details>
