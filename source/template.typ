// ============================================================================
//  Machine Learning + Research Paper Reading Handbook — Final Edition
//  Typst template: page style, headings, bilingual blocks, boxes, diagrams,
//  cover, front matter.
// ============================================================================

// ----------------------------------------------------------------- palette
#let navy      = rgb("#14213d")
#let navy-2    = rgb("#1f3160")
#let ink       = rgb("#1b1b1f")
#let bn-ink    = rgb("#27324d")
#let gold      = rgb("#c9a227")
#let gold-dark = rgb("#9a7a17")
#let gold-pale = rgb("#e9dcae")
#let tint      = rgb("#f3f5fa")
#let tint-2    = rgb("#eef1f8")
#let paper     = rgb("#fbf8ef")
#let rule-grey = rgb("#c9cdd8")

#let serif = ("Libertinus Serif", "Noto Serif Bengali")
#let bangla = ("Noto Serif Bengali", "Libertinus Serif")

#let in-appendix = state("in-appendix", false)

// ------------------------------------------------------------ small pieces
#let bnsub(level, body) = {
  if level == 1 {
    block(above: 0.75em, below: 0.75em, sticky: true, text(font: bangla, size: 14pt, fill: gold-dark, body))
    block(below: 1.5em, line(length: 3cm, stroke: 1.1pt + gold))
  } else if level == 2 {
    v(-0.3em)
    block(below: 0.9em, sticky: true, text(font: bangla, size: 9.5pt, fill: gold-dark, body))
  } else {
    block(text(font: bangla, size: 9pt, fill: gold-dark, body))
  }
}

// Bangla paragraph (top level): thin gold rule in the margin
#let bn(body) = block(
  width: 100%,
  above: 0.75em,
  below: 1.15em,
  inset: (left: 9pt, y: 1.5pt),
  stroke: (left: 1.1pt + gold-pale),
  text(fill: bn-ink, body),
)

// Bangla text nested in lists, quotes, recap boxes
#let bni(body) = text(fill: bn-ink, body)

#let cbox(checked: false) = box(
  width: 0.78em, height: 0.78em, baseline: 0.12em,
  stroke: 0.6pt + navy, radius: 1pt,
  if checked { align(center + horizon, text(size: 0.7em, fill: navy, sym.checkmark)) },
)

#let checklist(body) = {
  set list(marker: none, indent: 0pt, body-indent: 0pt)
  body
}

#let recap(body) = block(
  width: 100%,
  above: 1.6em,
  below: 1.2em,
  fill: tint,
  stroke: (left: 3pt + gold),
  inset: (left: 14pt, right: 12pt, top: 11pt, bottom: 10pt),
  breakable: true,
)[
  #text(size: 8pt, weight: "bold", tracking: 0.12em, fill: navy)[QUICK RECAP]
  #h(0.4em)
  #text(font: bangla, size: 8.5pt, fill: gold-dark)[সংক্ষিপ্ত পুনরালোচনা]
  #v(0.2em)
  #set text(size: 9.6pt)
  #set list(spacing: 0.75em)
  #body
]

// ----------------------------------------------------------- diagrams
#let chip(body, fill: white, stroke: navy, fg: navy, w: auto) = box(
  width: w,
  fill: fill,
  stroke: 0.7pt + stroke,
  radius: 3pt,
  inset: (x: 6pt, y: 4.5pt),
  text(size: 8.3pt, fill: fg, body),
)

#let arrow-r = text(fill: gold-dark, size: 11pt, sym.arrow.r)
#let arrow-d = text(fill: gold-dark, size: 11pt, sym.arrow.b)

