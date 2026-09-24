#!/bin/bash
# Bascule le site du sous-domaine GitHub vers le domaine definitif.
#
#   ./connecter-domaine.sh esm-guide.com
#
# A lancer UNE FOIS, apres avoir cree les enregistrements DNS chez le
# registrar. Le script est idempotent : le relancer ne casse rien.
#
# Prerequis : hugo, git, et gh authentifie sur le compte qui porte le depot.
set -euo pipefail
cd "$(dirname "$0")"

DOMAINE="${1:-}"
DEPOT="https://github.com/analytics-ds/esm-guide.git"
SLUG="analytics-ds/esm-guide"

if [ -z "$DOMAINE" ]; then
  echo "Usage : ./connecter-domaine.sh esm-guide.com" >&2
  exit 1
fi
command -v hugo >/dev/null || { echo "hugo n'est pas installe (brew install hugo)" >&2; exit 1; }

echo "=== 1/6  Verification DNS de $DOMAINE"
IPS=$(dig +short "$DOMAINE" A | sort | tr '\n' ' ')
echo "    enregistrements A : ${IPS:-aucun}"
if ! echo "$IPS" | grep -q "185.199"; then
  echo
  echo "    ATTENTION : le domaine ne pointe pas sur GitHub Pages."
  echo "    Enregistrements A attendus chez le registrar :"
  echo "      185.199.108.153  185.199.109.153  185.199.110.153  185.199.111.153"
  echo
  read -r -p "    Continuer quand meme ? [o/N] " REP
  [ "$REP" = "o" ] || [ "$REP" = "O" ] || { echo "    Interrompu."; exit 1; }
fi

echo "=== 2/6  baseURL dans hugo.toml"
python3 - "$DOMAINE" <<'PY'
import sys, re, pathlib
d = sys.argv[1]
p = pathlib.Path('hugo.toml'); s = p.read_text(encoding='utf-8')
s = re.sub(r'(?m)^# Provisoire.*\n(?:^#.*\n)*', '', s)
s = re.sub(r'(?m)^baseURL = "[^"]*"', f'baseURL = "https://{d}/"', s)
p.write_text(s, encoding='utf-8')
print(f'    baseURL = https://{d}/')
PY

echo "=== 3/6  Fichier CNAME"
echo "$DOMAINE" > static/CNAME
echo "    static/CNAME = $DOMAINE"

echo "=== 4/6  Construction"
rm -rf public
hugo --gc --minify | tail -3

echo "=== 5/6  Publication"
git add -A
git diff --cached --quiet || git commit -q -m "Bascule le site sur le domaine $DOMAINE"
git push -q origin main
( cd public && rm -rf .git && git init -q -b gh-pages \
  && git config user.name "analytics-ds" \
  && git config user.email "analytics-ds@users.noreply.github.com" \
  && git add -A && git commit -q -m "Bascule sur $DOMAINE" \
  && git push -q --force "$DEPOT" gh-pages )
echo "    sources sur main, site sur gh-pages"

echo "=== 6/6  Declaration du domaine a GitHub Pages"
gh api --method PUT "repos/$SLUG/pages" -f cname="$DOMAINE" \
  -F "source[branch]=gh-pages" -F "source[path]=/" >/dev/null 2>&1 \
  && echo "    domaine declare" || echo "    (le fichier CNAME suffit, GitHub le detectera)"

echo
echo "Termine. Comptez une a deux minutes."
echo "  https://$DOMAINE/"
echo
echo "Le certificat HTTPS est delivre automatiquement une fois le DNS resolu."
echo "Pour forcer le HTTPS ensuite :"
echo "  gh api --method PUT repos/$SLUG/pages -F https_enforced=true"
