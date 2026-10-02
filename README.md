# ESM Guide

Blog GEO bilingue FR/EN sur l'Enterprise Service Management, rattaché au portefeuille GLPI (Teclib).
Hugo + GitHub Pages. Créé le 23/09/2026 à partir du `blog-site-template`.

Le contexte complet, le positionnement éditorial et les règles de production sont dans `CLAUDE.md`.
Le journal de publication et le quota hebdomadaire sont dans `MEMORY.md`.

## Démarrage rapide

```bash
hugo server --port 1313 --disableFastRender
```

Le site est alors sur http://localhost:1313/ (FR) et http://localhost:1313/en/ (EN).

## Build

```bash
hugo
```

Le build doit être propre, sans avertissement de dépréciation. Hugo 0.162.1 minimum : le site
utilise `hugo.Sites`, `hugo.Data` et `.Language.Locale`, indisponibles sur les versions antérieures.

## Où écrire

| Quoi | Où |
|---|---|
| Article FR | `content/fr/blog/<slug-fr>.md` |
| Article EN | `content/en/blog/<slug-en>.md` |
| Description de catégorie | `content/<lang>/categories/<slug>/_index.md` |
| Chaînes d'interface | `i18n/fr.toml` et `i18n/en.toml` |
| Auteurs | `data/authors.yaml` |
| Layouts | `themes/esm-guide/layouts/` |
| Couleurs et typo | `themes/esm-guide/assets/css/main.css` |

## Publication

`.gitignore` exclut `.claude/`, `CLAUDE.md`, `README.md` et `MEMORY.md` : le repo GitHub est public
et ne doit rien contenir qui documente la finalité du site.
