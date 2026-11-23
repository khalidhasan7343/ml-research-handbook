#import "../template.typ": *

= Templates for Reading and Note-Taking
<templates-for-reading-and-note-taking>
#bnsub(1)[পড়া ও নোট নেওয়ার টেমপ্লেট]
These templates turn the methods in this book into forms you can fill in. Use the nine-field abstract card in Section 8.4 during the first pass, the one-page summary for every paper you second-pass, and the full note for papers you third-pass or rely on as evidence for your own research gap. A rule that applies to both: #strong[never fill a field by guessing.] If the paper does not say, write "not reported" --- that is itself useful information.

#bn[এই টেমপ্লেটগুলো বইয়ের পদ্ধতিগুলোকে পূরণযোগ্য ফর্মে রূপ দেয়। প্রথম পাসে Section 8.4-এর নয়-ঘরের abstract কার্ড, দ্বিতীয় পাস করা প্রতিটি পেপারের জন্য এক-পৃষ্ঠার সারাংশ, আর তৃতীয় পাস করা বা নিজের গ্যাপের প্রমাণ হিসেবে ব্যবহার করা পেপারের জন্য পূর্ণ নোট ব্যবহার করুন। দুটির জন্যই একটি নিয়ম: #strong[অনুমান করে কোনো ঘর পূরণ করবেন না।] পেপারে না থাকলে "not reported" লিখুন --- সেটিও একটি দরকারি তথ্য।]

== One-Page Paper Summary
<one-page-paper-summary>
#bnsub(2)[এক-পৃষ্ঠার পেপার সারাংশ]
#form-sheet(
  ("Paper (title, first author, year, venue)", "পেপার"),
  ("Problem", "সমস্যা"),
  ("Motivation", "অনুপ্রেরণা"),
  ("Existing research", "বিদ্যমান গবেষণা"),
  ("Research gap", "রিসার্চ গ্যাপ"),
  ("Research question", "রিসার্চ প্রশ্ন"),
  ("Method", "পদ্ধতি"),
  ("Dataset", "ডেটাসেট"),
  ("Experiment (splits, baselines, runs)", "পরীক্ষা"),
  ("Metrics", "মেট্রিক"),
  ("Results", "ফলাফল"),
  ("Contribution", "অবদান"),
  ("Limitations", "সীমাবদ্ধতা"),
  ("My critical analysis", "আমার সমালোচনামূলক বিশ্লেষণ"),
  ("Possible research direction", "সম্ভাব্য গবেষণার দিক"),
  row-height: 1.32cm,
)
== Full Research-Paper Notes
<full-research-paper-notes>
#bnsub(2)[পূর্ণাঙ্গ গবেষণাপত্র নোট]
=== Paper information · পেপারের তথ্য
<paper-information-পপরর-তথয>
#form-sheet(
  ("Title", "শিরোনাম"),
  ("Authors (copy exactly)", "লেখক"),
  ("Year", "সাল"),
  ("Conference / journal", "কনফারেন্স / জার্নাল"),
  ("DOI / link", "DOI / লিংক"),
  ("Research area", "গবেষণার ক্ষেত্র"),
  ("Pass reached (1 / 2 / 3)", "কোন পাস পর্যন্ত পড়েছি"),
  row-height: 0.95cm,
)
=== Scientific core · বৈজ্ঞানিক মূল অংশ
<scientific-core-বজঞনক-মল-অশ>
#form-sheet(
  ("Problem", "সমস্যা"),
  ("Motivation", "অনুপ্রেরণা"),
  ("Existing research", "বিদ্যমান গবেষণা"),
  ("Research gap (as claimed — and is it supported?)", "রিসার্চ গ্যাপ"),
  ("Research question", "রিসার্চ প্রশ্ন"),
  ("Proposed method", "প্রস্তাবিত পদ্ধতি"),
  ("Dataset (source, size, balance, public?)", "ডেটাসেট"),
  ("Preprocessing (fit on train only?)", "প্রিপ্রসেসিং"),
  ("Experimental setup (splits, seeds, hardware)", "পরীক্ষার সেটআপ"),
  ("Baselines (recent? tuned?)", "বেসলাইন"),
  ("Metrics (suited to the data?)", "মেট্রিক"),
  ("Results (mean ± std? significance?)", "ফলাফল"),
  ("Contribution (novelty type)", "অবদান"),
  ("Limitations (stated by authors)", "সীমাবদ্ধতা"),
  row-height: 1.25cm,
)
=== My analysis · আমার বিশ্লেষণ
<my-analysis-আমর-বশলষণ>
#form-sheet(
  ("My critical analysis (fourteen dimensions, Chapter 10)", "আমার সমালোচনামূলক বিশ্লেষণ"),
  ("Red flags found (Chapter 11)", "পাওয়া রেড ফ্ল্যাগ"),
  ("Reproducibility (code, data, seeds, hyperparameters)", "রিপ্রোডিউসিবিলিটি"),
  ("Possible research gap (type, Chapter 13)", "সম্ভাব্য রিসার্চ গ্যাপ"),
  ("Possible future research (a question, Chapter 16)", "সম্ভাব্য ভবিষ্যৎ গবেষণা"),
  row-height: 2.4cm,
)

