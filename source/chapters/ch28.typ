#import "../template.typ": *

= Writing the Paper
<writing-the-paper>
#bnsub(1)[পেপার লেখা]
Chapter 27 ended with results. This chapter turns them into a paper. Chapter 7 taught you to read the anatomy of a paper; here you write each part yourself. The chapter starts from the single sentence your paper must deliver, goes through the paper section by section, shows how to report results without overclaiming, how to write related work that positions rather than lists, and how to write limitations, ethics statements and checklists. It closes with advice on clear academic English for writers whose first language is Bangla, and with step 3 of the mini-project: an outline and an abstract.

#bn[Chapter 27 শেষ হয়েছিল ফলাফল দিয়ে; এই chapter সেগুলোকে পেপারে রূপ দেয়। Chapter 7-এ পেপারের গঠন পড়তে শিখেছেন; এখানে প্রতিটি অংশ নিজে লিখবেন। শুরু সেই একটি বাক্য দিয়ে যা আপনার পেপারকে পৌঁছে দিতেই হবে; তারপর অংশ ধরে ধরে পেপার, অতিরঞ্জন ছাড়া ফলাফল রিপোর্ট, তালিকা নয় বরং অবস্থান বোঝানো related work, এবং সীমাবদ্ধতা, নৈতিকতার বিবৃতি ও checklist। শেষে বাংলাভাষী লেখকদের জন্য স্পষ্ট একাডেমিক ইংরেজির পরামর্শ, আর মিনি-প্রজেক্টের ধাপ ৩: কাঠামো ও abstract।]

== Your One-Sentence Contribution
<your-one-sentence-contribution>
#bnsub(2)[এক বাক্যে আপনার অবদান]
Mensh and Kording's first rule for structuring papers is to focus on a central contribution and communicate it in the title #cite(<ref125>). Before writing anything else, finish this sentence:

#quote(block: true)[
#emph[We show that] \[finding\], #emph[which matters because] \[consequence\].
]

If a colleague who reads only your title and abstract cannot repeat that sentence, the paper is not yet focused. The sentence must follow the results, not your hopes --- including when the result is null.

#figure(
  align(center)[#table(
    columns: (38%, 62%),
    align: (left,left,),
    table.header([Unfocused], [Focused (one possible outcome of the mini-project)],),
    table.hline(),
    [We apply BanglaBERT to Bangla sentiment analysis.], [When sentiment classifiers trained on Bangla book reviews are tested on social-media comments, a Bangla-specific model loses less macro-F1 than a multilingual one.],
    [We study domain shift in Bangla.], [Under a controlled comparison, Bangla-specific and multilingual models lose similar amounts of macro-F1 when moving from book reviews to social media, so the choice between them should rest on other factors such as cost.],
  )]
  , kind: table
  )

The two focused sentences are #strong[possible outcomes, not results]: which one you write depends on what Chapter 27's analysis shows. Write in the order that protects that sentence: tables and figures first, then results and method, then the introduction, and the abstract and title last. Mensh and Kording advise spending your time where readers spend theirs: on the title, the abstract, the figures and the outline #cite(<ref125>).

#bn[পেপার সাজানোর প্রথম নিয়ম: একটি কেন্দ্রীয় অবদানে মনোযোগ দিন এবং শিরোনামেই তা জানান #cite(<ref125>)। অন্য কিছু লেখার আগে এই বাক্যটি শেষ করুন: "আমরা দেখাই যে \[ফলাফল\], যা গুরুত্বপূর্ণ কারণ \[পরিণতি\]।" শুধু শিরোনাম ও abstract পড়ে একজন সহকর্মী বাক্যটি বলতে না পারলে পেপার এখনো কেন্দ্রীভূত হয়নি। বাক্যটি আসবে ফলাফল থেকে, আশা থেকে নয় --- null ফলাফল হলেও। টেবিলের দুটি কেন্দ্রীভূত বাক্য #strong[সম্ভাব্য ফল, প্রকৃত ফলাফল নয়]: কোনটি লিখবেন তা নির্ভর করে Chapter 27-এর বিশ্লেষণের ওপর। এমন ক্রমে লিখুন যা বাক্যটিকে রক্ষা করে: আগে টেবিল ও চিত্র, তারপর ফলাফল ও পদ্ধতি, তারপর ভূমিকা, আর শেষে abstract ও শিরোনাম। পাঠক যেখানে সময় দেন, আপনিও সেখানে দিন: শিরোনাম, abstract, চিত্র ও কাঠামো #cite(<ref125>)।]

