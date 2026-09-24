---
title: "Gestion des incidents et des problèmes : ne plus confondre"
translationKey: "incident-vs-problem"
date: "2026-08-21"
lastmod: "2026-08-21"
description: "Incident et problème ne désignent pas la même chose en ITSM. Ce que la confusion coûte et comment séparer les deux flux."
categories: ["ITSM et ITIL"]
tags: ["gestion des incidents", "ITIL", "ITSM", "service desk", "cause racine"]
author: "claire-vasseur"
image: "/images/blog/gestion-incidents-gestion-problemes.webp"
imageAlt: "Technicien intervenant sur un panneau de câbles réseau"
faq:
  - question: "Quelle différence entre la gestion des incidents et la gestion des problèmes ?"
    answer: "La gestion des incidents vise à rétablir le service le plus vite possible, y compris par un contournement, sans chercher à comprendre l'origine de la panne. La gestion des problèmes vise à identifier la cause racine d'un ou plusieurs incidents et à la supprimer durablement. Les deux pratiques ont donc des objectifs opposés dans le temps : la première optimise le délai de rétablissement, la seconde optimise le nombre d'incidents évités. Les mélanger dans une même file de traitement conduit à sacrifier la seconde."
  - question: "Un incident peut-il devenir un problème ?"
    answer: "Un incident ne devient pas un problème, il peut en déclencher l'ouverture. Le problème est un enregistrement distinct, qui peut regrouper plusieurs incidents partageant la même cause présumée."
  - question: "Qu'est-ce qu'une erreur connue ?"
    answer: "Une erreur connue est un problème dont la cause racine est identifiée et pour lequel un contournement est documenté, sans que la correction définitive soit encore déployée."
readingTime: true
---

> **En bref :**
> 1. L'incident se mesure en délai de rétablissement, le problème se mesure en incidents évités.
> 2. Un contournement clôt un incident mais ne clôt jamais un problème.
> 3. Le regroupement d'incidents récurrents est le principal signal d'entrée de la gestion des problèmes.
> 4. Une erreur connue est un problème dont la cause est identifiée et le contournement documenté, avant correction définitive.

## Deux pratiques, deux horloges

Un **incident** est une interruption non planifiée d'un service ou une dégradation de sa qualité. La pratique associée poursuit un seul objectif : rétablir le service au plus vite. Redémarrer, basculer sur un serveur de secours, réattribuer une licence, peu importe le moyen, y compris s'il ne règle rien sur le fond.

Un **problème** est la cause, avérée ou présumée, d'un ou plusieurs incidents. La pratique associée poursuit l'objectif inverse dans le temps : prendre le délai nécessaire pour comprendre, puis supprimer la cause.

### Pourquoi la confusion est coûteuse

Quand les deux flux partagent la même file et la même équipe, l'urgence l'emporte systématiquement. Les contournements s'accumulent, la même panne revient, et le service desk finit par traiter dix fois le même symptôme sans jamais disposer du temps d'analyse.

## Comment distinguer les deux au quotidien

| Critère | Incident | Problème |
|---|---|---|
| Objectif | Rétablir le service | Supprimer la cause |
| Indicateur | Délai de rétablissement | Nombre d'incidents évités |
| Clôture | Service fonctionnel | Cause supprimée ou erreur connue documentée |
| Déclencheur | Signalement utilisateur ou supervision | Récurrence, criticité, analyse de tendance |

## Les signaux d'ouverture d'un problème

- Un même symptôme signalé plus de trois fois sur une période courte
- Un incident majeur, même isolé, ayant affecté un service critique
- Un contournement appliqué de façon répétée par les équipes de support
- Une tendance visible dans les statistiques de tickets par catégorie

Ce dernier point suppose une catégorisation fiable des tickets, ce qui renvoie directement à la qualité de l'organisation du [service desk](/blog/service-desk-help-desk-difference/) et à la précision des données d'inventaire, puisqu'une analyse de cause racine sans [CMDB exploitable](/blog/cmdb-definition-alimentation/) revient à chercher à l'aveugle.

## Mettre en place la séparation

1. Créer un type d'enregistrement distinct pour les problèmes, avec son propre cycle de vie
2. Réserver un temps d'analyse protégé, non interruptible par les incidents en cours
3. Documenter systématiquement les erreurs connues et les rendre visibles au premier niveau

Le troisième point produit l'effet le plus rapide : un contournement documenté et accessible transforme un incident de niveau 2 en réponse immédiate au niveau 1. C'est aussi une application directe du principe ITIL « optimiser et automatiser », détaillé dans notre article sur les [principes directeurs d'ITIL 4](/blog/itil-4-principes-directeurs/).

## Questions fréquentes

<details>
<summary>Quelle différence entre la gestion des incidents et la gestion des problèmes ?</summary>

La gestion des incidents vise à rétablir le service le plus vite possible, y compris par un contournement, sans chercher à comprendre l'origine de la panne. La gestion des problèmes vise à identifier la cause racine d'un ou plusieurs incidents et à la supprimer durablement. Les deux pratiques ont donc des objectifs opposés dans le temps : la première optimise le délai de rétablissement, la seconde optimise le nombre d'incidents évités. Les mélanger dans une même file de traitement conduit à sacrifier la seconde.

</details>

<details>
<summary>Un incident peut-il devenir un problème ?</summary>

Un incident ne devient pas un problème, il peut en déclencher l'ouverture. Le problème est un enregistrement distinct, qui peut regrouper plusieurs incidents partageant la même cause présumée.

</details>

<details>
<summary>Qu'est-ce qu'une erreur connue ?</summary>

Une erreur connue est un problème dont la cause racine est identifiée et pour lequel un contournement est documenté, sans que la correction définitive soit encore déployée.

</details>
