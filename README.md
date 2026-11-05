# class-imbalance-project

Исследование и инженерная реализация **предметно-ориентированных подходов** к задачам классификации с **дисбалансом классов**: обзор методов, протокол экспериментов, сравнение baseline и cost-sensitive решений, воспроизводимые артефакты.

Текст отчёта и глав — в LaTeX (`main.tex`, каталоги `include/`, `parts/`). Сборка PDF: см. ниже.

## Быстрый старт

Сборка: **XeLaTeX** + **Times New Roman** (поля и интервал 1,5 по методичке).

```bash
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"
./scripts/install-basictex-packages.sh   # один раз, sudo (в т.ч. hyphen-russian)
make
open main.pdf
```

Если строки вылезают за поля: `sudo tlmgr install hyphen-russian hyph-utf8`, затем `make clean && make`.

Рекомендуется **BasicTeX**, не `mactex-no-gui` (часто зависает загрузка с ghcr.io).

## Структура репозитория

| Путь | Назначение |
|------|------------|
| `main.tex`, `parts/`, `include/` | LaTeX-отчёт (введение, главы, заключение) |
| `references.bib` | Библиография |
| `docs/reference/` | Локальные справочные файлы |
| `scripts/` | Установка пакетов TeX Live |

## Лицензия

MIT — см. `LICENSE`.