#let pipeline-diagram() = {
  let phases = (
    ("Problem & Data", "সমস্যা ও ডেটা",
      ("1  Problem definition", "2  Data collection", "3  Data understanding", "4  Data cleaning", "5  EDA")),
    ("Preparation", "প্রস্তুতি",
      ("6  Preprocessing", "7  Feature engineering", "8  Train / val / test split")),
    ("Modelling", "মডেলিং",
      ("9  Model selection", "10  Training", "11  Tuning", "12  Cross-validation")),
    ("Evaluation", "মূল্যায়ন ও রিপোর্টিং",
      ("13  Metrics", "14  Error analysis", "15  Baselines", "16  Interpretation", "17  Conclusion")),
  )
  let col(p) = block(width: 100%, fill: tint, radius: 4pt, inset: 7pt)[
    #align(center)[
      #text(size: 8.6pt, weight: "bold", fill: navy, p.at(0)) \
      #text(font: bangla, size: 7.8pt, fill: gold-dark, p.at(1))
    ]
    #v(2pt)
    #for s in p.at(2) {
      block(above: 3.5pt, below: 0pt, box(width: 100%, fill: white, stroke: 0.6pt + navy, radius: 3pt,
        inset: (x: 4pt, y: 4pt), text(size: 7.6pt, fill: navy, s)))
    }
  ]
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, grid(
      columns: (1fr, auto, 1fr, auto, 1fr, auto, 1fr),
      column-gutter: 4pt,
      align: horizon,
      col(phases.at(0)), arrow-r, col(phases.at(1)), arrow-r,
      col(phases.at(2)), arrow-r, col(phases.at(3)),
    )),
  )
}

#let threepass-diagram() = {
  let pass(n, name, bn, time, reads, out) = block(
    width: 100%, height: 100%, fill: tint, radius: 4pt, inset: 8pt, stroke: 0.6pt + rule-grey,
  )[
    #set align(left)
    #set par(justify: false)
    #text(size: 7.5pt, weight: "bold", tracking: 0.1em, fill: gold-dark)[PASS #n]
    #h(1fr) #text(size: 7.8pt, fill: navy)[#time] \
    #text(size: 10pt, weight: "bold", fill: navy, name) \
    #text(font: bangla, size: 8pt, fill: gold-dark, bn)
    #v(1pt)
    #line(length: 100%, stroke: 0.5pt + gold-pale)
    #v(-2pt)
    #text(size: 7.9pt)[*Read:* #reads] \
    #v(-4pt)
    #text(size: 7.9pt)[*Leave with:* #out]
  ]
  let gate(label) = align(center + horizon, stack(
    spacing: 3pt,
    arrow-r,
    text(size: 6.8pt, fill: gold-dark, style: "italic", label),
  ))
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, height: 4.4cm, grid(
      columns: (1fr, 1.2cm, 1fr, 1.2cm, 1fr),
      rows: (100%,),
      pass(1, "Bird's-eye view", "এক নজরে পুরো পেপার", "5–10 min",
        [title, abstract, intro, headings, conclusion, references],
        [the five Cs; problem, method, data, result]),
      gate[worth it?],
      pass(2, "Grasp the content", "বিষয়বস্তু আয়ত্ত", "≤ 1 hour",
        [everything except proofs; figures and tables with care],
        [a summary you can defend with evidence]),
      gate[build on it?],
      pass(3, "Re-implement", "মনে মনে পুনর্নির্মাণ", "1–5 hours",
        [every detail, as if rebuilding it],
        [hidden assumptions, strengths, flaws]),
    )),
  )
}

#let funnel-diagram() = {
  let stages = (
    ("General problem", false), ("Existing situation", false), ("Existing methods", false),
    ("Limitations", false), ("Research gap", true), ("Motivation", false),
    ("Proposed approach", false), ("Objective", false), ("Contributions", false),
  )
  let n = stages.len()
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, width: 100%, {
      for (i, s) in stages.enumerate() {
        let w = 100% - i * 7%
        align(center, block(
          above: 2.2pt, below: 0pt,
          width: w,
          fill: if s.at(1) { gold } else { navy.lighten(i * 6%) },
          radius: 2pt,
          inset: (y: 3.6pt),
          align(center, text(size: 8.3pt, fill: white, weight: if s.at(1) { "bold" } else { "regular" },
            [#(i + 1). #s.at(0)])),
        ))
      }
      v(3pt)
      align(center, text(size: 7.8pt, fill: gold-dark, style: "italic")[
        The gap claim usually sits just before “In this paper, we propose…”
      ])
    }),
  )
}

#let gap2rq-diagram() = {
  let hi = ("Research gap", "Research question")
  let row(items) = {
    let cells = ()
    for (i, s) in items.enumerate() {
      if i > 0 { cells.push(arrow-r) }
      let h = s in hi
      cells.push(chip(s,
        fill: if h { gold } else { white },
        stroke: if h { gold-dark } else { navy },
        fg: if h { white } else { navy }))
    }
    align(center, stack(dir: ltr, spacing: 4pt, ..cells.map(c => align(horizon, c))))
  }
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, width: 100%, fill: tint, radius: 4pt, inset: 10pt, {
      row(("Observation", "Problem", "Existing research", "Limitation", "Research gap"))
      v(2pt)
      align(center, arrow-d)
      v(2pt)
      row(("Research question", "Hypothesis", "Method", "Experiment", "Result", "Contribution"))
    }),
  )
}

