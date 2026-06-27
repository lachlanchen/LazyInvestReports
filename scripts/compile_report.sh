#!/usr/bin/env bash
set -Eeuo pipefail

if [[ $# -ne 2 ]]; then
  echo "Usage: scripts/compile_report.sh <input.tex> <output.pdf>" >&2
  exit 2
fi

INPUT_TEX="$1"
OUTPUT_PDF="$2"
[[ -s "$INPUT_TEX" ]] || {
  echo "TeX input missing or empty: $INPUT_TEX" >&2
  exit 2
}

mkdir -p "$(dirname "$OUTPUT_PDF")"
WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

INPUT_ABS="$(realpath "$INPUT_TEX")"
OUTPUT_ABS="$(realpath -m "$OUTPUT_PDF")"
ENGINE=""

if command -v latexmk >/dev/null 2>&1; then
  ENGINE="latexmk"
  latexmk -xelatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -outdir="$WORK_DIR" "$INPUT_ABS"
elif command -v xelatex >/dev/null 2>&1; then
  ENGINE="xelatex"
  xelatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -output-directory="$WORK_DIR" "$INPUT_ABS"
  xelatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -output-directory="$WORK_DIR" "$INPUT_ABS"
elif command -v pdflatex >/dev/null 2>&1; then
  ENGINE="pdflatex"
  pdflatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -output-directory="$WORK_DIR" "$INPUT_ABS"
  pdflatex -interaction=nonstopmode -halt-on-error -file-line-error \
    -output-directory="$WORK_DIR" "$INPUT_ABS"
else
  echo "No LaTeX engine found; install latexmk, xelatex, or pdflatex." >&2
  exit 127
fi

BASE_NAME="$(basename "$INPUT_TEX" .tex)"
COMPILED="$WORK_DIR/$BASE_NAME.pdf"
[[ -s "$COMPILED" ]] || {
  echo "PDF not produced by $ENGINE: $COMPILED" >&2
  exit 1
}

cp "$COMPILED" "$OUTPUT_ABS"
echo "$OUTPUT_ABS"
