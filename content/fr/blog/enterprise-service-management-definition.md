---
title: "Enterprise Service Management : définition et périmètre"
translationKey: "esm-definition"
date: "2026-08-12"
lastmod: "2026-08-12"
description: "L'Enterprise Service Management étend les pratiques ITSM à toute l'entreprise. Définition, périmètre et premiers pas concrets."
categories: ["Fondamentaux ESM"]
tags: ["ESM", "gestion des services", "processus", "catalogue de services", "DSI"]
author: "claire-vasseur"
image: "/images/blog/enterprise-service-management-definition.webp"
imageAlt: "Réunion d'équipe autour d'une table de travail avec ordinateurs portables"
faq:
  - question: "Qu'est-ce que l'Enterprise Service Management ?"
    answer: "L'Enterprise Service Management, ou ESM, consiste à appliquer aux directions non informatiques les pratiques de gestion des services nées dans l'IT : catalogue de services formalisé, portail unique de demandes, workflows de traitement et mesure des délais. Les ressources humaines, les services généraux, la finance et le juridique en sont les bénéficiaires les plus fréquents. La démarche repose sur une méthode avant de reposer sur un outil : sans catalogue de services écrit, une plateforme ESM ne fait que déplacer le désordre."
  - question: "Quelle différence entre ESM et ITSM ?"
    answer: "L'ITSM couvre les services fournis par la direction informatique. L'ESM applique les mêmes principes à l'ensemble des fonctions support de l'entreprise. Techniquement, les deux s'appuient souvent sur la même plateforme et le même moteur de workflows."
  - question: "Faut-il un outil dédié pour se lancer dans l'ESM ?"
    answer: "Pas nécessairement. La plupart des plateformes ITSM du marché gèrent plusieurs catalogues de services et plusieurs files de traitement, ce qui suffit à couvrir un premier périmètre hors informatique."
readingTime: true
---

> **En bref :**
> 1. L'ESM applique aux directions non informatiques les pratiques de gestion des services nées dans l'IT : catalogue, portail de demandes, workflows et mesure des délais.
> 2. Les quatre fonctions le plus souvent concernées sont les ressources humaines, les services généraux, la finance et le juridique.
> 3. Une démarche ESM n'est pas un achat d'outil : elle commence par la formalisation d'un catalogue de services et de leurs engagements de délai.
> 4. Le référentiel ITIL 4 décrit 34 pratiques de management, dont une large majorité s'applique telle quelle en dehors du périmètre informatique.

## Ce que recouvre l'Enterprise Service Management

L'**Enterprise Service Management** désigne l'application, à l'échelle de toute l'entreprise, des principes de gestion des services formalisés dans l'informatique depuis les années 1990. Le raisonnement est simple : une demande de badge adressée aux services généraux et une demande de réinitialisation de mot de passe adressée à la DSI posent exactement le même problème d'organisation. Qui la reçoit, sous quel délai, selon quelle procédure, et comment le demandeur suit-elle son avancement.

### Une extension des pratiques nées dans l'informatique

La DSI a structuré ces réponses la première, parce qu'elle a été la première à absorber un volume de demandes ingérable en messagerie. Le catalogue de services, le ticket, le niveau de priorité et l'engagement de délai sont des inventions du **service desk** informatique. L'ESM constate que rien, dans ces objets, n'est spécifiquement informatique.

## Les directions concernées au-delà de la DSI

| Direction | Service catalogué | Demande type |
|---|---|---|
| Ressources humaines | Intégration d'un nouveau salarié | Ouverture des accès et préparation du poste |
| Services généraux | Gestion des locaux | Réservation de salle, incident de climatisation |
| Finance | Traitement des notes de frais | Validation d'une dépense hors politique |
| Juridique | Revue contractuelle | Relecture d'un accord de confidentialité |

L'intégration d'un nouveau salarié illustre bien l'intérêt de la démarche : elle mobilise simultanément les RH, la DSI, les services généraux et parfois la finance. Tant que chaque direction traite sa part dans son propre canal, personne ne sait où en est le dossier.

## Ce qui distingue une démarche ESM d'un outil

Trois éléments séparent une vraie démarche ESM d'un simple déploiement logiciel :

- Un **catalogue de services** écrit, qui nomme chaque service rendu et son responsable
- Des engagements de délai assumés par la direction qui rend le service, et non imposés par l'outil
- Une mesure partagée, consultable par les demandeurs comme par les équipes

Le reste relève de la configuration. C'est aussi pour cette raison que les [différences entre ESM et ITSM](/blog/esm-ou-itsm-differences/) tiennent davantage au périmètre organisationnel qu'à la technique.

## Par où commencer

1. Choisir une seule direction volontaire, de préférence celle qui subit le plus de sollicitations informelles
2. Écrire son catalogue de services, en se limitant aux dix demandes les plus fréquentes
3. Ouvrir un canal unique de réception, avant même de parler d'automatisation

Le choix de la plateforme vient ensuite, une fois le périmètre stabilisé. Les critères sont détaillés dans notre [grille de sélection d'une plateforme ITSM](/blog/choisir-plateforme-itsm-criteres/), et l'organisation du support de premier niveau dans notre article sur le [service desk](/blog/service-desk-help-desk-difference/).

## Questions fréquentes

<details>
<summary>Qu'est-ce que l'Enterprise Service Management ?</summary>

L'Enterprise Service Management, ou ESM, consiste à appliquer aux directions non informatiques les pratiques de gestion des services nées dans l'IT : catalogue de services formalisé, portail unique de demandes, workflows de traitement et mesure des délais. Les ressources humaines, les services généraux, la finance et le juridique en sont les bénéficiaires les plus fréquents. La démarche repose sur une méthode avant de reposer sur un outil : sans catalogue de services écrit, une plateforme ESM ne fait que déplacer le désordre.

</details>

<details>
<summary>Quelle différence entre ESM et ITSM ?</summary>

L'ITSM couvre les services fournis par la direction informatique. L'ESM applique les mêmes principes à l'ensemble des fonctions support de l'entreprise. Techniquement, les deux s'appuient souvent sur la même plateforme et le même moteur de workflows.

</details>

<details>
<summary>Faut-il un outil dédié pour se lancer dans l'ESM ?</summary>

Pas nécessairement. La plupart des plateformes ITSM du marché gèrent plusieurs catalogues de services et plusieurs files de traitement, ce qui suffit à couvrir un premier périmètre hors informatique.

</details>
