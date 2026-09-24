---
title: "Service desk et help desk : le vocabulaire au clair"
translationKey: "service-desk-vs-help-desk"
date: "2026-08-26"
lastmod: "2026-08-26"
description: "Service desk, help desk, centre de services : trois termes souvent confondus. Ce que chacun recouvre réellement."
categories: ["Service desk et ticketing"]
tags: ["service desk", "help desk", "support", "ITIL", "ticketing"]
author: "thomas-durand"
image: "/images/blog/service-desk-help-desk-difference.webp"
imageAlt: "Comptoir d'accueil dans un hall d'entreprise"
faq:
  - question: "Quelle différence entre un service desk et un help desk ?"
    answer: "Le help desk traite les incidents et les pannes signalés par les utilisateurs : son périmètre est correctif et réactif. Le service desk est un point de contact unique qui couvre en plus les demandes de service, la communication sur les interruptions planifiées et l'interface avec les autres pratiques ITSM. Dans le vocabulaire ITIL, seul le terme service desk est employé, le help desk en étant historiquement une version restreinte au traitement des pannes."
  - question: "Qu'est-ce qu'un point de contact unique ?"
    answer: "Le point de contact unique, ou SPOC, désigne le principe selon lequel toutes les sollicitations des utilisateurs passent par un seul canal d'entrée, quelle que soit l'équipe qui traitera finalement la demande."
  - question: "Combien de niveaux de support faut-il prévoir ?"
    answer: "Trois niveaux constituent le schéma le plus courant : un premier niveau généraliste, un deuxième niveau spécialisé et un troisième niveau assuré par l'éditeur ou l'expert technique."
readingTime: true
---

> **En bref :**
> 1. Le help desk traite les pannes, le service desk traite les pannes et les demandes de service.
> 2. ITIL ne retient que le terme service desk, défini comme point de contact unique entre le fournisseur et les utilisateurs.
> 3. Le schéma à trois niveaux, généraliste puis spécialisé puis éditeur, reste la structure de référence.
> 4. Le taux de résolution au premier niveau dépend directement de la qualité de la base de connaissances mise à disposition.

## Trois termes, trois périmètres

Le **help desk** est né du besoin de centraliser le signalement des pannes informatiques. Son périmètre est correctif : un utilisateur constate un dysfonctionnement, il le signale, une équipe le corrige.

Le **service desk** élargit ce périmètre. Il reçoit aussi les demandes de service, qui ne sont pas des pannes : un nouvel accès, un logiciel supplémentaire, un équipement de remplacement. Il informe également sur les interruptions planifiées et sert d'interface avec les autres pratiques de gestion des services.

Le terme **centre de services** est la traduction française usuelle de service desk. Il ne désigne rien de différent.

### Ce que dit le référentiel

ITIL n'emploie que la notion de service desk et le définit comme le point de contact unique entre le fournisseur de services et ses utilisateurs. La distinction avec le help desk est donc davantage historique que normative, ce qui explique que les deux termes cohabitent encore dans les offres commerciales.

## La distinction incident et demande

| Type | Nature | Exemple | Traitement |
|---|---|---|---|
| Incident | Interruption non planifiée | Impossible de se connecter à la messagerie | Rétablissement au plus vite |
| Demande de service | Requête prévue au catalogue | Ajout d'un second écran | Exécution selon une procédure établie |

Cette séparation conditionne toute la suite. Un incident se mesure en délai de rétablissement, une demande se mesure en délai de livraison, et confondre les deux rend les indicateurs illisibles. La même logique de séparation s'applique entre incidents et problèmes, comme détaillé dans notre article sur la [gestion des incidents et des problèmes](/blog/gestion-incidents-gestion-problemes/).

## Les trois niveaux de support

1. **Niveau 1** : généraliste, qualifie la demande, applique les contournements documentés, oriente
2. **Niveau 2** : spécialisé par domaine, prend en charge ce que le niveau 1 ne peut pas résoudre
3. **Niveau 3** : expertise éditeur ou ingénierie, saisi des cas rares ou des correctifs de fond

Le rendement de ce schéma se joue au premier niveau. Chaque procédure documentée et chaque erreur connue publiée fait remonter le taux de résolution immédiate, ce qui suppose une base de connaissances tenue à jour et réellement consultable par les agents.

## Ce qu'il faut outiller en priorité

- Un canal d'entrée unique, quel que soit le nombre de directions concernées, principe au cœur de l'[Enterprise Service Management](/blog/enterprise-service-management-definition/)
- Une catégorisation des tickets stable dans le temps, sans quoi aucune analyse de tendance n'est possible
- Des engagements de délai explicites, sujet traité dans notre article sur les [SLA de support](/blog/definir-sla-support/)

## Questions fréquentes

<details>
<summary>Quelle différence entre un service desk et un help desk ?</summary>

Le help desk traite les incidents et les pannes signalés par les utilisateurs : son périmètre est correctif et réactif. Le service desk est un point de contact unique qui couvre en plus les demandes de service, la communication sur les interruptions planifiées et l'interface avec les autres pratiques ITSM. Dans le vocabulaire ITIL, seul le terme service desk est employé, le help desk en étant historiquement une version restreinte au traitement des pannes.

</details>

<details>
<summary>Qu'est-ce qu'un point de contact unique ?</summary>

Le point de contact unique, ou SPOC, désigne le principe selon lequel toutes les sollicitations des utilisateurs passent par un seul canal d'entrée, quelle que soit l'équipe qui traitera finalement la demande.

</details>

<details>
<summary>Combien de niveaux de support faut-il prévoir ?</summary>

Trois niveaux constituent le schéma le plus courant : un premier niveau généraliste, un deuxième niveau spécialisé et un troisième niveau assuré par l'éditeur ou l'expert technique.

</details>
