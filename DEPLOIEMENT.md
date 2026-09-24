# Déploiement

Site statique [Hugo](https://gohugo.io), bilingue français et anglais.
Hébergé par GitHub Pages, servi depuis la branche `gh-pages`.

## Prérequis

- Hugo **extended 0.162.1 ou plus récent** : `brew install hugo`
- `git`
- [`gh`](https://cli.github.com) authentifié sur le compte propriétaire du dépôt

Vérifier la version, les fonctionnalités utilisées n'existent pas avant 0.158 :

```bash
hugo version
```

## Publier une modification

```bash
./deploy.sh "Description de la modification"
```

Le script construit le site, pousse les sources sur `main` et le résultat sur
`gh-pages`. GitHub Pages sert la nouvelle version en une à deux minutes.

## Brancher le domaine définitif

**1. Chez le registrar**, créer cinq enregistrements et supprimer les
enregistrements A existants sur `@` :

| Type | Nom | Valeur |
|---|---|---|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | esm-guide.com |

**2. Une fois la propagation faite**, une seule commande :

```bash
./connecter-domaine.sh esm-guide.com
```

Elle vérifie le DNS, met à jour le `baseURL`, crée le fichier `CNAME`,
reconstruit, publie et déclare le domaine à GitHub Pages. Elle est idempotente.

**3. Quand le certificat est délivré**, forcer le HTTPS :

```bash
gh api --method PUT repos/analytics-ds/esm-guide/pages -F https_enforced=true
```

## Déploiement automatique, optionnel

Le dépôt ne contient pas de workflow GitHub Actions : le jeton utilisé lors de
la mise en place n'avait pas la portée `workflow`, que GitHub exige pour créer
un fichier dans `.github/workflows/`.

Pour passer à la construction automatique à chaque `git push` :

```bash
gh auth refresh -s workflow
```

puis remettre en place le workflow de référence conservé hors dépôt, dans
`.claude/templates/hugo-workflow.yml`, sous `.github/workflows/hugo.yml`.
`deploy.sh` devient alors inutile, un simple `git push` suffit.

## Structure

| Dossier | Contenu |
|---|---|
| `content/fr/` | contenu français, servi à la racine |
| `content/en/` | contenu anglais, servi sous `/en/` |
| `i18n/` | chaînes d'interface traduites |
| `data/authors.yaml` | fiches auteurs |
| `themes/esm-guide/` | thème : layouts et CSS |
| `static/` | fichiers servis tels quels |

Un article existe toujours en deux exemplaires, français et anglais, reliés par
un même `translationKey` dans leur frontmatter.

## Points d'attention

- Dans le contenu, écrire les liens internes **sans le préfixe de langue** :
  `/blog/mon-article/` et non `/en/blog/mon-article/`. Hugo ajoute lui-même le
  préfixe de langue et le chemin du `baseURL`
- Ne pas écrire de chemin absolu commençant par `/` dans les templates sans le
  passer par `relURL` après avoir retiré la barre de tête, sinon le chemin du
  `baseURL` n'est pas appliqué
- Toujours vérifier que `hugo` se termine sans avertissement avant de publier
