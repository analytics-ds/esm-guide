---
title: "Définir des SLA de support qui tiennent la route"
translationKey: "support-sla"
date: "2026-08-28"
lastmod: "2026-08-28"
description: "Un SLA de support mal calibré se retourne contre l'équipe. Méthode pour fixer des engagements de délai tenables."
categories: ["Service desk et ticketing"]
tags: ["SLA", "service desk", "support", "priorite", "indicateurs"]
author: "thomas-durand"
image: "/images/blog/definir-sla-support.webp"
imageAlt: "Bureau avec une horloge numérique affichant l'heure"
faq:
  - question: "Comment définir un SLA de support ?"
    answer: "Un SLA de support se définit en trois temps : établir une matrice de priorité croisant l'urgence et l'impact, associer à chaque niveau de priorité un délai de prise en charge et un délai de rétablissement, puis calibrer ces délais sur les temps réellement observés et non sur une cible théorique. Un engagement fixé en dessous de la performance actuelle est mécaniquement non tenable, et un engagement trop large ne pilote rien. La règle la plus fiable consiste à partir de la médiane constatée sur les six derniers mois."
  - question: "Faut-il distinguer délai de prise en charge et délai de résolution ?"
    answer: "Oui. Le délai de prise en charge mesure la réactivité du service desk, le délai de résolution mesure la capacité de l'ensemble de la chaîne. Les confondre masque l'endroit où le temps se perd."
  - question: "Que faire des tickets en attente du demandeur ?"
    answer: "Le décompte du SLA doit être suspendu pendant l'attente d'une information du demandeur, faute de quoi l'indicateur pénalise l'équipe pour un délai qu'elle ne maîtrise pas."
readingTime: true
---

> **En bref :**
> 1. Un SLA repose sur une matrice de priorité croisant l'urgence et l'impact, jamais sur la seule urgence déclarée par le demandeur.
> 2. Deux engagements distincts sont nécessaires : délai de prise en charge et délai de rétablissement.
> 3. Le calibrage se fait sur la médiane réellement observée, pas sur une cible théorique.
> 4. Sans suspension du décompte pendant l'attente du demandeur, l'indicateur devient injuste et cesse d'être utilisé.

## Ce qu'un SLA engage réellement

Un **accord de niveau de service** est un engagement pris envers les utilisateurs sur des délais mesurables. Il ne décrit pas une ambition, il décrit une promesse opposable. C'est pourquoi un SLA fixé au-dessus de la capacité réelle de l'équipe produit l'effet inverse de celui recherché : les dépassements deviennent la norme, et l'indicateur cesse d'être regardé.

### L'erreur de départ la plus fréquente

Laisser le demandeur fixer la priorité. Toute demande devient alors urgente, et la file n'est plus priorisée du tout. La priorité doit se déduire d'une matrice, à partir de deux variables objectivables.

## La matrice urgence et impact

| Impact / Urgence | Faible | Moyenne | Forte |
|---|---|---|---|
| Un utilisateur | P4 | P3 | P3 |
| Une équipe | P3 | P2 | P2 |
| Un site ou un service critique | P2 | P1 | P1 |

L'impact mesure le nombre de personnes ou la criticité du service affecté. L'urgence mesure le caractère différable de la demande. La priorité en découle mécaniquement, ce qui retire la discussion du moment de l'ouverture du ticket.

## Deux délais, pas un seul

- Le **délai de prise en charge** court de l'ouverture du ticket à sa qualification par un agent. Il mesure la réactivité du [service desk](/blog/service-desk-help-desk-difference/)
- Le **délai de rétablissement** court jusqu'au retour du service. Il mesure la capacité de l'ensemble de la chaîne de support

Ne suivre que le second empêche de savoir où le temps se perd. Une prise en charge en dix minutes suivie d'une résolution en trois jours ne pose pas le même problème qu'une prise en charge en deux jours.

## Calibrer sur le réel

1. Extraire la médiane des délais constatés par niveau de priorité sur les six derniers mois
2. Fixer l'engagement légèrement au-dessus de cette médiane, pour laisser une marge de tenue
3. Resserrer par paliers, au rythme des gains obtenus sur le taux de résolution au premier niveau

Cette progression par incréments courts correspond à l'un des [principes directeurs d'ITIL 4](/blog/itil-4-principes-directeurs/). Elle suppose un historique de tickets fiable, donc une catégorisation stable, et elle gagne à s'appuyer sur les enseignements de la [gestion des problèmes](/blog/gestion-incidents-gestion-problemes/) pour réduire le volume à la source.

## Les règles de décompte à écrire noir sur blanc

- Suspension du décompte pendant l'attente d'une information du demandeur
- Plages horaires de service explicites, avec traitement des jours non ouvrés
- Définition non ambiguë de la clôture, contournement accepté ou non

## Questions fréquentes

<details>
<summary>Comment définir un SLA de support ?</summary>

Un SLA de support se définit en trois temps : établir une matrice de priorité croisant l'urgence et l'impact, associer à chaque niveau de priorité un délai de prise en charge et un délai de rétablissement, puis calibrer ces délais sur les temps réellement observés et non sur une cible théorique. Un engagement fixé en dessous de la performance actuelle est mécaniquement non tenable, et un engagement trop large ne pilote rien. La règle la plus fiable consiste à partir de la médiane constatée sur les six derniers mois.

</details>

<details>
<summary>Faut-il distinguer délai de prise en charge et délai de résolution ?</summary>

Oui. Le délai de prise en charge mesure la réactivité du service desk, le délai de résolution mesure la capacité de l'ensemble de la chaîne. Les confondre masque l'endroit où le temps se perd.

</details>

<details>
<summary>Que faire des tickets en attente du demandeur ?</summary>

Le décompte du SLA doit être suspendu pendant l'attente d'une information du demandeur, faute de quoi l'indicateur pénalise l'équipe pour un délai qu'elle ne maîtrise pas.

</details>
