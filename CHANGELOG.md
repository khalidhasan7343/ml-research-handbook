# Changelog

## Unreleased — Final Edition (2026)

### Added

- **Final Edition** of the handbook (2026, 199 pages): 29 chapters in eight parts, Appendices A–E, and 133 references, every key idea explained in English and Bangla.
- **Part VII · Research in the Age of LLMs** (Chapters 22–25): reading LLM-era papers, AI tools in research, Bangla and low-resource ML research, and a case study of "Attention Is All You Need".
- **Part VIII · From Question to Publication** (Chapters 26–29): research proposals, running a study (seeds, effect sizes, bootstrap intervals, Holm correction), writing the paper, and submission and peer review, with a Bangla mini-project running through Chapters 24–29.
- Exercises for Chapters 22–29 with answers in the new Appendix E; a proposal template and a rebuttal planner (Appendix A); formulas for comparing systems (Appendix B); eleven new glossary terms (Appendix C).
- 72 new references, each checked against its primary source in November 2026, and an AI-assistance note on the copyright page.
- Full Typst source in `source/`, one file per chapter, with `main.typ` as the book's outline. Noto Serif Bengali is bundled with its SIL Open Font License.
- `Makefile` with `make`, `make watch`, `make check` and `make clean`. Builds are reproducible: the same source produces a byte-identical PDF on every machine.
- GitHub Actions workflow `build.yml`, which rebuilds the PDF, checks that the committed PDF matches the source, and attaches the build to each run.
- README redesigned with the cover, sample pages, full contents, reading paths, a Bangla introduction, build instructions and a citation.
- The preface, reading paths and cover tagline ("… → QUESTIONS → PUBLICATION") now cover Parts VII–VIII.
- `ERRATA.md`, `.zenodo.json` for DOI archiving, and a social-preview image in `assets/`.

### Changed

- The PDF is now `book/ML_Research_Handbook.pdf`.
- The correction report form is updated for the Final Edition (PDF and Typst source).
- Licensing is clarified: book text and PDF stay CC BY-NC-ND 4.0; `source/template.typ` and the build tooling are MIT.
- The source template no longer refers to fonts that are not bundled, so builds produce no warnings. The PDF is unchanged.

### Fixed

- Reference for Stanford CS229 now prints its URL instead of a literal "and others".
- Section 19.7 printed "** Caution:**" with literal asterisks; it is now bold text.
- A Bangla line in the Chapter 6 Quick Recap is now styled like the others.
- Two long, unbreakable lines in Sections 19.6 and 19.7 no longer stretch the text.

### Removed

- Version 4.0 Markdown (`HANDBOOK.md`) and Word and PDF editions in `editions/`. The Final Edition supersedes them; earlier versions remain in the Git history.
- `SHA256SUMS.txt` (replaced by reproducible builds and `make check`) and `CONTRIBUTING.md` (corrections now go through the issue form).

## 4.0 — 2026

- ML Research Handbook, version 4.0: 34 sections in Markdown, PDF, and DOCX editions.
