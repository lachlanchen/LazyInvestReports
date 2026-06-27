# LazyInvestReports

Independent daily market research archive for LazyInvest.

This repository stores substantial daily U.S. market reports as Markdown, LaTeX,
PDF, and small public-data snapshots. The reports are research watchlists only.
They are not personal financial advice, valuation recommendations, or buy/sell
signals.

## Latest Report

No daily report has been generated in this repository yet.

## Archive Layout

| Path | Contents |
|---|---|
| `reports/YYYY/` | Markdown reports |
| `tex/YYYY/` | LaTeX source files |
| `pdf/YYYY/` | Compiled PDF reports |
| `data/YYYY/` | Public market, macro, and SEC input bundles |

## Research Standard

Each report is expected to stand alone for its date. The daily automation first
collects public inputs from sources such as FRED, Stooq, and SEC EDGAR, then asks
Codex `gpt-5.5 / xhigh` to inspect current primary and reputable sources before
writing the Markdown, TeX, and PDF outputs.

Key requirements:

- Cite source links for market, company, filing, guidance, and macro claims.
- Preserve GAAP versus non-GAAP distinctions.
- Include assumptions, catalysts, risks, and falsification checks.
- Separate watchlist research from personal financial advice.

## Related

- LazyInvest app and watchlists: <https://github.com/lachlanchen/LazyInvest>
- Project home: <https://earn.lazying.art>