== Research Proposal (One Page)
<research-proposal-one-page>
#bnsub(2)[এক পৃষ্ঠার রিসার্চ প্রপোজাল]
Use this form for a first proposal (Chapter 26; Section 26.7 shows a filled example). Every row answers one of the Heilmeier questions of Section 26.1.

#bn[প্রথম প্রপোজালের জন্য এই ফর্ম ব্যবহার করুন (Chapter 26; Section 26.7-এ পূরণ করা উদাহরণ আছে)। প্রতিটি সারি Section 26.1-এর Heilmeier প্রশ্নগুলোর একটির উত্তর দেয়।]

#form-sheet(
  ("Title (change, outcome, setting)", "শিরোনাম"),
  ("Aim (one sentence)", "লক্ষ্য"),
  ("Gap, with the closest existing work (Chapter 15)", "গ্যাপ ও নিকটতম কাজ"),
  ("Research question", "রিসার্চ প্রশ্ন"),
  ("Hypotheses H₁ and H₀", "hypothesis"),
  ("Data: source, size, licence, splits", "ডেটা ও লাইসেন্স"),
  ("Models and baselines", "মডেল ও বেসলাইন"),
  ("Primary metric and analysis plan (Section 26.4)", "প্রধান মেট্রিক ও বিশ্লেষণ"),
  ("Resources and compute estimate (Section 26.5)", "সম্পদ ও compute"),
  ("Ethics and data management", "নৈতিকতা"),
  ("Main risks and fallbacks", "ঝুঁকি ও বিকল্প"),
  ("Timeline and milestones (Section 26.6)", "সময়রেখা ও মাইলফলক"),
  ("Expected contribution (Chapter 17)", "প্রত্যাশিত অবদান"),
  row-height: 1.15cm,
)

== Rebuttal Planner
<rebuttal-planner>
#bnsub(2)[Rebuttal পরিকল্পনা]
Before writing a rebuttal (Section 29.5), enter every review comment in a row, classify it with the table of Section 29.4, and note the evidence you will use and the change you will make. Answer the rows that matter most to the decision first.

#bn[Rebuttal লেখার আগে (Section 29.5) প্রতিটি review-মন্তব্য একটি সারিতে লিখুন, Section 29.4-এর টেবিল দিয়ে ধরন ঠিক করুন, আর কোন প্রমাণ ব্যবহার করবেন ও পেপারে কী বদলাবেন তা লিখুন। সিদ্ধান্তের জন্য সবচেয়ে গুরুত্বপূর্ণ সারিগুলোর উত্তর আগে দিন।]

#block(breakable: false, table(
  columns: (13%, 27%, 16%, 22%, 22%),
  rows: (auto,) + (1.05cm,) * 7,
  stroke: 0.5pt + rule-grey,
  inset: (x: 5pt, y: 4pt),
  table.header([No.], [Comment (short quote)], [Kind (29.4)], [Evidence], [Change in paper]),
  ..range(7).map(i => ([R#(i + 1)], [], [], [], [])).flatten(),
))

