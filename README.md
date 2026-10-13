LazyingArt profile: [English](https://github.com/lachlanchen/lachlanchen/blob/main/README.md) · [العربية](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.ar.md) · [Español](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.es.md) · [Français](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.fr.md) · [日本語](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.ja.md) · [한국어](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.ko.md) · [Tiếng Việt](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.vi.md) · [中文 (简体)](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.zh-Hans.md) · [中文（繁體）](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.zh-Hant.md) · [Deutsch](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.de.md) · [Русский](https://github.com/lachlanchen/lachlanchen/blob/main/i18n/README.ru.md)

[![LazyingArt banner](https://github.com/lachlanchen/lachlanchen/raw/main/figs/banner.png)](https://lazying.art)

# LazyInvestReports

Independent daily market research archive for LazyInvest.

This repository stores substantial daily U.S. market reports as Markdown, LaTeX,
PDF, and small public-data snapshots. The reports are research watchlists only.
They are not personal financial advice, valuation recommendations, or buy/sell
signals.

## Latest Report

- [2026-06-27 Markdown report](reports/2026/2026-06-27-lazyinvest-daily-report.md)
- [2026-06-27 LaTeX source](tex/2026/2026-06-27-lazyinvest-daily-report.tex)
- [2026-06-27 PDF report](pdf/2026/2026-06-27-lazyinvest-daily-report.pdf)

## Report Index

| Date | Markdown | LaTeX | PDF | Public Data |
|---|---|---|---|---|
| 2026-06-27 | [Report](reports/2026/2026-06-27-lazyinvest-daily-report.md) | [TeX](tex/2026/2026-06-27-lazyinvest-daily-report.tex) | [PDF](pdf/2026/2026-06-27-lazyinvest-daily-report.pdf) | [Input bundle](data/2026/2026-06-27-market-inputs.json) |

## Archive Layout

| Path | Contents |
|---|---|
| `reports/YYYY/` | Markdown reports |
| `tex/YYYY/` | LaTeX source files |
| `pdf/YYYY/` | Compiled PDF reports |
| `data/YYYY/` | Public market, macro, and SEC input bundles |

## Research Standard

Each report is expected to stand alone for its date. The daily automation first
collects public inputs from sources such as FRED, Yahoo Finance chart data, and SEC EDGAR, then asks
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

| Donate | PayPal | Stripe |
| --- | --- | --- |
| [![Donate](https://img.shields.io/badge/Donate-LazyingArt-0EA5E9?style=for-the-badge&logo=kofi&logoColor=white)](https://chat.lazying.art/donate) | [![PayPal](https://img.shields.io/badge/PayPal-RongzhouChen-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/RongzhouChen) | [![Stripe](https://img.shields.io/badge/Stripe-Donate-635BFF?style=for-the-badge&logo=stripe&logoColor=white)](https://buy.stripe.com/aFadR8gIaflgfQV6T4fw400) |
