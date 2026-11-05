#!/usr/bin/env bash
set -euo pipefail
export PATH="/Library/TeX/texbin:${PATH:-}"

if ! command -v tlmgr >/dev/null; then
  echo "tlmgr не найден. Сначала: brew install --cask basictex"
  exit 1
fi

sudo tlmgr update --self
sudo tlmgr install \
  collection-langcyrillic \
  hyphen-russian \
  hyph-utf8 \
  collection-latexrecommended \
  collection-fontsrecommended \
  cm-super \
  psnfss \
  titletoc \
  babel-russian \
  enumitem \
  tabulary \
  booktabs \
  multirow \
  makecell \
  hhline \
  fancyhdr \
  mathtools \
  pgf \
  listings \
  wrapfig \
  gensymb \
  float \
  caption

echo "Готово. Сборка: cd $(dirname "$0")/.. && make"
