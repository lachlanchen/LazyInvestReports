# AGENTS.md

## Project Purpose

This repository archives independent LazyInvest daily market research reports as
Markdown, LaTeX, PDF, and small reproducible public-data snapshots.

## Working Rules

- Treat all market, company, filing, price, guidance, and news information as date-sensitive.
- Use current primary sources whenever possible: SEC filings, company investor relations releases, earnings transcripts, exchange data, Federal Reserve/FRED/Treasury data, and reputable market data.
- Include the research date and data as-of timestamp in every report.
- State clearly that reports are research watchlists, not personal financial advice.
- Cite source links for company results, guidance, market data, macro data, and major industry claims.
- Preserve the distinction between reported GAAP metrics and non-GAAP or adjusted metrics.
- Keep assumptions visible, especially around growth rates, valuation, catalysts, sector ranking, and risk.
- Store raw or derived public-data bundles only when they support report reproducibility.

## File Conventions

- Markdown reports live under `reports/YYYY/`.
- LaTeX sources live under `tex/YYYY/`.
- PDFs live under `pdf/YYYY/`.
- Public-data bundles live under `data/YYYY/`.
- Use filenames such as `2026-06-27-lazyinvest-daily-report.md`.

## Git Notes

- Do not rewrite or delete old reports unless explicitly asked.
- Before committing, review `git status` and keep temporary build files out of git.