== Section by Section
<section-by-section>
#bnsub(2)[অংশ ধরে ধরে]
The table mirrors the anatomy of Chapter 7, from the writer's side.

#figure(
  align(center)[#table(
    columns: (17%, 48%, 35%),
    align: (left,left,left,),
    table.header([Part], [Write it so that …], [Common mistake],),
    table.hline(),
    [#strong[Title]], [It states the central contribution, not just the topic], [A topic list ("Bangla, transformers and sentiment")],
    [#strong[Abstract]], [It tells the complete story: context, gap, approach, main result with its size, implication #cite(<ref125>)], [No numbers, or a result without its uncertainty],
    [#strong[Introduction]], [It moves from the problem to the gap, the question and a short list of contributions, and says why the work matters (Section 8.5)], [A history lesson before the problem appears],
    [#strong[Related work]], [It positions your work among the closest work (Section 28.4)], [One sentence per paper, with no comparison],
    [#strong[Method]], [Someone could reimplement it (Chapter 12)], [Missing choices that changed the results],
    [#strong[Experimental setup]], [Data, splits, baselines, tuning budget, seeds and compute are all stated (Chapter 27)], [Hyperparameters only for your own model],
    [#strong[Results]], [Each paragraph makes one claim, backed by a table or figure, primary result first], [A table with no claim, or a claim with no table],
    [#strong[Discussion]], [It explains how the results fill the gap, the limits of that interpretation, and why it matters to the field #cite(<ref125>)], [Repeating the numbers instead of interpreting them],
    [#strong[Limitations]], [Specific limits tied to the experiments (Section 28.5)], ["Future work could explore more data."],
    [#strong[Conclusion]], [It summarises what was shown, consistent with the abstract], [A new claim that appears nowhere else],
  )]
  , kind: table
  )

Inside each section and paragraph, follow the #strong[context--content--conclusion] pattern: say where you are, give the new material, then say what it means #cite(<ref125>).

#bn[টেবিলটি Chapter 7-এর গঠনকে লেখকের দিক থেকে দেখায়: শিরোনাম কেন্দ্রীয় অবদান বলবে, শুধু বিষয় নয়; abstract পুরো গল্প বলবে --- প্রেক্ষাপট, গ্যাপ, পদ্ধতি, আকারসহ প্রধান ফল, তাৎপর্য #cite(<ref125>)\; ভূমিকা সমস্যা থেকে গ্যাপ, প্রশ্ন ও অবদানের ছোট তালিকায় যাবে (Section 8.5); related work অবস্থান বোঝাবে (Section 28.4); পদ্ধতি এমন হবে যেন অন্য কেউ আবার বানাতে পারে (Chapter 12); experiment-এর সেটআপে ডেটা, split, বেসলাইন, tuning বাজেট, seed ও compute থাকবে (Chapter 27); ফলাফলের প্রতিটি অনুচ্ছেদ একটি দাবি করবে, টেবিল বা চিত্রের সমর্থনে, প্রধান ফল আগে; আলোচনা বলবে গ্যাপ কীভাবে পূরণ হলো, ব্যাখ্যার সীমা কী, আর ক্ষেত্রের জন্য কেন গুরুত্বপূর্ণ; সীমাবদ্ধতা হবে নির্দিষ্ট (Section 28.5); উপসংহার abstract-এর সাথে সামঞ্জস্যপূর্ণ সারাংশ, নতুন দাবি নয়। প্রতিটি অংশ ও অনুচ্ছেদে #strong[প্রেক্ষাপট--বিষয়বস্তু--সিদ্ধান্ত] ক্রম মানুন #cite(<ref125>)।]

== Honest Results
<honest-results>
#bnsub(2)[সৎ ফলাফল]
Lipton and Steinhardt describe four troubling trends in machine learning papers: failing to distinguish explanation from speculation; failing to identify the sources of empirical gains --- for example, crediting an architecture for a gain that came from hyperparameter tuning; "mathiness", mathematics that impresses rather than clarifies; and misuse of language #cite(<ref127>). Each has a simple guard:

- #strong[Separate what you showed from what you suspect.] Put speculation in the discussion, labelled as such.
- #strong[Attribute gains with ablations and equal tuning] (Sections 6.2 and 27.2).
- #strong[Use mathematics only where it makes a claim precise.]
- #strong[Make words match evidence] (table below).

Report every number with its spread (Chapter 27), present the primary comparison first, label secondary and exploratory analyses, and report null results and deviations from your plan (Section 26.4). In tables, mark the best result in bold only when the difference is supported by your analysis, and say whether error bars show a standard deviation or a confidence interval.

#bn[মেশিন লার্নিং পেপারের চারটি উদ্বেগজনক প্রবণতা: ব্যাখ্যা ও অনুমান আলাদা না করা; উন্নতির আসল উৎস চিহ্নিত না করা --- যেমন hyperparameter tuning-এর উন্নতিকে আর্কিটেকচারের কৃতিত্ব দেওয়া; প্রভাবিত করার জন্য গণিত, স্পষ্ট করার জন্য নয়; আর ভাষার অপব্যবহার #cite(<ref127>)। প্রতিটির সহজ প্রতিরোধ আছে: যা দেখিয়েছেন আর যা সন্দেহ করেন তা আলাদা রাখুন, অনুমান আলোচনায় চিহ্নিত করে দিন; ablation ও সমান tuning দিয়ে উন্নতির উৎস দেখান (Section 6.2 ও 27.2); গণিত শুধু দাবি সুনির্দিষ্ট করতে ব্যবহার করুন; আর শব্দকে প্রমাণের সাথে মেলান। প্রতিটি সংখ্যা তার ওঠানামাসহ দিন (Chapter 27), প্রধান তুলনা আগে দেখান, গৌণ ও অনুসন্ধানমূলক বিশ্লেষণ চিহ্নিত করুন, আর null ফলাফল ও পরিকল্পনা থেকে বিচ্যুতি রিপোর্ট করুন (Section 26.4)। টেবিলে সেরা ফল bold করুন কেবল তখনই যখন বিশ্লেষণ পার্থক্যটি সমর্থন করে, আর error bar standard deviation নাকি confidence interval দেখায় তা লিখুন।]

#figure(
  align(center)[#table(
    columns: (22%, 42%, 36%),
    align: (left,left,left,),
    table.header([Word], [Use it only when …], [Otherwise write],),
    table.hline(),
    ["significantly"], [A statistical test supports it, and you name the test], ["higher", "larger"],
    ["improves", "causes"], [A controlled experiment isolates the change], ["is associated with"],
    ["state of the art"], [Same benchmark and setting as the cited best results], ["competitive with \[named systems\]"],
    ["robust"], [You tested it under named shifts or perturbations], ["on the tested data"],
    ["generalises"], [You evaluated it out of distribution], ["on \[dataset\]"],
    ["solves"], [Almost never], ["reduces the error on …"],
  )]
  , kind: table
  )

#strong[Worked example: rewriting an overclaim.] A draft says: "Our model significantly outperforms all baselines (+0.4 macro-F1)." The analysis shows a 95% interval of −0.3 to 1.1 points for the difference. An honest version: "Our model scores 0.4 macro-F1 points higher than the strongest baseline, but the 95% confidence interval (−0.3 to 1.1) includes zero, so we cannot conclude that it is better."

#bn[শব্দ ও প্রমাণ মেলানোর টেবিল: "significantly" শুধু তখন, যখন পরিসংখ্যান test তা সমর্থন করে এবং test-এর নাম বলেন; "improves" বা "causes" শুধু নিয়ন্ত্রিত experiment-এ; "state of the art" শুধু একই benchmark ও পরিস্থিতিতে; "robust" শুধু নির্দিষ্ট পরিবর্তনের অধীনে পরীক্ষার পর; "generalises" শুধু distribution-এর বাইরে মূল্যায়নের পর; "solves" প্রায় কখনো নয়। #strong[উদাহরণ:] খসড়ায় লেখা "আমাদের মডেল সব বেসলাইনকে উল্লেখযোগ্যভাবে ছাড়িয়ে যায় (+০.৪ macro-F1)", অথচ পার্থক্যের ৯৫% interval −০.৩ থেকে ১.১। সৎ রূপ: "আমাদের মডেল সবচেয়ে শক্তিশালী বেসলাইনের চেয়ে ০.৪ macro-F1 পয়েন্ট বেশি পায়, কিন্তু ৯৫% confidence interval (−০.৩ থেকে ১.১) শূন্য অন্তর্ভুক্ত করে, তাই একে ভালো বলা যায় না।"]

== Related Work That Positions
<related-work-that-positions>
#bnsub(2)[অবস্থান বোঝানো related work]
Related work is not a list of summaries ("X did A. Y did B. Z did C."). It is an argument that ends in your gap. Group the closest work by approach or question --- the columns of your literature matrix (Chapter 9) show the groups --- and end each group with one sentence on how your work differs. End the section with the gap statement of Section 15.6. Cite fairly: include the strongest and most recent work, especially work that competes with yours, and verify every reference at its source (Section 23.2).

For the mini-project, three short paragraphs would do: Bangla sentiment datasets (SentNoB, BanglaBook, SentiGOLD); cross-dataset and cross-domain evaluation (SentiGOLD's tests on SentNoB, the BLP-2023 shared task, the 2025 preprint); and Bangla-specific versus multilingual pretraining (BanglaBERT, XLM-R) --- followed by the positioning sentence from Section 24.7.

#bn[Related work সারাংশের তালিকা নয় ("X করেছে A। Y করেছে B।"); এটি একটি যুক্তি, যা আপনার গ্যাপে গিয়ে শেষ হয়। নিকটতম কাজগুলোকে পদ্ধতি বা প্রশ্ন অনুযায়ী দলে সাজান --- literature matrix-এর (Chapter 9) কলামগুলোই দল দেখায় --- আর প্রতিটি দলের শেষে এক বাক্যে বলুন আপনার কাজ কোথায় আলাদা। অংশটি শেষ করুন Section 15.6-এর গ্যাপ স্টেটমেন্ট দিয়ে। ন্যায্যভাবে সাইট করুন: সবচেয়ে শক্তিশালী ও সাম্প্রতিক কাজ, বিশেষত আপনার প্রতিদ্বন্দ্বী কাজ রাখুন, আর প্রতিটি তথ্যসূত্র উৎসে যাচাই করুন (Section 23.2)। মিনি-প্রজেক্টের জন্য তিনটি ছোট অনুচ্ছেদই যথেষ্ট: বাংলা sentiment ডেটাসেট; cross-dataset ও cross-domain মূল্যায়ন; বাংলা-নির্দিষ্ট বনাম বহুভাষিক pretraining --- শেষে Section 24.7-এর অবস্থান-বাক্য।]

== Limitations, Ethics and Checklists
<limitations-ethics-and-checklists>
#bnsub(2)[সীমাবদ্ধতা, নৈতিকতা ও checklist]
Some venues now require a limitations section. As of late 2026, ACL Rolling Review gives limitations unlimited space after the conclusion and desk-rejects submissions that are "missing a limitations section" #cite(<ref128>). Good limitations are specific and tied to the experiments (Chapter 10, dimension 13):

#figure(
  align(center)[#table(
    columns: (35%, 65%),
    align: (left,left,),
    table.header([Vague], [Specific (mini-project)],),
    table.hline(),
    [Our study has some limitations.], [We test one shift, from book reviews to social-media comments; other domain pairs may behave differently.],
    [More data could help.], [SentNoB's annotators agreed only moderately (κ = 0.53), which limits the highest macro-F1 any model can reach on it.],
    [Results may not generalise.], [We excluded machine-translated reviews, so our results apply to text written in Bangla script, not to Romanised or code-mixed text.],
  )]
  , kind: table
  )

An #strong[ethics statement] covers the data sources and their licences, consent and privacy, how annotators were paid, foreseeable misuse, and compute (Sections 21.4 and 24.6). #strong[Checklists] --- reproducibility checklists #cite(<ref15>), ACL's Responsible NLP Checklist #cite(<ref90>) and your venue's AI-use rules (Section 23.6) --- are easiest to complete while you write, not on the night of the deadline.

#bn[কিছু venue এখন সীমাবদ্ধতা অংশ বাধ্যতামূলক করেছে: ২০২৬ সালের শেষ নাগাদ ACL Rolling Review উপসংহারের পরে সীমাবদ্ধতার জন্য সীমাহীন জায়গা দেয় এবং এই অংশ না থাকলে পেপার desk-reject করে #cite(<ref128>)। ভালো সীমাবদ্ধতা নির্দিষ্ট ও experiment-এর সাথে যুক্ত (Chapter 10, মাত্রা ১৩) --- টেবিলে অস্পষ্ট ও নির্দিষ্ট রূপের তুলনা দেখুন। #strong[নৈতিকতার বিবৃতিতে] থাকে ডেটার উৎস ও লাইসেন্স, সম্মতি ও গোপনীয়তা, annotator-দের পারিশ্রমিক, সম্ভাব্য অপব্যবহার ও compute (Section 21.4 ও 24.6)। #strong[Checklist] --- reproducibility checklist #cite(<ref15>), ACL-এর Responsible NLP Checklist #cite(<ref90>) এবং venue-এর এআই-ব্যবহারের নিয়ম (Section 23.6) --- লেখার সময়েই পূরণ করা সহজ, জমার আগের রাতে নয়।]

== Clear Academic English for Bangla Speakers
<clear-academic-english-for-bangla-speakers>
#bnsub(2)[বাংলাভাষীদের জন্য স্পষ্ট একাডেমিক ইংরেজি]
Clear English is about the reader's expectations. Gopen and Swan showed that readers look for context at the beginning of a sentence and expect the new, important information at the end, and that they expect the verb to follow the subject soon #cite(<ref126>). Put familiar information first, new information last, and keep subject and verb close.

Seven habits help most:

- One idea per sentence; split sentences that need two "which" clauses.
- Keep terms consistent: if you call it "the model", do not switch to "the system" and "the approach".
- Prefer the active voice when it is clearer: "We trained five seeds", not "Five seeds were trained by us".
- Use the past tense for what you did ("we trained") and the present for what the paper shows ("Table 2 shows").
- Define every abbreviation at its first use, and give units for every number.
- Bangla marks definiteness with classifiers such as -টি and -টা rather than with separate words like "a" and "the", so check articles deliberately.
- Remove empty intensifiers such as "very novel" and "huge improvement"; let the numbers speak.

#strong[Example.] "In this paper, a novel very effective model which is based on transformer for the sentiment analysis of Bangla text which is noisy is proposed by us." becomes "We propose a transformer model for sentiment analysis of noisy Bangla text."

When you use AI help, ask for corrections, not rewrites, and check every change for meaning (Section 23.5).

#bn[স্পষ্ট ইংরেজি মানে পাঠকের প্রত্যাশা পূরণ: পাঠক বাক্যের শুরুতে প্রেক্ষাপট আর শেষে নতুন ও গুরুত্বপূর্ণ তথ্য আশা করেন, এবং কর্তার পরেই দ্রুত ক্রিয়া আশা করেন #cite(<ref126>)। পরিচিত তথ্য আগে, নতুন তথ্য শেষে, আর কর্তা ও ক্রিয়া কাছাকাছি রাখুন। সাতটি অভ্যাস সবচেয়ে কাজে লাগে: প্রতি বাক্যে একটি ধারণা; একই জিনিসের একই নাম ("the model" বললে "the system" বা "the approach"-এ যাবেন না); স্পষ্ট হলে কর্তৃবাচ্য ("We trained five seeds"); যা করেছেন তার জন্য অতীত কাল, পেপার যা দেখায় তার জন্য বর্তমান কাল; প্রথম ব্যবহারে প্রতিটি সংক্ষিপ্ত রূপের সংজ্ঞা ও প্রতিটি সংখ্যার একক; বাংলায় নির্দিষ্টতা "a" বা "the"-এর মতো আলাদা শব্দে নয়, -টি, -টা-এর মতো নির্দেশকে বোঝানো হয়, তাই article আলাদা করে যাচাই করুন; আর "very novel" বা "huge improvement"-এর মতো ফাঁপা শব্দ বাদ দিন --- সংখ্যাকেই কথা বলতে দিন। এআই-এর সাহায্য নিলে পুনর্লিখন নয়, সংশোধন চান, আর প্রতিটি পরিবর্তনে অর্থ যাচাই করুন (Section 23.5)।]

== Mini-Project, Step 3: Outline and Abstract
<mini-project-step-3-outline-and-abstract>
#bnsub(2)[মিনি-প্রজেক্ট, ধাপ ৩: কাঠামো ও abstract]
Section 26.3 set the objective of a four-page workshop paper. An outline for it:

#figure(
  align(center)[#table(
    columns: (26%, 52%, 22%),
    align: (left,left,left,),
    table.header([Section], [Content], [Length],),
    table.hline(),
    [Introduction], [Mismatch between labelled data and deployment text; the narrowed gap; the question; three contributions], [½ page],
    [Related work], [The three groups of Section 28.4, ending in the gap statement], [½ page],
    [Data and models], [BanglaBook (Bangla-script reviews only) and SentNoB; majority, TF-IDF, XLM-R, BanglaBERT], [¾ page],
    [Experimental setup], [Splits, tuning on BanglaBook validation only, five seeds, metrics, bootstrap and Holm, compute], [½ page],
    [Results], [The results table of Section 27.9; the primary comparison first], [1 page],
    [Discussion], [What the drop means for practitioners; per-domain observations as exploratory], [½ page],
    [Limitations, ethics], [Section 28.5; licences and data use], [outside the page limit at ARR venues],
  )]
  , kind: table
  )

An abstract template, with brackets to fill from your results:

#quote(block: true)[
Bangla sentiment classifiers are often trained on one kind of text and used on another. We compare a lexical baseline, a multilingual model (XLM-R) and a Bangla-specific model (BanglaBERT) trained on book reviews labelled from star ratings and tested on social-media comments labelled by annotators, with five training seeds per model and bootstrap confidence intervals. All models lose \[X--Y\] macro-F1 points out of domain. BanglaBERT loses \[Z points less than / about as much as\] XLM-R (95% CI \[a, b\]). \[One sentence on what this means for choosing a model.\] We release our code and data splits.
]

Write only the version that your numbers support, after the numbers exist. A null result --- both models losing about the same --- is a legitimate finding, and the abstract should say so plainly.

#bn[Section 26.3-এ চার পৃষ্ঠার workshop পেপারের লক্ষ্য ঠিক হয়েছিল। টেবিলে এর কাঠামো: ভূমিকা (লেবেলযুক্ত ডেটা ও বাস্তবের লেখার অমিল, সংকীর্ণ গ্যাপ, প্রশ্ন, তিনটি অবদান), related work (Section 28.4-এর তিনটি দল), ডেটা ও মডেল, experiment-এর সেটআপ (split, শুধু BanglaBook validation-এ tuning, পাঁচটি seed, মেট্রিক, bootstrap ও Holm, compute), ফলাফল (Section 27.9-এর টেবিল, প্রধান তুলনা আগে), আলোচনা, এবং সীমাবদ্ধতা ও নৈতিকতা (ARR venue-তে পৃষ্ঠাসীমার বাইরে)। Abstract-এর ছাঁচে বন্ধনীর অংশগুলো আপনার ফলাফল থেকে পূরণ করবেন। সংখ্যা পাওয়ার পরেই, শুধু সেই রূপটি লিখুন যা আপনার সংখ্যা সমর্থন করে। Null ফলাফল --- দুটি মডেলের প্রায় সমান পতন --- একটি বৈধ আবিষ্কার, এবং abstract-এ তা সোজাসুজি বলা উচিত।]

== Exercises
<exercises-28>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ Write the one-sentence contribution, in the form "We show that …, which matters because …", for Example 2 of Section 16.5 (the skin-lesion classifier tested at other hospitals), assuming the hypothesis was supported.

  #bni[Section 16.5-এর Example 2-এর (অন্য হাসপাতালে পরীক্ষিত skin-lesion classifier) জন্য, hypothesis সমর্থিত হয়েছে ধরে নিয়ে, "আমরা দেখাই যে …, যা গুরুত্বপূর্ণ কারণ …" ছাঁচে এক বাক্যের অবদান লিখুন।]

+ Rewrite this sentence honestly: "Our method significantly outperforms the state of the art and generalises to all Bangla text." The facts: +0.6 macro-F1 over the best baseline, 95% CI −0.2 to 1.4, tested on one dataset of social-media comments.

  #bni[বাক্যটি সৎভাবে আবার লিখুন: "আমাদের পদ্ধতি state of the art-কে উল্লেখযোগ্যভাবে ছাড়িয়ে যায় এবং সব বাংলা লেখায় কাজ করে।" তথ্য: সেরা বেসলাইনের চেয়ে +০.৬ macro-F1, ৯৫% CI −০.২ থেকে ১.৪, শুধু একটি সোশ্যাল মিডিয়া ডেটাসেটে পরীক্ষিত।]

+ Turn this list into a positioning paragraph: "SentNoB is a Bangla sentiment dataset of social-media comments. BanglaBook is a dataset of book reviews. SentiGOLD covers 30 domains."

  #bni[এই তালিকাটিকে অবস্থান-বোঝানো অনুচ্ছেদে রূপ দিন: "SentNoB সোশ্যাল মিডিয়া মন্তব্যের একটি বাংলা sentiment ডেটাসেট। BanglaBook বই-রিভিউয়ের ডেটাসেট। SentiGOLD ৩০টি domain কভার করে।"]

+ Write three specific limitations for the Transformer paper of Chapter 25, as if you were its authors.

  #bni[Chapter 25-এর Transformer পেপারের জন্য, যেন আপনিই লেখক, তিনটি নির্দিষ্ট সীমাবদ্ধতা লিখুন।]

+ Improve this sentence: "The results which were obtained by the BanglaBERT model on the test set of SentNoB in terms of macro-F1 are shown in Table 3."

  #bni[বাক্যটি উন্নত করুন: "The results which were obtained by the BanglaBERT model on the test set of SentNoB in terms of macro-F1 are shown in Table 3."]

+ Fill the abstract template of Section 28.7 for an outcome in which H₁ is #emph[not] supported: both models lose about 9 points, and the 95% interval for the difference in their drops is −0.8 to 1.2. Write the implication sentence honestly.

  #bni[Section 28.7-এর abstract-এর ছাঁচ এমন ফলের জন্য পূরণ করুন যেখানে H₁ সমর্থিত #emph[নয়]: দুটি মডেলই প্রায় ৯ পয়েন্ট হারায়, আর তাদের পতনের পার্থক্যের ৯৫% interval −০.৮ থেকে ১.২। তাৎপর্যের বাক্যটি সৎভাবে লিখুন।]

#recap[
- Write the one-sentence contribution first, from the results, and make the title and abstract deliver it.

  #bni[ফলাফল থেকে আগে এক বাক্যের অবদান লিখুন, আর শিরোনাম ও abstract দিয়ে তা পৌঁছে দিন।]

- Each section has one job; in results, each paragraph makes one claim backed by a table or figure, primary result first.

  #bni[প্রতিটি অংশের একটি কাজ; ফলাফলে প্রতিটি অনুচ্ছেদ একটি দাবি করে, টেবিল বা চিত্রের সমর্থনে, প্রধান ফল আগে।]

- Make words match evidence: report spreads and intervals, attribute gains with ablations, and report null results.

  #bni[শব্দকে প্রমাণের সাথে মেলান: ওঠানামা ও interval দিন, ablation দিয়ে উন্নতির উৎস দেখান, null ফলাফল রিপোর্ট করুন।]

- Related work positions your contribution and ends in the gap; limitations are specific and tied to the experiments.

  #bni[Related work আপনার অবদানের অবস্থান দেখায় ও গ্যাপে শেষ হয়; সীমাবদ্ধতা নির্দিষ্ট ও experiment-এর সাথে যুক্ত।]

- Put context first and new information last, keep subject and verb close, and use one term for one thing.

  #bni[প্রেক্ষাপট আগে, নতুন তথ্য শেষে, কর্তা ও ক্রিয়া কাছাকাছি, আর এক জিনিসের এক নাম।]

]
