# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

LaTeX resume/CV using the "YAAC: Another Awesome CV" template (`yaac-another-awesome-cv.cls`). Compiled with **LuaLaTeX** (not pdflatex or xelatex). Primarily edited and compiled on [Overleaf](https://www.overleaf.com/).

## Build

Compile locally with: `lualatex GregGrahamCV/cv.tex`

Requires: `fontspec`, `fontawesome`, `babel`, `tcolorbox`, `tikz`, and other standard LaTeX packages. Uses local fonts from `GregGrahamCV/fonts/` (Source Sans Pro family, `.otf` files).

## Architecture

- **`GregGrahamCV/cv.tex`** — Main document. Sets name, tagline, contact info, and `\input`s section files. Uses `localFont,alternative` class options.
- **`GregGrahamCV/yaac-another-awesome-cv.cls`** — Class file defining all layout, styling, custom commands (`\experience`, `\cvtag`, `\sectionTitle`, etc.), and environments (`experiences`, `skills`, `keywords`, `scholarship`).
- **Section files** — Each `section_*.tex` is an independent section:
  - `section_headline.tex` — Summary/headline
  - `section_competences.tex` — Skills/competencies
  - `section_work_experience.tex` — Work experience (active)
  - `section_scolarite.tex` — Education
  - `section_experience_short.tex`, `section_langues.tex`, `section_projets.tex`, `section_references.tex` — Currently commented out in `cv.tex`
- **`GregGrahamCV.pdf`** — Pre-compiled output at repo root

## Key Conventions

- The `\experience` macro takes 7 args: `{end date}{title}{company}{location}{start date}{description}{tags}`
- Tags are rendered via `\cvtag{}` and listed comma-separated in the last argument
- The footer date uses `\resumeDate[-17]` (via `advdate` package) to set a date 17 days before compile date
