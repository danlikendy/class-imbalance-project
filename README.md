# class-imbalance-project

Исследование и инженерная реализация **предметно-ориентированных подходов** к задачам классификации с **дисбалансом классов**: обзор методов, протокол экспериментов, сравнение baseline и cost-sensitive решений, воспроизводимые артефакты.

Текст отчёта и глав — в LaTeX (`main.tex`, каталоги `include/`, `parts/`). Сборка PDF: см. ниже.

## Быстрый старт

```bash
brew install --cask basictex
eval "$(/usr/libexec/path_helper)"
./scripts/install-basictex-packages.sh   # один раз, sudo
make
open main.pdf
```

Рекомендуется **BasicTeX**, не `mactex-no-gui` (часто зависает загрузка зависимостей с ghcr.io).

## Структура репозитория

| Путь | Назначение |
|------|------------|
| `main.tex`, `parts/`, `include/` | LaTeX-отчёт (введение, главы, заключение) |
| `references.bib` | Библиография |
| `docs/reference/` | Локальные справочные файлы |
| `scripts/` | Установка пакетов TeX Live |

## Лицензия

MIT — см. `LICENSE`.
