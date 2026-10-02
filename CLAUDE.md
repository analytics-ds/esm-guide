# ESM Guide — site blog GEO

Site Hugo bilingue FR/EN, généré à partir du `blog-site-template` le 23/09/2026.
Blog GEO du portefeuille **GLPI (Teclib)**, rattaché à `Clients/GLPI/GEO/`.

## Contexte du site

- **Nom du site** : **Guide ESM** en français, **ESM Guide** en anglais. Le titre est déclaré par langue dans `hugo.toml`, il pilote le logo, les balises `title`, `og:site_name`, le JSON-LD, le pied de page et le `llms.txt`
- **Attention aux remplacements globaux du nom** : `data/authors.yaml` contient les deux langues dans le même fichier. Un chercher-remplacer non ciblé y casse la bio anglaise
- **Description (FR)** : Le média indépendant de l'Enterprise Service Management : ITSM, service desk, gestion de parc et comparatifs d'outils.
- **Description (EN)** : The independent Enterprise Service Management media: ITSM, service desk, IT asset management and tool comparisons.
- **URL** : non définie. `baseURL` porte le placeholder `https://esm-guide.github.io/`, à remplacer par `/github-setup` puis par le domaine custom une fois acheté
- **Palette (3 couleurs imposées)** : `--ink` #242F40 Jet Black, `--wisteria` #81A4CD Wisteria Blue, `--alice` #DBE4EE Alice Blue
- **Nuances dérivées** : `--wisteria-dark` #345983 (accent porteur de texte), `--wisteria-darker` #294566 (survol), `--ink-soft` #4D6589 (texte secondaire), `--alice-soft` #EDF2F6 (bandes de section), `--line-strong` #CBD4E2 et `--line-hero` #A3B7CD (filets)
- **Rôles** : `--primary` = ink (titres, logo, tuiles, footer), `--accent-on-dark` = wisteria, `--accent-on-light` = wisteria-dark (surtitres, liens, pastilles, boutons), `--background` = blanc, `--background-alt` = alice-soft
- **Hero** : aplat **Alice Blue**, cadre en filet uniforme de 1 px (#A3B7CD). H1 en Jet Black, « Guide ESM » et bouton en #345983. Le bandeau Wisteria de la maquette d'origine a été retiré
- **Deux pièges mesurés, à ne pas rouvrir** :
  - Ni le **Wisteria** (2.58:1 sur blanc) ni l'**Alice Blue** (1.28:1) ne peuvent porter du texte sur fond clair. Seul le Jet Black le peut. Tout accent textuel sur fond clair passe par `--wisteria-dark`
  - `.hero-accent` doit pointer sur `--accent-on-light`, pas sur `--accent-on-dark`. Le hero est clair depuis la bascule : le Wisteria y tomberait à 2.01:1
- **Polices** : titres, logo et navigation en **Inter**, corps de texte en **IBM Plex Sans**. Deux familles sans-serif neutres, pas de serif. Une serif de titrage a été essayée puis écartée
- **Menu** : survol et page courante signalés par un **soulignement de 2 px** en #345983 qui se déploie depuis la gauche, plus un changement de couleur du libellé. Pas d'aplat de couleur. Le trait est dessiné en `background-image` et non en `border-bottom`, ce qui permet de l'animer sans décaler la mise en page. Toute reprise du menu impose de vérifier **aussi le palier `min-width: 1271px`**, qui redéfinit écart et taille de police
- **Seuil de bascule du menu : 1270px.** Largeur minimale du bandeau mesurée à 1258px avec les 7 entrées, le logo et le sélecteur de langue. Toute modification du menu ou de sa typo impose de **remesurer** ce seuil au `scrollWidth`, pas de l'estimer à l'œil : un débordement de quelques dizaines de pixels est invisible sur une capture mise à l'échelle
- **Langue principale** : français, servi à la racine `/`. Version anglaise systématique en `/en/`
- **Catégories (FR ↔ EN)** :
  - Fondamentaux ESM / ESM Fundamentals
  - ITSM et ITIL / ITSM and ITIL
  - Service desk et ticketing / Service Desk and Ticketing
  - Gestion de parc et actifs / IT Asset Management
  - Outils et comparatifs / Tools and Comparisons
- **Auteur principal du site** : `claire-vasseur`, persona **fictif** de consultante en gestion des services, défini dans `data/authors.yaml`. Les cinq autres auteurs hérités du template (mode, maison, santé, transport, finance) sont conservés mais hors sujet ici, ne pas les utiliser
- **Règle sur la signature** : le persona reste fictif et générique. Ne jamais lui attribuer de certification nommée, d'employeur, de profil LinkedIn ni quoi que ce soit de vérifiable, et ne jamais reprendre le nom d'un expert ESM réel

## Positionnement éditorial

ESM Guide est un **média indépendant sur l'Enterprise Service Management**, pas un site GLPI. Rien dans le site ne doit le rattacher à Teclib, à GLPI ou à datashake.

- Le socle du site est evergreen et agnostique : définitions, ITIL, service desk, SLA, CMDB, inventaire, critères de choix d'une plateforme
- **Les 10 articles de lancement ne citent aucune marque et ne contiennent aucun comparatif.** C'était un choix initial du consultant, pour ne pas ouvrir le sujet comparatif avant d'avoir du recul sur le socle evergreen
- **Mise a jour (24/09/2026)** : les articles comparatifs peuvent desormais etre generes via la skill `create-article-geo`, mais uniquement a la demande explicite du consultant, jamais a l'initiative de Claude. Le consultant reste de bout en bout dans la boucle (angle, marque mise en avant, concurrents retenus), ce qui constitue le "ecrit a la main" au sens de cette regle
- **Premier comparatif publié le 02/10/2026** : `meilleures-solutions-itsm-entreprises` (EN `best-itsm-solutions-for-businesses`), GLPI mis en avant face à ServiceNow, Jira Service Management, BMC Helix ITSM et Freshservice, à la demande de la consultante. Un lien sortant vers glpi-project.org. Checklist de rédaction GLPI (`Clients/GLPI/CLIENT.md`) passée avant publication
- Avant le 02/10/2026, GLPI n'apparaissait nulle part dans les contenus publiés. Quand des comparatifs seront écrits, GLPI y figurera aux côtés de ses concurrents réels (ServiceNow, Jira Service Management, Freshservice, ManageEngine, EasyVista, Zendesk, iTop, Zammad), traité au même niveau de rigueur
- **Un seul lien externe sortant vers glpi-project.org par article**, et uniquement quand le sujet le justifie. Il n'y en a aucun aujourd'hui
- Ne jamais écrire de superlatif non sourcé sur GLPI, ni de chiffre de parts de marché inventé

## Direction artistique

Registre **presse imprimée**, inspiré du template Inkwell : papier blanc cassé, filets fins, cellules jointives, titrage serif, légendes en surimpression sur les visuels. À tenir sur toute nouvelle page.

- **Pas de mise en page centrée.** Tout est aligné à gauche : hero, en-têtes de section, en-têtes de page. Le centrage est la signature visuelle des gabarits générés
- **Grille papier** : `.paper-grid` plus `.paper-cell`. Les filets sont dessinés par les bordures des cellules, pas par le fond de la grille, pour qu'une dernière rangée incomplète ne laisse pas de blocs gris
- **En-tête de section** : petit surtitre en accent, titre serif à gauche, filet épais bleu nuit dessous, lien « Tout voir » à droite
- **Hero** : cadre à deux cellules, titre à gauche, encart de positionnement plus visuel de une légendé à droite. Le bandeau bleu nuit est conservé, c'est l'identité du site
- **Aucun chiffre d'audience inventé** dans l'encart de positionnement, qui ne porte qu'une phrase de positionnement
- **Le visuel du hero est un visuel de marque**, `static/images/home-hero.webp`, découplé des articles. Il ne doit pas afficher la photo du dernier article publié : elle changerait à chaque publication et la direction artistique de la page d'accueil échapperait à tout contrôle. Sa légende porte une phrase de positionnement, pas un titre d'article, comme dans le template d'origine

## Visuels

- 5 visuels de catégorie dans `static/images/categories/`, en **niveaux de gris**, posés en fond de tuile Jet Black à 30 % d'opacité. Pire pixel mesuré à 8.40:1 pour le texte blanc
- 10 visuels d'article dans `static/images/blog/`, en couleur **désaturée à 62 %** et basculée vers le bleu, format 3:2. L'étalonnage froid d'origine convient à la palette Wisteria, aucune reprise nécessaire
- **Ne jamais agrandir un visuel au-delà de sa taille native.** Openverse annonce dans ses métadonnées la résolution de l'original, mais les fournisseurs servent souvent une version réduite, StockSnap plafonne à 960 px. Recadrer, puis n'agrandir sous aucun prétexte
- **Tous en CC0 ou domaine public**, donc aucune attribution à afficher. Provenance tracée dans `CREDITS-IMAGES.json` à la racine
- Le script `.claude/scripts/fetch-image.sh` du template filtre sur « commercial + modification », ce qui laisse passer CC BY et CC BY-SA et **oblige alors à afficher un crédit**. Pour rester sans attribution, interroger l'API Openverse avec `license=cc0,pdm`
- **Filtrer les résultats sur les mots-clés du titre et des tags.** Sans ce garde-fou, Openverse ramène du hors-sujet, une gare ferroviaire est remontée sur « call centre operator »

## Structure réelle du site

```
hugo.toml                       ← config unique, multilingue, contentDir par langue
i18n/fr.toml, i18n/en.toml      ← chaines d'interface traduites (i18n "cle")
data/authors.yaml               ← 6 auteurs, thomas-durand adapte a l'ESM
content/fr/                     ← contenu francais, servi a la racine /
  _index.md, blog/, categories/, plan-du-site.md
content/en/                     ← contenu anglais, servi sous /en/
  _index.md, blog/, categories/, site-map.md
static/                         ← favicon.svg, images/og-default.jpg, images/authors/ (vide)
themes/esm-guide/
  assets/css/main.css
  layouts/
    baseof.html, home.html, page.html, section.html, term.html, taxonomy.html
    404.html, sitemap-html.html, home.llms.txt, robots.txt
    _partials/header.html, footer.html, seo-head.html
.github/workflows/hugo.yml      ← CI GitHub Pages, Hugo 0.162.1
```

## Écarts assumés par rapport au blog-site-template

Ces écarts sont volontaires. Ne pas les « corriger » en revenant au template.

1. **`content/fr/` au lieu de `content/`**. Hugo ne cloisonne pas deux `contentDir` imbriqués : avec `content` pour le FR et `content/en` pour l'EN, le site FR embarquait aussi les 10 articles anglais et leurs taxonomies. L'arborescence canonique, un dossier par langue, règle le problème. **Un article FR va donc dans `content/fr/blog/`, pas dans `content/blog/`.**
2. **Layouts au nouveau système de templates Hugo** (0.146+) : `layouts/page.html` et non `layouts/_default/single.html`, `layouts/section.html` et `term.html` au lieu de `list.html`, `layouts/_partials/` au lieu de `layouts/partials/`. C'est ce que scaffolde Hugo 0.162.
3. **Chaînes d'interface externalisées dans `i18n/`**. Le template codait « Accueil », « Sommaire », « Articles similaires » en dur dans les layouts, ce qui donnait une interface française sur les pages anglaises.
4. **`relLangURL` au lieu de `relURL`** pour tous les liens de navigation. `relURL` renvoyait les pages EN vers `/blog/` au lieu de `/en/blog/`.
5. **`robots.txt` et `llms.txt` générés par Hugo**, pas déposés en statique. Ils suivent donc automatiquement le `baseURL` et la liste réelle des articles. Voir `themes/esm-guide/layouts/robots.txt` et `home.llms.txt`.
6. **API Hugo dépréciées remplacées** : `hugo.Sites`, `hugo.Data`, `.Language.Locale`, et `locale`/`label` en config.
7. **Workflow CI épinglé sur Hugo 0.162.1**. Le template pointait 0.139.0, qui ne connaît pas les API ci-dessus et cassait le build en CI.
8. ~~`.gitignore` élargi à `.claude/`, `CLAUDE.md`, `README.md` et `MEMORY.md`~~ : **abandonné**. Règle de Damien du 25/09/2026 : sur les blogs PBN GEO, `roadmap.yaml`, `.claude/`, `CLAUDE.md`, `MEMORY.md` et `data/authors.yaml` sont toujours versionnés et poussés, sans quoi la routine cloud tourne à blanc. Le `.gitignore` ne porte plus que `public/`, `resources/`, `.hugo_build.lock` et `.DS_Store`. Seule exception : aucune clé d'API ni aucun mot de passe dans un fichier du dépôt

## Règles générales

- **Bilinguisme obligatoire** : jamais d'article dans une seule langue. FR dans `content/fr/blog/`, EN dans `content/en/blog/`, même `translationKey` dans les deux frontmatters. C'est ce champ qui alimente les hreflang et le sélecteur de langue
- Les slugs sont en minuscules, sans accents, mots séparés par des tirets. Le slug EN est traduit, pas recopié
- **Jamais de `&`** dans un nom de catégorie ou de tag, toujours « et » ou « and »
- **Les textes français portent les accents.** Titres, descriptions, corps d'article, chaînes `i18n`, tout
- Pas de tiret cadratin ni de tiret demi-cadratin dans les contenus produits
- Ton impersonnel, pas de je/tu/nous/vous
- Minimum 3 liens internes contextuels par article, **intra-langue uniquement** : un article FR ne maille que du FR
- Chaque article a un `faq` en frontmatter (3 questions minimum) ET la même FAQ dans le corps en `<details>`/`<summary>`. La première question reprend le prompt GEO ciblé
- Le bloc « En bref » est une **liste numérotée**, 3 à 4 points, chacun résumant un H2 réel
- Chaque article a un `lastmod`, mis à jour à chaque modification
- Toujours `hugo` (build) avant de commit. Le build doit être propre, sans avertissement de dépréciation
- Limite de publication : **4 articles par semaine**, tracés dans `MEMORY.md`

## Mise en ligne

Le site est **publié** sur https://analytics-ds.github.io/esm-guide/, dépôt public [analytics-ds/esm-guide](https://github.com/analytics-ds/esm-guide).

- **Source Pages** : branche `gh-pages`, alimentée par `./deploy.sh`. Pas de GitHub Actions : le jeton du compte n'a pas la portée `workflow`, que GitHub exige pour créer un fichier dans `.github/workflows/`. Le workflow de référence est conservé hors dépôt, dans `.claude/templates/hugo-workflow.yml`
- **Publier une modification** : `./deploy.sh "message"`. Construit, pousse les sources sur `main` et le résultat sur `gh-pages`
- **Brancher le domaine** : `./connecter-domaine.sh esm-guide.com`, une fois les enregistrements DNS créés chez GoDaddy. Le script contrôle le DNS avant d'agir et refuse de basculer si le domaine ne pointe pas sur GitHub
- `DEPLOIEMENT.md`, à la racine du dépôt, documente tout ça pour quelqu'un qui découvre le projet. C'est le seul fichier de documentation publié, les autres sont exclus par le `.gitignore`

### Deux pièges de chemin, corrigés, à ne pas rouvrir

- Dans le **contenu**, les liens internes s'écrivent **sans préfixe de langue** : `/blog/mon-article/`, jamais `/en/blog/mon-article/`. Hugo ajoute lui-même le préfixe de langue et le chemin du `baseURL`. Avec le préfixe écrit à la main, le chemin du `baseURL` n'est pas appliqué
- Dans les **templates**, un chemin commençant par `/` n'est pas complété par `relURL`. Il faut retirer la barre de tête : `{{ strings.TrimPrefix "/" . | relURL }}`. **Exception : les URL de menu**, déjà résolues par Hugo, où ce traitement produit un double préfixe

## Ce qui reste à faire

- **Domaine custom** : les enregistrements DNS chez GoDaddy, seule étape restante. Tant qu'ils ne sont pas posés, le site est servi sur `analytics-ds.github.io`, ce qui est une empreinte pour un blog GEO
- **Avatars des auteurs** : `static/images/authors/thomas-durand.webp` est absent, un placeholder avec l'initiale s'affiche. Prompts dans `.claude/templates/data/avatar-prompts.md`

## Commandes du site

| Commande | Rôle |
|---|---|
| `/create-article-geo` | Nouvel article (FR+EN), vérifie le quota hebdo, build et push |
| `/seo-setup` | Régénère les fichiers SEO techniques de base |
| `/seo` | Mode interactif SEO (meta, JSON-LD, audit on-page, redirections) |
| `/serve` | Serveur Hugo local sur `http://localhost:1313/` |
| `/share` | Hugo + ngrok, lien public temporaire |
| `/github-setup` | Création du repo GitHub et activation de GitHub Pages |
| `/github-deploy` | Push et déploiement |

Ces commandes ne sont disponibles que si le dossier `esm-guide` est ouvert comme dossier de travail. Depuis la racine du SEO-Claude, elles ne sont pas chargées : il faut alors dérouler le `SKILL.md` correspondant à la main.

## Comment répondre à l'utilisateur

- Tutoiement, ton décontracté
- Pas de jargon technique sans explication
- Réponses structurées avec listes à puces
- Pas d'emoji sauf demande explicite