// The Transformer at a glance (Chapter 25). Each item is (label, highlight);
// highlighted items are attention layers.
#let transformer-diagram() = {
  let col(title, bn-title, items) = block(width: 100%, fill: tint, radius: 4pt, inset: 8pt)[
    #align(center)[
      #text(size: 8.6pt, weight: "bold", fill: navy, title) \
      #text(font: bangla, size: 7.8pt, fill: gold-dark, bn-title)
    ]
    #v(2pt)
    #for (i, (label, hi)) in items.enumerate() {
      if i > 0 { align(center, block(above: 3pt, below: 3pt, text(size: 9pt, fill: gold-dark, sym.arrow.b))) }
      align(center, chip(label, w: 100%,
        fill: if hi { gold } else { white },
        stroke: if hi { gold-dark } else { navy },
        fg: if hi { white } else { navy }))
    }
  ]
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, grid(
      columns: (1fr, auto, 1fr),
      column-gutter: 6pt,
      align: horizon,
      col("Encoder · 6 identical layers", "এনকোডার", (
        ("Input tokens", false),
        ("Embedding + positional encoding", false),
        ("Multi-head self-attention", true),
        ("Add & norm · feed-forward · add & norm", false),
      )),
      align(center, text(size: 7.4pt, fill: gold-dark)[#text(size: 12pt, sym.arrow.r) \ keys and \ values]),
      col("Decoder · 6 identical layers", "ডিকোডার", (
        ("Output tokens so far", false),
        ("Embedding + positional encoding", false),
        ("Masked multi-head self-attention", true),
        ("Attention over the encoder output", true),
        ("Feed-forward (add & norm after each step)", false),
        ("Linear + softmax: next token", false),
      )),
    )),
  )
}

// Printable form: rows of (English label, Bangla label)
#let form-sheet(..args, row-height: 1.2cm) = {
  let rows = args.pos()
  block(breakable: true, table(
    columns: (34%, 1fr),
    rows: row-height,
    stroke: 0.5pt + rule-grey,
    inset: (x: 6pt, y: 5pt),
    fill: (x, y) => if x == 0 { tint } else { white },
    ..rows.map(r => (
      [#text(size: 8.6pt, weight: "bold", fill: navy, r.at(0)) \ #text(font: bangla, size: 7.8pt, fill: gold-dark, r.at(1))],
      [],
    )).flatten(),
  ))
}

