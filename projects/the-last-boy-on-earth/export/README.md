# The Last Boy on Earth — Export Pipeline

`GREENLIGHT_BOOK.md` is the canonical editorial source. This folder turns that one manuscript into reviewable external formats without creating a second editorial source of truth.

## Outputs

Running `bash projects/the-last-boy-on-earth/export/build_exports.sh` produces:

- `The_Last_Boy_on_Earth_Greenlight_Book.docx` — readable Word review manuscript
- `The_Last_Boy_on_Earth_Greenlight_Book.pdf` — printable review PDF when a LaTeX engine is available
- `The_Last_Boy_on_Earth_Greenlight_Book.pptx` — structural PowerPoint first pass, not the final art-directed Tencent deck
- `The_Last_Boy_on_Earth_Greenlight_Book.html` — portable standalone browser preview

Outputs are written to `projects/the-last-boy-on-earth/export/out/` and should be treated as generated files, not editorial authorities.

## Local requirements

- Pandoc
- For PDF only: XeLaTeX, LuaLaTeX or pdfLaTeX

## Automatic GitHub build

`.github/workflows/lboe-export.yml` runs when the canonical Greenlight Book, export files or workflow change. It installs the required tools, builds all four formats, verifies that the outputs are non-empty and uploads them as a GitHub Actions artifact named `The_Last_Boy_on_Earth_Greenlight_Book`.

This means a collaborator can retrieve a current Word/PDF/PowerPoint/HTML package from GitHub Actions without manually copying the manuscript.

## Quality boundary

The DOCX and PDF are review/export formats. The PPTX is only structural scaffolding because the final Tencent deck requires approved imagery, deliberate page composition and final art direction. Generated outputs must never be edited as the new master; editorial changes go back into `GREENLIGHT_BOOK.md` first.

## Current blocker outside export

The visual package still depends on approval of continuity-critical identities and references. Export automation does not change or bypass that approval gate.

© 2026 Napkin Studio. All Rights Reserved.
