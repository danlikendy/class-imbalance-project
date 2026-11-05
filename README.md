# ВКР: дисбаланс классов (Альфа-Банк)

Магистерская выпускная квалификационная работа Цыганцова Артёма Сергеевича (МО26-1м, ОП «Инженер машинного обучения»).

**Тема:** Разработка предметно-ориентированных подходов к задачам с дисбалансом классов.

**Оформление:** LaTeX, параметры по методичке кафедры ИИ (14 pt, интервал 1,5, поля ГОСТ).

## Сборка PDF (macOS, BasicTeX)

Не используй `mactex-no-gui` через brew, если зависают bottle с `ghcr.io` (часто `glib`). Достаточно BasicTeX (~140 MB):

```bash
brew install --cask basictex
```

Дождись строки `🍺  basictex was successfully installed!` (после `Password:` символы **не отображаются** — это нормально, введи пароль и Enter, не Ctrl+C).

**Команды по одной строке**, не вставляй блок с `make` сразу:

```bash
eval "$(/usr/libexec/path_helper)"
cd ~/class-imbalance-project
./scripts/install-basictex-packages.sh
make
open main.pdf
```

Если `pdflatex: command not found` — снова выполни `eval "$(/usr/libexec/path_helper)"` или перезапусти терминал.

## Структура

| Файл | Назначение |
|------|------------|
| `main.tex` | Сборка документа |
| `include/title-page.tex` | Титульный лист |
| `parts/Chapter0.tex` | Введение |
| `parts/Chapter1.tex` — `Chapter3.tex` | Главы 1–3 (заголовки параграфов) |
| `parts/Conclusion.tex` | Заключение |
| `references.bib` | Список источников |
| `docs/reference/` | Заявление и методичка |

Научный руководитель: Коротеев М.В., к.э.н., доцент.