// Gantt-style project timeline. Each task is
// (English label, Bangla label, first week, last week, is-milestone).
// A milestone task ends in a gold cell.
#let timeline-chart(weeks: 12, ..tasks) = {
  let bar(gold-end) = box(width: 100%, height: 0.85em, radius: 1.5pt,
    fill: if gold-end { gold } else { navy.lighten(18%) })
  figure(
    kind: "diagram", supplement: none, numbering: none,
    block(breakable: false, width: 100%, {
      table(
        columns: (31%,) + (1fr,) * weeks,
        stroke: (x, y) => (
          bottom: 0.4pt + rule-grey,
          left: if x > 0 { 0.3pt + rule-grey.lighten(45%) } else { none },
        ),
        inset: (x: 2.5pt, y: 3.4pt),
        align: (x, y) => if x == 0 { left + horizon } else { center + horizon },
        table.header(
          [#text(size: 7.6pt)[Task / Week] #h(0.3em) #text(font: bangla, size: 7.2pt, weight: "regular", fill: gold-pale)[কাজ / সপ্তাহ]],
          ..range(1, weeks + 1).map(w => text(size: 7.4pt, str(w))),
        ),
        ..tasks.pos().map(((en, bn, first, last, milestone)) => (
          [#text(size: 7.9pt, fill: navy, en) \ #text(font: bangla, size: 7.1pt, fill: gold-dark, bn)],
          ..range(1, weeks + 1).map(w =>
            if w >= first and w <= last { bar(milestone and w == last) } else { [] }),
        )).flatten(),
      )
      v(2pt)
      align(right, text(size: 7.6pt, fill: gold-dark, style: "italic")[
        #box(width: 1.4em, height: 0.7em, radius: 1.5pt, fill: gold) milestone · #text(font: bangla, style: "normal")[মাইলফলক]
      ])
    }),
  )
}

// ----------------------------------------------------------- structure
#let part(num, title, bn-title, desc-en, desc-bn, chapters) = {
  pagebreak(weak: true)
  page(fill: navy, header: none, footer: none, margin: (x: 2.6cm, y: 3cm))[
    #set text(fill: white, hyphenate: false)
    #set par(justify: false)
    #place(top + right, dx: 0.6cm, dy: -0.8cm,
      text(size: 120pt, font: "Libertinus Serif", fill: navy-2, weight: "bold", num))
    #v(5.2cm)
    #line(length: 3.2cm, stroke: 1.2pt + gold)
    #v(0.5cm)
    #text(size: 10pt, tracking: 0.3em, fill: gold, weight: "bold")[PART #num]
    #v(0.2cm)
    #heading(level: 1, numbering: none, outlined: true, supplement: [Part],
      [Part #num · #title])
    #text(size: 30pt, weight: "bold", fill: white, title)
    #v(0.35cm)
    #text(font: bangla, size: 16pt, fill: gold-pale, bn-title)
    #v(1.1cm)
    #block(width: 85%, text(size: 11.5pt, fill: white.darken(8%), desc-en))
    #v(0.25cm)
    #block(width: 85%, text(font: bangla, size: 10.5pt, fill: gold-pale.darken(5%), desc-bn))
    #v(1fr)
    #line(length: 100%, stroke: 0.4pt + gold.transparentize(50%))
    #v(0.2cm)
    #text(size: 9pt, tracking: 0.15em, fill: gold-pale)[#upper(chapters)]
  ]
}

#let appendices(body) = {
  in-appendix.update(true)
  counter(heading).update(0)
  set heading(numbering: (..n) => {
    let n = n.pos()
    if n.len() == 1 { numbering("A", n.at(0)) } else { numbering("A.1", ..n) }
  })
  body
}

#let references() = {
  pagebreak(weak: true)
  heading(level: 1, numbering: none, outlined: true)[References]
  bnsub(1)[তথ্যসূত্র ও আরও পাঠ]
  text(size: 9.6pt)[
    All references are real, verifiable published works. Where the handbook states a specific factual claim drawn from one of them, its number appears at that point in the text. Standard textbook material is not individually cited, in line with normal academic practice. The list also includes the textbooks, course materials and classic papers that the foundations draw on.
  ]
  bn(text(size: 9.6pt)[
    এখানে তালিকাভুক্ত সব উৎস বাস্তব ও যাচাইযোগ্য প্রকাশিত কাজ। কোনো নির্দিষ্ট তথ্য এগুলোর কোনোটি থেকে এলে লেখার সেই জায়গায় সংখ্যাটি দেওয়া আছে। সর্বজনীনভাবে পাঠ্যপুস্তকে শেখানো বিষয় আলাদাভাবে সাইট করা হয়নি। ভিত্তি অংশে ব্যবহৃত পাঠ্যপুস্তক, কোর্স ম্যাটেরিয়াল ও ক্লাসিক পেপারগুলোও এই তালিকায় আছে।
  ])
  v(0.4em)
  set text(size: 9pt)
  bibliography("refs.bib", title: none, full: true, style: "ieee")
}

// ----------------------------------------------------------- page chrome
#let running-header() = context {
  let here-page = here().page()
  // no header on a page where a chapter starts
  let starts = query(heading.where(level: 1)).filter(h => h.location().page() == here-page)
  if starts.len() > 0 { return none }
  let prev = query(heading.where(level: 1).before(here())).filter(h => h.supplement != [Part])
  if prev.len() == 0 { return none }
  let h = prev.last()
  let label = if h.numbering == none { h.body } else {
    let app = in-appendix.at(h.location())
    let n = counter(heading).at(h.location()).first()
    if app { [Appendix #numbering("A", n) · #h.body] } else { [Chapter #n · #h.body] }
  }
  set text(size: 8pt, fill: navy.lighten(25%))
  grid(columns: (1fr, auto),
    smallcaps(label),
    text(fill: gold-dark)[Machine Learning + Research Paper Reading],
  )
  v(-5pt)
  line(length: 100%, stroke: 0.4pt + gold-pale)
}

#let footer-num() = context {
  set text(size: 8.5pt, fill: navy)
  align(center, counter(page).display())
}

