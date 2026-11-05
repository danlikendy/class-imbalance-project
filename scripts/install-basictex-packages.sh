#!/usr/bin/env bash
# Доп. пакеты для сборки main.pdf поверх brew install --cask basictex
set -euo pipefail
export PATH="/Library/TeX/texbin:${PATH:-}"

if ! command -v tlmgr >/dev/null; then
  echo "tlmgr не найден. Сначала: brew install --cask basictex"
  echo "Затем: eval \"\$(/usr/libexec/path_helper)\""
  exit 1
fi

sudo tlmgr update --self
sudo tlmgr install \
  collection-langcyrillic \
  collection-latexrecommended \
  collection-fontsrecommended \
  tempora \
  newtx \
  titlesec \
  enumitem \
  tabulary \
  booktabs \
  multirow \
  makecell \
  hhline \
  fancyhdr \
  mathtools \
  bidi \
  collection-latexextra

echo "Готово. Сборка: cd $(dirname "$0")/.. && make && open main.pdf"
