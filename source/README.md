# Typst source

This folder builds [`book/ML_Research_Handbook.pdf`](../book/ML_Research_Handbook.pdf). From the repository root:

```bash
make            # build the PDF
make watch      # rebuild build/preview.pdf on every save
make check      # confirm the committed PDF matches this source
```

You need [Typst](https://typst.app) 0.15 (macOS: `brew install typst`). The fonts are either built into Typst (Libertinus Serif, New Computer Modern Math, DejaVu Sans Mono) or bundled in `fonts/` (Noto Serif Bengali).

## Layout

| Path | Contents |
|---|---|
| `main.typ` | The book's outline: cover, front matter, Parts I–VI with their chapters, appendices, references |
| `template.typ` | All styling: colours, page header and footer, part and chapter openers, cover, Quick Recap boxes, Bangla paragraphs, diagrams, printable forms |
| `front/preface.typ` | Preface, reading paths, conventions |
| `chapters/ch01.typ` … `ch29.typ` | Chapters 1–29 |
| `chapters/app-a.typ` … `app-e.typ` | Appendices A–E |
| `refs.bib` | 133 references, rendered in IEEE style |
| `fonts/` | Noto Serif Bengali and its licence |

## Editing tips

- Bangla paragraphs are wrapped in `#bn[...]`, which draws the gold margin rule. Use `#bni[...]` for Bangla inside a list item and `#bnsub(level)[...]` for the Bangla subtitle under a heading.
- End a chapter with `#recap[...]` for the Quick Recap box.
- Cite with `#cite(<ref19>)`. Every entry in `refs.bib` is listed in the References.
- Change the palette (`navy`, `gold`, …) at the top of `template.typ`.
- Part openers are the `#part(...)` calls in `main.typ`. To add a chapter, create `chapters/chNN.typ` starting with `#import "../template.typ": *` and add an `#include` line in `main.typ`.

## Licence

The book text (all `.typ` content, `refs.bib`) is [CC BY-NC-ND 4.0](../LICENSE). `template.typ`, the build tooling and the Python snippets in Chapters 22–29 are [MIT](../LICENSE-MIT), so you may reuse the design for your own documents. Noto Serif Bengali is under the [SIL Open Font License 1.1](fonts/licenses/OFL-notoserifbengali.txt).