// ----------------------------------------------------------- main show rule
#let book(body) = {
  set document(
    title: "The Machine Learning + Research Paper Reading + Critical Analysis + Research Gap Identification Handbook",
    author: "MD Khalid Hasan",
    keywords: ("machine learning", "research methodology", "research gap", "paper reading", "Bangla"),
  )
  set page(
    paper: "a4",
    margin: (top: 2.6cm, bottom: 2.4cm, x: 2.3cm),
    header: running-header(),
    footer: footer-num(),
    numbering: "i",
  )
  set text(font: serif, size: 10.5pt, fill: ink, lang: "en", hyphenate: true)
  set par(justify: true, leading: 0.68em, spacing: 1.05em)
  show math.equation: set text(font: "New Computer Modern Math")
  set math.equation(numbering: none)

  // headings
  set heading(numbering: "1.1")
  show heading: set text(fill: navy, hyphenate: false)
  show heading: set par(justify: false)
  show heading.where(level: 1): it => {
    if it.supplement == [Part] { return none }
    pagebreak(weak: true)
    v(1.4cm)
    if it.numbering != none {
      let app = in-appendix.get()
      let n = counter(heading).get().first()
      text(size: 9.5pt, tracking: 0.28em, weight: "bold", fill: gold-dark)[
        #if app [APPENDIX #numbering("A", n)] else [CHAPTER #n]
      ]
      v(0.15cm)
    }
    block(below: 0.55em, text(size: 25pt, weight: "bold", fill: navy, it.body))
  }
  show heading.where(level: 2): it => {
    block(above: 1.9em, below: 0.75em, sticky: true, {
      set text(size: 13.5pt, weight: "bold", fill: navy)
      if it.numbering != none {
        text(fill: gold-dark, counter(heading).display(it.numbering))
        h(0.6em)
      }
      it.body
    })
  }
  show heading.where(level: 3): it => block(above: 1.5em, below: 0.7em, sticky: true,
    text(size: 11pt, weight: "bold", fill: navy-2, it.body))
  show heading.where(level: 4): it => block(above: 1.2em, below: 0.6em, sticky: true,
    text(size: 10.5pt, weight: "bold", style: "italic", fill: navy-2, it.body))

  // tables
  show figure.where(kind: table): set block(breakable: true)
  show figure: set block(above: 1.1em, below: 1.2em)
  set table(
    stroke: (x, y) => (
      top: if y == 1 { 0.8pt + navy } else { 0pt },
      bottom: 0.4pt + rule-grey,
    ),
    fill: (x, y) => if y == 0 { navy } else if calc.even(y) { tint-2 } else { none },
    inset: (x: 5pt, y: 4.2pt),
  )
  show table: set text(size: 8.6pt, hyphenate: false)
  show table: set par(justify: false, leading: 0.55em)
  show table.cell.where(y: 0): set text(fill: white, weight: "bold")
  show table.cell.where(y: 0): it => { show strong: s => s.body; it }

  // lists
  set list(marker: (text(fill: gold-dark)[•], text(fill: gold-dark)[–]), indent: 0.3em, body-indent: 0.55em)
  set enum(indent: 0.3em, body-indent: 0.55em)

  // quotes, code
  show quote.where(block: true): it => block(
    width: 100%, fill: paper, inset: (x: 12pt, y: 9pt), radius: 2pt,
    stroke: (left: 2pt + navy-2), it.body,
  )
  show raw.where(block: true): it => block(
    width: 100%, fill: paper, inset: 9pt, radius: 2pt, stroke: 0.4pt + gold-pale,
    text(size: 8.3pt, it),
  )
  show raw: set text(font: ("DejaVu Sans Mono", "Noto Serif Bengali"))
  show raw.where(block: false): it => box(fill: tint, inset: (x: 2pt), outset: (y: 2pt), radius: 1.5pt, text(size: 0.88em, it))

  // links & citations
  show link: set text(fill: navy-2)

  body
}

