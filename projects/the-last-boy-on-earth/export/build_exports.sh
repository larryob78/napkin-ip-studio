#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../../.." && pwd)"
PROJECT="$ROOT/projects/the-last-boy-on-earth"
SOURCE="$PROJECT/GREENLIGHT_BOOK.md"
OUT="$PROJECT/export/out"

if ! command -v pandoc >/dev/null 2>&1; then
  echo "pandoc is required. Install it first: https://pandoc.org/installing.html" >&2
  exit 1
fi

if [[ ! -f "$SOURCE" ]]; then
  echo "Canonical manuscript not found: $SOURCE" >&2
  exit 1
fi

mkdir -p "$OUT"
rm -f "$OUT"/The_Last_Boy_on_Earth_Greenlight_Book.{docx,pdf,pptx,html}

COMMON=(
  --from=gfm
  --metadata title="The Last Boy on Earth"
  --metadata subtitle="Greenlight Book"
  --metadata author="Napkin Studio"
)

# Word: readable review manuscript from the canonical source.
pandoc "$SOURCE" "${COMMON[@]}" \
  --toc \
  --output "$OUT/The_Last_Boy_on_Earth_Greenlight_Book.docx"

# Website/preview: standalone HTML with embedded CSS.
pandoc "$SOURCE" "${COMMON[@]}" \
  --standalone \
  --toc \
  --css "$PROJECT/export/greenlight.css" \
  --output "$OUT/The_Last_Boy_on_Earth_Greenlight_Book.html"

# PowerPoint: structural first pass only. Final Tencent deck should be art-directed.
pandoc "$SOURCE" "${COMMON[@]}" \
  --slide-level=2 \
  --output "$OUT/The_Last_Boy_on_Earth_Greenlight_Book.pptx"

# PDF: generated when a supported PDF engine is installed.
PDF_ENGINE=""
for engine in xelatex lualatex pdflatex; do
  if command -v "$engine" >/dev/null 2>&1; then
    PDF_ENGINE="$engine"
    break
  fi
done

if [[ -n "$PDF_ENGINE" ]]; then
  pandoc "$SOURCE" "${COMMON[@]}" \
    --toc \
    --pdf-engine="$PDF_ENGINE" \
    -V geometry:margin=18mm \
    --output "$OUT/The_Last_Boy_on_Earth_Greenlight_Book.pdf"
else
  echo "PDF skipped: install xelatex, lualatex or pdflatex. DOCX/PPTX/HTML were still exported." >&2
fi

cat <<EOF
Exports built from canonical source:
  $SOURCE

Output folder:
  $OUT
EOF
