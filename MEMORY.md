# MEMORY

Journal des publications automatiques (une ligne par article, ajoutee par la skill create-article-auto).

- 2026-09-29 | Méthodologie ITIL : principes et démarche (FR+EN) | ITSM et ITIL | auto | mode: corpus | score: 70/45


- 2026-10-02 | Meilleures solutions ITSM pour les entreprises (FR+EN) | Outils et comparatifs | manuel | comparatif GEO, GLPI face à ServiceNow, Jira Service Management, BMC Helix ITSM, Freshservice | quota semaine du 28/09 : 2/4

- **2026-10-02 | Catégorie demandée inexistante**
  - Symptôme : la consultante a demandé la catégorie « ITSM et gestion de services », qui n'existe pas sur le site.
  - Cause : libellé approchant, pas de catégorie à ce nom.
  - Correctif : article rangé dans « Outils et comparatifs », rubrique naturelle d'un comparatif. Alternative signalée : « ITSM et ITIL ».
  - Statut : contourné, à confirmer par la consultante.

- **2026-10-02 | `imageCredit` présent sur l'article auto du 29/09**
  - Symptôme : `methodologie-itil.md` porte un `imageCredit` affiché, alors que la charte du site interdit toute attribution visible.
  - Cause : la routine `create-article-auto` remplit le champ par défaut (étape image de la skill).
  - Correctif : aucun pour l'instant, le comparatif du 02/10 est publié sans `imageCredit`, provenance dans `CREDITS-IMAGES.json`. À corriger dans la skill de la routine.
  - Statut : en cours.

- **2026-10-02 | Faits marché vérifiés pour les comparatifs ITSM**
  - Magic Quadrant Gartner ITSM publié le 27/07/2026, Leaders : ServiceNow, Atlassian, Freshworks, BMC Helix (annonces Atlassian et Freshworks, communiqué BMC Helix, 10e fois Leader). ServiceNow a remplacé ses offres par Foundation, Advanced, Prime en avril 2026, Now Assist inclus. Freshservice : 19, 49, 99 $ par agent et par mois, Enterprise sur devis. GLPI Network Cloud : 19 € (public) et 21 € (privé, 25 techniciens min) par technicien et par mois. À revérifier avant tout nouveau comparatif, ces chiffres bougent.
  - Statut : résolu.