// ----------------------------------------------------------- front matter
#let network-motif(w: 7cm, h: 5.2cm, col: gold) = {
  let layers = ((0.0, (0.2, 0.5, 0.8)), (0.33, (0.1, 0.37, 0.63, 0.9)), (0.66, (0.22, 0.5, 0.78)), (1.0, (0.35, 0.65)))
  box(width: w, height: h, {
    for li in range(layers.len() - 1) {
      let (x1, ys1) = layers.at(li)
      let (x2, ys2) = layers.at(li + 1)
      for y1 in ys1 { for y2 in ys2 {
        place(line(start: (x1 * w, y1 * h), end: (x2 * w, y2 * h), stroke: 0.35pt + col.transparentize(55%)))
      }}
    }
    for (x, ys) in layers { for y in ys {
      place(dx: x * w - 3.2pt, dy: y * h - 3.2pt, circle(radius: 3.2pt, fill: navy, stroke: 0.9pt + col))
    }}
  })
}

#let cover() = page(fill: navy, margin: 0pt, header: none, footer: none, numbering: none)[
  #set text(fill: white)
  #place(top + left, dx: 2.4cm, dy: 2.2cm, block(width: 100% - 4.8cm)[
    #text(size: 8.5pt, tracking: 0.32em, fill: gold, weight: "bold")[A BILINGUAL HANDBOOK]
    #h(0.6em) #text(size: 8.5pt, fill: gold-pale)[English · #text(font: bangla)[বাংলা]]
    #v(0.25cm)
    #line(length: 100%, stroke: 0.5pt + gold)
  ])
  #place(top + right, dx: -2.2cm, dy: 3.6cm, network-motif())
  #place(top + left, dx: 2.4cm, dy: 9.6cm, block(width: 100% - 4.8cm)[
    #set par(leading: 0.5em, justify: false)
    #text(size: 40pt, weight: "bold")[Machine Learning]
    #v(0.1cm)
    #text(size: 27pt, fill: gold-pale)[\+ Research Paper Reading]
    #v(0.55cm)
    #line(length: 5cm, stroke: 1.4pt + gold)
    #v(0.45cm)
    #text(size: 15pt, fill: white)[Critical Analysis · Research Gap Identification]
    #v(0.15cm)
    #text(size: 12pt, style: "italic", fill: gold-pale)[A Handbook from Foundations to Research Questions]
    #v(0.7cm)
    #text(font: bangla, size: 13.5pt, fill: gold-pale)[মেশিন লার্নিং, গবেষণাপত্র পাঠ, সমালোচনামূলক বিশ্লেষণ \ ও রিসার্চ গ্যাপ শনাক্তকরণের দ্বিভাষিক হ্যান্ডবুক]
  ])
  #place(bottom + left, dx: 2.4cm, dy: -2.3cm, block(width: 100% - 4.8cm)[
    #text(size: 8.5pt, tracking: 0.14em, fill: gold-pale)[FOUNDATIONS #text(fill: gold)[ → ] READING #text(fill: gold)[ → ] CRITIQUE #text(fill: gold)[ → ] GAPS #text(fill: gold)[ → ] QUESTIONS #text(fill: gold)[ → ] PUBLICATION]
    #v(0.35cm)
    #line(length: 100%, stroke: 0.5pt + gold)
    #v(0.45cm)
    #grid(columns: (1fr, auto), align: (left + bottom, right + bottom),
      [
        #text(size: 17pt, weight: "bold")[MD Khalid Hasan] \
        #v(0.08cm)
        #text(size: 10pt, fill: gold-pale)[Department of Computer Science and Engineering \ United International University]
      ],
      [
        #text(size: 9pt, tracking: 0.25em, fill: gold, weight: "bold")[FINAL EDITION] \
        #text(size: 10pt, fill: gold-pale)[2026]
      ],
    )
  ])
]

