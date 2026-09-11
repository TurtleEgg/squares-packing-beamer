# Задачи об упаковке — Beamer-проект

Презентация из двух частей:

- **Часть I.** Плотнейшая упаковка равных шаров: постановка, три стадии
  укладки слоёв (A → AB → ABAB/ABCABC), сравнение ГПУ и ГЦК, элементарная
  ячейка ГЦК на примере меди. Все схемы нарисованы в TikZ, внешних
  картинок не требуют.
- **Часть II.** Упаковка n единичных квадратов в наименьший квадрат со
  стороной s: данные Erich Friedman (*Squares in Squares*) для n = 1…20 и
  n = 52…55, с указанием статуса (тривиально / оптимальность доказана /
  лучшая известная конструкция) и автора.

## Сборка

Движок — **LuaLaTeX** (нужен `fontspec` + `polyglossia`).
На Overleaf: `Menu → Compiler → LuaLaTeX`. Файл `latexmkrc` уже задаёт это.
Компилировать дважды, чтобы счётчик `\inserttotalframenumber` в колонтитуле
стал верным.

## Картинки упаковок

В части II на месте иллюстраций стоят пунктирные рамки-плейсхолдеры с
именами файлов. Чтобы подставить настоящие изображения:

1. положите `1.png`, `2.png`, … `20.png`, `52.png`… `55.png` в папку `figs/`;
2. в `main.tex` замените

   ```latex
   \useimagesfalse
   ```

   на

   ```latex
   \useimagestrue
   ```

Размер кадра задаётся первым аргументом `\imgphs{2.7}{17.png}` (сторона в см),
пропорции сохраняются (`keepaspectratio`).

## Шрифты

По умолчанию используется Noto (пакет `noto` из TeX Live). Если он
недоступен, автоматически подставляется CM Unicode — обе гарнитуры
содержат кириллицу.

## Источник данных

Erich Friedman, *Squares in Squares* —
<https://tabatkins.github.io/efmath/packing/squinsqu/>

См. также: Erich Friedman, *Packing Unit Squares in Squares: A Survey and
New Results*, Electronic Journal of Combinatorics, DS7.
