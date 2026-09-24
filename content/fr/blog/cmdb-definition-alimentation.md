---
title: "CMDB : à quoi elle sert et comment l'alimenter"
translationKey: "cmdb"
date: "2026-09-02"
lastmod: "2026-09-02"
description: "Une CMDB n'a de valeur que si elle est à jour. Ce qu'elle doit contenir et comment l'alimenter sans la laisser dériver."
categories: ["Gestion de parc et actifs"]
tags: ["CMDB", "ITAM", "gestion de parc", "inventaire informatique", "ITIL"]
author: "claire-vasseur"
image: "/images/blog/cmdb-definition-alimentation.webp"
imageAlt: "Câbles réseau RJ45 enroulés sur fond clair"
faq:
  - question: "Qu'est-ce qu'une CMDB et à quoi sert-elle ?"
    answer: "Une CMDB, ou base de données de gestion des configurations, recense les éléments de configuration d'un système d'information et surtout les relations qui les lient : quel serveur porte quelle application, quelle application sert quel service métier. Elle sert principalement à évaluer l'impact d'un incident ou d'un changement avant d'agir. Sa valeur tient entièrement à sa fraîcheur : une CMDB alimentée à la main dérive en quelques mois et devient plus dangereuse qu'utile, puisque les décisions s'appuient alors sur une cartographie fausse."
  - question: "Quelle différence entre un inventaire et une CMDB ?"
    answer: "Un inventaire liste des biens et leurs caractéristiques. Une CMDB ajoute les relations de dépendance entre ces éléments, ce qui permet de répondre aux questions d'impact."
  - question: "Faut-il tout mettre dans la CMDB ?"
    answer: "Non. Le périmètre doit se limiter aux éléments dont une panne ou une modification affecte un service. Une CMDB exhaustive est ingérable et se périme plus vite qu'elle ne se remplit."
readingTime: true
---

> **En bref :**
> 1. La CMDB recense les éléments de configuration et, surtout, les relations de dépendance qui les lient.
> 2. Son usage principal est l'analyse d'impact avant un changement ou pendant un incident majeur.
> 3. Un inventaire liste des biens, une CMDB ajoute les dépendances : ce sont deux objets différents.
> 4. Une alimentation manuelle dérive systématiquement : la collecte automatisée est la seule option tenable dans la durée.

## Ce qu'une CMDB contient vraiment

Une **CMDB**, pour Configuration Management Database, recense les éléments de configuration d'un système d'information : serveurs, postes, applications, services, contrats. Mais la liste n'est pas l'essentiel. Ce qui distingue une CMDB d'un tableur, ce sont les **relations** entre ces éléments : quel serveur héberge quelle base, quelle base alimente quelle application, quelle application rend quel service métier.

### La question à laquelle elle doit répondre

« Si j'arrête ce serveur ce soir, qui s'en aperçoit demain matin. » Une CMDB qui ne permet pas de répondre à cette question n'a pas d'utilité opérationnelle, quel que soit le nombre de lignes qu'elle contient.

## Inventaire et CMDB ne sont pas la même chose

| Objet | Contenu | Question traitée |
|---|---|---|
| Inventaire | Biens, caractéristiques techniques, localisation, propriétaire | Qu'est-ce que je possède et où |
| CMDB | Éléments de configuration et leurs dépendances | Qu'est-ce qui casse si je touche à ceci |
| Gestion des actifs | Cycle de vie financier, contrats, licences, amortissement | Combien cela coûte et jusqu'à quand |

Les trois se recouvrent partiellement et vivent souvent dans le même outil, ce qui entretient la confusion. Le point de départ pratique reste l'inventaire, alimenté par la collecte décrite dans notre article sur l'[inventaire informatique automatisé](/blog/inventaire-informatique-automatise/).

## Pourquoi les CMDB dérivent

- Le périmètre initial est trop large, et personne ne tient la mise à jour
- Les relations sont saisies une fois puis jamais revues
- Aucun processus de changement ne conditionne la mise à jour de la base
- L'outil ne distingue pas la donnée découverte automatiquement de la donnée saisie à la main

Ce dernier point est décisif. Sans marquage de la source, une correction manuelle est écrasée à la collecte suivante, ou au contraire bloque définitivement la découverte automatique.

## Une méthode d'alimentation tenable

1. **Limiter le périmètre** aux services critiques et à ce qui les porte, quitte à couvrir moins de la moitié du parc
2. **Automatiser la découverte** des éléments techniques, et réserver la saisie manuelle aux relations métier
3. **Brancher la mise à jour sur la gestion des changements**, pour qu'aucune modification validée ne laisse la base en retard

Le troisième point suppose une pratique de gestion des changements existante, donc un socle ITSM déjà en place. C'est également ce qui permet d'exploiter la CMDB dans la [gestion des problèmes](/blog/gestion-incidents-gestion-problemes/), où l'analyse de cause racine s'appuie sur les dépendances pour remonter du symptôme à l'origine.

## Questions fréquentes

<details>
<summary>Qu'est-ce qu'une CMDB et à quoi sert-elle ?</summary>

Une CMDB, ou base de données de gestion des configurations, recense les éléments de configuration d'un système d'information et surtout les relations qui les lient : quel serveur porte quelle application, quelle application sert quel service métier. Elle sert principalement à évaluer l'impact d'un incident ou d'un changement avant d'agir. Sa valeur tient entièrement à sa fraîcheur : une CMDB alimentée à la main dérive en quelques mois et devient plus dangereuse qu'utile, puisque les décisions s'appuient alors sur une cartographie fausse.

</details>

<details>
<summary>Quelle différence entre un inventaire et une CMDB ?</summary>

Un inventaire liste des biens et leurs caractéristiques. Une CMDB ajoute les relations de dépendance entre ces éléments, ce qui permet de répondre aux questions d'impact.

</details>

<details>
<summary>Faut-il tout mettre dans la CMDB ?</summary>

Non. Le périmètre doit se limiter aux éléments dont une panne ou une modification affecte un service. Une CMDB exhaustive est ingérable et se périme plus vite qu'elle ne se remplit.

</details>