#let copyright-page() = page(header: none, footer: none, numbering: none)[
  #set text(size: 9pt)
  #set par(justify: false)
  #v(1fr)
  #text(size: 11pt, weight: "bold", fill: navy)[The Machine Learning + Research Paper Reading + Critical Analysis + Research Gap Identification Handbook] \
  #text(style: "italic")[A Bilingual (English–Bangla) Guide] \
  #text(font: bangla, fill: gold-dark)[মেশিন লার্নিং, গবেষণাপত্র পাঠ, সমালোচনামূলক বিশ্লেষণ ও রিসার্চ গ্যাপ শনাক্তকরণের দ্বিভাষিক হ্যান্ডবুক]

  #v(0.4cm)
  *MD Khalid Hasan* \
  Department of Computer Science and Engineering, United International University

  #v(0.4cm)
  Final Edition, 2026 \
  © 2026 MD Khalid Hasan

  #v(0.4cm)
  This work is licensed under the Creative Commons Attribution–NonCommercial–NoDerivatives 4.0 International License (CC BY-NC-ND 4.0). You may copy and redistribute it in any medium or format for non-commercial purposes, provided you give appropriate credit. You may not distribute modified versions.

  #v(0.4cm)
  *Suggested citation.* MD Khalid Hasan. _The Machine Learning + Research Paper Reading + Critical Analysis + Research Gap Identification Handbook: A Bilingual (English–Bangla) Guide._ Final Edition, 2026.

  #v(0.4cm)
  *A note on examples.* Worked examples that use invented numbers or hypothetical papers are labelled as illustrations; they teach a method and are not research findings. Venue policies, rankings and tools change over time — check current versions before relying on them.

  #v(0.4cm)
  *A note on AI assistance.* Parts VII and VIII (Chapters 22–29) and Appendix E were drafted with the assistance of Claude (Anthropic). Every chapter was reviewed by the author, and every reference was checked against its source.

  #v(0.4cm)
  #text(fill: navy.lighten(30%))[Typeset with Typst in Libertinus Serif and Noto Serif Bengali.]
]

#let acknowledgements() = {
  heading(level: 1, numbering: none, outlined: true)[Acknowledgements]
  bnsub(1)[কৃতজ্ঞতা]
  [
    This handbook stands on the work of others. I am especially grateful to *Arefin Ahean Himel* (Department of Computer Science and Engineering, Southeast University), author of the _Machine Learning Methods Guide_, which was one of the primary sources for this book. Its organisation of methods, data problems and evaluation techniques shaped much of Part I.

    I also owe a debt to the authors of the textbooks and course materials on which the foundations draw — in particular Aurélien Géron's _Hands-On Machine Learning_, the Stanford CS229 course materials, and Goodfellow, Bengio and Courville's _Deep Learning_ — and to the researchers whose work on paper reading, literature reviews and research-gap identification is cited throughout Parts II–IV.

    Any errors that remain are my own.
  ]
  bn[
    এই হ্যান্ডবুকটি অন্যদের কাজের ওপর দাঁড়িয়ে আছে। আমি বিশেষভাবে কৃতজ্ঞ *Arefin Ahean Himel*-এর প্রতি (Department of Computer Science and Engineering, Southeast University), যিনি _Machine Learning Methods Guide_-এর লেখক; এই গাইডটি বইটির অন্যতম প্রধান উৎস ছিল, এবং এর পদ্ধতি, ডেটা সমস্যা ও মূল্যায়ন কৌশলের বিন্যাস Part I-এর বড় অংশকে রূপ দিয়েছে।
  ]
  bn[
    ভিত্তি অংশে ব্যবহৃত পাঠ্যপুস্তক ও কোর্স ম্যাটেরিয়ালের লেখকদের প্রতিও আমি ঋণী — বিশেষ করে Aurélien Géron-এর _Hands-On Machine Learning_, Stanford CS229-এর কোর্স ম্যাটেরিয়াল, এবং Goodfellow, Bengio ও Courville-এর _Deep Learning_ — এবং সেইসব গবেষকের প্রতি, যাদের পেপার পড়া, literature review ও research gap শনাক্তকরণ বিষয়ক কাজ Part II–IV জুড়ে সাইট করা হয়েছে। বইটিতে কোনো ভুল থেকে গেলে তার দায় সম্পূর্ণ আমার।
  ]
  v(0.6cm)
  align(right, text(style: "italic", fill: navy)[— MD Khalid Hasan])
}

#let contents() = {
  pagebreak(weak: true)
  heading(level: 1, numbering: none, outlined: false)[Contents]
  bnsub(1)[সূচিপত্র]
  show outline.entry.where(level: 1): it => {
    if it.element.supplement == [Part] {
      v(0.9em)
      block(above: 0.6em, below: 0.35em, text(size: 9.5pt, weight: "bold", tracking: 0.12em, fill: gold-dark, upper(it.element.body)))
    } else {
      v(0.35em)
      text(weight: "bold", fill: navy, it)
    }
  }
  show outline.entry.where(level: 2): set text(size: 9.4pt)
  outline(title: none, depth: 2, indent: auto)
}
