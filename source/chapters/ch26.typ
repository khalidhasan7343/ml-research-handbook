#import "../template.typ": *

= Writing a Research Proposal
<writing-a-research-proposal>
#bnsub(1)[রিসার্চ প্রপোজাল লেখা]
Chapter 16 ended with a research question and a testable hypothesis. Before you run a single experiment, you usually have to convince someone --- a supervisor, a thesis committee, a funding body --- that the question is worth answering and that you can answer it. That document is the #strong[research proposal]. This chapter shows what a proposal must achieve, how it is structured, how to turn your question into an aim and objectives, why the method and evaluation plan should be fixed before you see any results, how to check feasibility and plan for risks, and how to build a timeline. It ends with Step 1 of the mini-project that runs through Part VIII: a complete one-page proposal for a Bangla sentiment-classification study.

#bn[Chapter 16 শেষ হয়েছিল একটি রিসার্চ প্রশ্ন ও পরীক্ষাযোগ্য hypothesis দিয়ে। কিন্তু একটি experiment চালানোর আগেই সাধারণত কাউকে --- supervisor, thesis কমিটি বা অনুদানদাতা প্রতিষ্ঠানকে --- বোঝাতে হয় যে প্রশ্নটির উত্তর খোঁজা মূল্যবান এবং আপনি তা পারবেন। সেই নথিটিই #strong[রিসার্চ প্রপোজাল]। এই chapter-এ আছে: প্রপোজালের কাজ কী, এর গঠন কেমন, প্রশ্নকে কীভাবে লক্ষ্য (aim) ও উদ্দেশ্যে (objective) রূপ দেবেন, কেন ফলাফল দেখার আগেই পদ্ধতি ও মূল্যায়ন পরিকল্পনা ঠিক করবেন, কীভাবে সম্ভাব্যতা ও ঝুঁকি যাচাই করবেন, এবং কীভাবে সময়রেখা বানাবেন। শেষে আছে Part VIII জুড়ে চলা মিনি-প্রজেক্টের প্রথম ধাপ: একটি বাংলা sentiment classification গবেষণার পূর্ণ এক-পৃষ্ঠার প্রপোজাল।]

A proposal is also a plan for yourself. Writing it forces decisions you would otherwise postpone: which data, which baselines, which metric, how many runs, and what result would count as "no". Most of the problems that sink a thesis late --- an unusable dataset, an unfair comparison, a timeline with no slack --- are visible in a good proposal months earlier.

#bn[প্রপোজাল আসলে নিজের জন্যও একটি পরিকল্পনা। লিখতে গেলে এমন সিদ্ধান্ত নিতে হয় যা না হলে আপনি পিছিয়ে রাখতেন: কোন ডেটা, কোন বেসলাইন, কোন মেট্রিক, কতবার run, আর কোন ফলাফলকে "না" ধরবেন। যেসব সমস্যা শেষ মুহূর্তে একটি থিসিস ডুবিয়ে দেয় --- ব্যবহার-অযোগ্য ডেটাসেট, অন্যায্য তুলনা, কোনো বাড়তি সময় না রাখা সময়রেখা --- একটি ভালো প্রপোজালে সেগুলো কয়েক মাস আগেই চোখে পড়ে।]

== What a Proposal Must Convince a Reader Of
<what-a-proposal-must-convince-a-reader-of>
#bnsub(2)[প্রপোজাল পাঠককে কী বিষয়ে নিশ্চিত করবে]
Every reader of a proposal is asking three things: #emph[Is this worth doing? Can this person do it? Will we know whether it worked?] A widely used way to test a proposal against all three is the #strong[Heilmeier Catechism], the eight questions that DARPA asks of every new research programme #cite(<ref62>). They work just as well for a student project.

#figure(
  align(center)[#table(
    columns: (4%, 33%, 35%, 28%),
    align: (left,left,left,left,),
    table.header([], [Heilmeier question], [What it means in an ML proposal], [বাংলা],),
    table.hline(),
    [1], [What are you trying to do? Articulate your objectives using absolutely no jargon.], [Your aim, in one plain sentence a non-specialist could follow], [আপনি কী করতে চান? কোনো jargon ছাড়া বলুন।],
    [2], [How is it done today, and what are the limits of current practice?], [Existing work and its limitation --- your verified gap (Chapter 15)], [এখন কীভাবে হয়, আর তার সীমাবদ্ধতা কী?],
    [3], [What is new in your approach and why do you think it will be successful?], [Your research question, hypothesis and the reason to expect it to hold (Chapter 16)], [আপনার পদ্ধতিতে নতুন কী, কেন সফল হবে?],
    [4], [Who cares? If you are successful, what difference will it make?], [The expected contribution, and who would act on it (Chapter 17)], [কার কী আসে যায়? সফল হলে কী বদলাবে?],
    [5], [What are the risks?], [What could go wrong, and your plan for each (Section 26.5)], [ঝুঁকিগুলো কী?],
    [6], [How much will it cost?], [Data, compute, software, annotation --- in money or GPU-hours (Section 26.5)], [খরচ কত?],
    [7], [How long will it take?], [A timeline with slack (Section 26.6)], [কত সময় লাগবে?],
    [8], [What are the mid-term and final "exams" to check for success?], [Milestones, plus the evaluation plan: metrics, baselines and what counts as success (Sections 26.4 and 26.6)], [সাফল্য যাচাইয়ের মধ্যবর্তী ও চূড়ান্ত "পরীক্ষা" কী?],
  )]
  , kind: table
  )

If you can answer all eight in one page, you are ready to write the full proposal. If you cannot answer one of them, that is the part of the project you have not thought through yet.

#bn[প্রপোজালের প্রতিটি পাঠক তিনটি প্রশ্ন করেন: কাজটি কি করার মতো? এই ব্যক্তি কি এটি করতে পারবেন? কাজ হলো কিনা আমরা কীভাবে বুঝব? এগুলো যাচাইয়ের একটি জনপ্রিয় উপায় হলো Heilmeier Catechism --- DARPA প্রতিটি নতুন গবেষণা প্রোগ্রামের শুরুতে যে আটটি প্রশ্ন করে #cite(<ref62>)। শিক্ষার্থীর প্রজেক্টেও এগুলো একইভাবে কাজে লাগে। আটটির উত্তর এক পৃষ্ঠায় দিতে পারলে আপনি পূর্ণ প্রপোজাল লেখার জন্য প্রস্তুত। কোনো একটির উত্তর দিতে না পারলে, প্রজেক্টের ঠিক সেই অংশটিই আপনি এখনো ভেবে দেখেননি।]

== The Structure, Section by Section
<the-structure-section-by-section>
#bnsub(2)[প্রপোজালের গঠন: অংশ অনুযায়ী]
Universities and funders use different templates; if yours provides one, follow it exactly. Almost all of them ask for the same content, usually in this order. The lengths are a rough guide for a proposal of about 6--10 pages.

#figure(
  align(center)[#table(
    columns: (19%, 50%, 12%, 19%),
    align: (left,left,left,left,),
    table.header([Section], [What it must contain], [Length], [বাংলা],),
    table.hline(),
    [#strong[Title]], [The change, the outcome and the setting, in under 20 words], [1 line], [শিরোনাম],
    [#strong[Summary]], [Problem, gap, question, method and expected contribution --- the whole proposal in miniature], [150--250 words], [সারসংক্ষেপ],
    [#strong[Background and problem]], [Why the problem matters, with evidence; no history lesson], [½--1 page], [পটভূমি ও সমস্যা],
    [#strong[Related work and gap]], [What exists, organised by approach (your literature matrix, Chapter 9), ending in the gap statement (Section 15.6)], [1--2 pages], [সম্পর্কিত কাজ ও গ্যাপ],
    [#strong[Research questions and hypotheses]], [One main question and at most two or three sub-questions; H₁ and H₀ for each testable claim (Section 16.4)], [½ page], [রিসার্চ প্রশ্ন ও hypothesis],
    [#strong[Aim and objectives]], [One aim; three to five objectives that can each be checked off (Section 26.3)], [½ page], [লক্ষ্য ও উদ্দেশ্য],
    [#strong[Method and evaluation plan]], [Data, splits, models, baselines, metrics, number of runs, statistical tests (Section 26.4)], [1--2 pages], [পদ্ধতি ও মূল্যায়ন পরিকল্পনা],
    [#strong[Feasibility and resources]], [Data access and licences, compute, software, skills (Section 26.5)], [½ page], [সম্ভাব্যতা ও সম্পদ],
    [#strong[Ethics and data management]], [Consent, privacy, licences, storage, and what you will release (Section 21.4)], [¼--½ page], [নৈতিকতা ও ডেটা ব্যবস্থাপনা],
    [#strong[Timeline and milestones]], [Tasks per week or month, with milestones (Section 26.6)], [½ page], [সময়রেখা ও মাইলফলক],
    [#strong[Risks and mitigation]], [The main risks, each with likelihood, impact and a fallback (Section 26.5)], [¼--½ page], [ঝুঁকি ও প্রতিকার],
    [#strong[Expected contributions]], [What the field will know or have afterwards --- stated as outcomes you will measure, not promises], [¼ page], [প্রত্যাশিত অবদান],
    [#strong[References]], [Every source you used, in one consistent style], [---], [তথ্যসূত্র],
  )]
  , kind: table
  )

Two sections do most of the persuading. #emph[Related work and gap] convinces the reader that the question is open; #emph[method and evaluation plan] convinces them that you will answer it. Spend most of your effort there.

#bn[বিশ্ববিদ্যালয় ও অনুদানদাতারা ভিন্ন ভিন্ন টেমপ্লেট ব্যবহার করে; আপনার প্রতিষ্ঠানের নির্দিষ্ট টেমপ্লেট থাকলে হুবহু সেটি মানুন। তবে প্রায় সবগুলোই ওপরের বিষয়গুলো চায়, সাধারণত এই ক্রমেই। দুটি অংশ সবচেয়ে বেশি বোঝানোর কাজ করে: #emph[related work ও গ্যাপ] পাঠককে নিশ্চিত করে যে প্রশ্নটি এখনো খোলা, আর #emph[পদ্ধতি ও মূল্যায়ন পরিকল্পনা] নিশ্চিত করে যে আপনি এর উত্তর বের করতে পারবেন। পরিশ্রমের বড় অংশ এখানেই দিন।]

== From Gap and Question to Aim and Objectives
<from-gap-and-question-to-aim-and-objectives>
#bnsub(2)[গ্যাপ ও প্রশ্ন থেকে লক্ষ্য ও উদ্দেশ্য]
The research question says what you will find out. The #strong[aim] restates it as the purpose of the whole project, in one sentence. The #strong[objectives] break the aim into concrete steps, each of which you can finish and check. At the end of the project, a reader should be able to look at each objective and write "done" or "not done" beside it.

The usual test for an objective is that it is #strong[SMART]: specific, measurable, achievable, relevant and time-bound. The acronym is usually traced to a 1981 management article by Doran #cite(<ref63>)\; versions differ on what each letter stands for, but the idea is the same --- an objective you cannot check is only a wish.

#bn[রিসার্চ প্রশ্ন বলে আপনি কী জানবেন। #strong[লক্ষ্য (aim)] সেটিকেই পুরো প্রজেক্টের উদ্দেশ্য হিসেবে এক বাক্যে বলে। #strong[উদ্দেশ্যগুলো (objectives)] লক্ষ্যটিকে এমন বাস্তব ধাপে ভাগ করে, যার প্রতিটি শেষ করা ও যাচাই করা যায় --- প্রজেক্ট শেষে প্রতিটির পাশে "হয়েছে" বা "হয়নি" লেখা যাবে। ভালো objective হয় SMART: নির্দিষ্ট (specific), পরিমাপযোগ্য (measurable), অর্জনযোগ্য (achievable), প্রাসঙ্গিক (relevant) ও সময়-নির্দিষ্ট (time-bound) #cite(<ref63>)। যে objective যাচাই করা যায় না, সেটি আসলে একটি ইচ্ছা মাত্র।]

#figure(
  align(center)[#table(
    columns: (26%, 46%, 28%),
    align: (left,left,left,),
    table.header([Weak objective], [SMART objective], [Why it is better],),
    table.hline(),
    [Study Bangla sentiment analysis.], [By week 4, build a TF-IDF + logistic regression baseline and report its macro-F1 on the validation set.], [Names the output, the metric and the deadline],
    [Use deep learning.], [By week 7, fine-tune XLM-R and BanglaBERT with five seeds each, on the same split and with the same tuning budget.], [Names the models and the controls],
    [Achieve state-of-the-art results.], [Measure each model's macro-F1 drop from in-domain to out-of-domain test data, with 95% confidence intervals.], [You cannot promise a result; you can promise a measurement],
    [Write a paper.], [By week 12, submit a four-page workshop paper that reports every result, including negative ones.], [Checkable and dated],
  )]
  , kind: table
  )

The third row matters most. Objectives describe what you will #emph[do and measure], never what the results will be. "Improve accuracy by 5%" is a hypothesis, not an objective --- and if it fails, an objective written that way makes the whole project look like a failure even when you have learned something real.

#bn[তৃতীয় সারিটিই সবচেয়ে গুরুত্বপূর্ণ। Objective বলবে আপনি কী #emph[করবেন ও মাপবেন] --- ফলাফল কী হবে তা নয়। "accuracy ৫% বাড়াব" একটি hypothesis, objective নয়; আর এভাবে লিখলে ফলাফল প্রত্যাশামতো না এলে পুরো প্রজেক্টকেই ব্যর্থ মনে হবে, যদিও আপনি সত্যিকারের কিছু শিখেছেন।]

== The Method and Evaluation Plan: Decide Before You See Results
<the-method-and-evaluation-plan-decide-before-you-see-results>
#bnsub(2)[পদ্ধতি ও মূল্যায়ন পরিকল্পনা: ফলাফল দেখার আগেই সিদ্ধান্ত]
The method section is where a proposal becomes a commitment. It should fix, in writing, every choice that could otherwise drift once results start to arrive.

The reason is simple. Once you have seen results, it is very easy --- and usually unconscious --- to pick the metric, the subset or the comparison that makes your method look best, and then to tell the story as if you had planned it from the start. Kerr named the second half of this pattern #strong[HARKing]: hypothesizing after the results are known #cite(<ref64>). Writing your plan down first is a simple form of #strong[preregistration]. It separates the predictions you made in advance from the patterns you discovered afterwards; both are legitimate, as long as each is labelled honestly #cite(<ref65>).

#bn[পদ্ধতি অংশেই প্রপোজাল একটি প্রতিশ্রুতিতে পরিণত হয়। ফলাফল আসতে শুরু করলে যে সিদ্ধান্তগুলো বদলে যেতে পারে, সেগুলো এখানে লিখে ঠিক করে ফেলুন। কারণ ফলাফল দেখার পর এমন মেট্রিক, ডেটার অংশ বা তুলনা বেছে নেওয়া খুব সহজ --- এবং প্রায়ই অজান্তে --- যাতে আপনার পদ্ধতি সবচেয়ে ভালো দেখায়, আর তারপর গল্পটি এমনভাবে বলা যেন শুরু থেকেই তা পরিকল্পিত ছিল। Kerr এর দ্বিতীয় অংশের নাম দিয়েছেন HARKing: ফলাফল জানার পরে hypothesis বানানো #cite(<ref64>)। আগে থেকে পরিকল্পনা লিখে রাখা হলো #strong[preregistration]-এর একটি সহজ রূপ। এটি আগে করা ভবিষ্যদ্বাণী আর পরে খুঁজে পাওয়া প্যাটার্নকে আলাদা রাখে; সৎভাবে চিহ্নিত করা হলে দুটিই বৈধ #cite(<ref65>)।]

#figure(
  align(center)[#table(
    columns: (19%, 52%, 29%),
    align: (left,left,left,),
    table.header([Decide in advance], [What to write in the proposal], [বাংলা],),
    table.hline(),
    [#strong[Data and splits]], [Which datasets and versions, how they are split, and that the test set is used only once (Section 5.6)], [ডেটাসেট, সংস্করণ ও split; test set একবারই],
    [#strong[Baselines]], [The simple and strong baselines your method must beat, tuned with the same effort (Section 6.1)], [সহজ ও শক্তিশালী বেসলাইন, সমান tuning-সহ],
    [#strong[Primary metric]], [The one metric that decides the main question, and why it fits the data --- for example macro-F1 for imbalanced classes (Section 5.2)], [একটিই প্রধান মেট্রিক, এবং কেন সেটি],
    [#strong[Secondary analyses]], [Per-class scores, error analysis, ablations --- labelled as secondary or exploratory], ["গৌণ" বা "অনুসন্ধানমূলক" হিসেবে চিহ্নিত বিশ্লেষণ],
    [#strong[Runs and seeds]], [How many random seeds per configuration, and how you will report spread (mean ± standard deviation)], [প্রতি কনফিগারেশনে কয়টি seed, বিস্তার কীভাবে],
    [#strong[Tuning budget]], [Which hyperparameters, which ranges and how many trials --- the same for every model #cite(<ref66>)], [সব মডেলের জন্য একই tuning বাজেট],
    [#strong[Statistical test]], [Which test and significance level, and how you will correct for multiple comparisons (Section 6.7; Chapter 27)], [কোন test, কোন level, কোন সংশোধন],
    [#strong[What counts as "no"]], [The result that would not support H₁ --- for example, a difference whose 95% confidence interval includes zero], [কোন ফলাফল H₁-কে সমর্থন করবে না],
  )]
  , kind: table
  )

You may still change the plan: a dataset turns out to be broken, or a model will not fit in memory. That is normal. What matters is that you record the change, the reason and the date, and report it in the paper. A deviation you disclose is a detail; a deviation you hide is a red flag (Chapter 11). The reproducibility checklists that many venues now ask for (Chapter 12) are much easier to complete when your proposal has already answered most of their questions #cite(<ref15>).

#bn[পরিকল্পনা পরে বদলাতেই পারে --- ডেটাসেট ত্রুটিপূর্ণ বেরোতে পারে, মডেল memory-তে না-ও আঁটতে পারে; এটি স্বাভাবিক। জরুরি হলো পরিবর্তন, কারণ ও তারিখ লিখে রাখা এবং পেপারে তা জানানো। জানানো বিচ্যুতি একটি সাধারণ তথ্য; লুকানো বিচ্যুতি একটি red flag (Chapter 11)। অনেক venue এখন যে reproducibility checklist চায় (Chapter 12), প্রপোজালে সেসব প্রশ্নের উত্তর আগেই থাকলে তা পূরণ করা অনেক সহজ হয় #cite(<ref15>)।]

== Feasibility, Resources and Risks
<feasibility-resources-and-risks>
#bnsub(2)[সম্ভাব্যতা, সম্পদ ও ঝুঁকি]
A brilliant question you cannot finish is worth less than a modest one you can. Check feasibility on four fronts before you commit:

- #strong[Data.] Does the data exist, can you download it today, and does its licence allow your use? Read the licence before you plan around a dataset. In the mini-project below, two of the four resources are licensed for non-commercial use only, and a third forbids distributing modified versions. You can still use them for a thesis, but the licences limit what you may release.
- #strong[Compute.] Estimate it with arithmetic, then check the estimate with a pilot run (worked example below).
- #strong[Time.] Count the weeks you really have, after exams, teaching and holidays.
- #strong[Skills.] If the method needs something you have never done --- fine-tuning a transformer, running a significance test --- schedule time to learn it.

#bn[অসাধারণ কিন্তু শেষ করা যায় না এমন প্রশ্নের চেয়ে সাদামাটা কিন্তু শেষ করা যায় এমন প্রশ্ন বেশি মূল্যবান। চারটি দিক যাচাই করুন। #strong[ডেটা:] আছে কি, আজই ডাউনলোড করা যায় কি, লাইসেন্স আপনার ব্যবহারের অনুমতি দেয় কি? নিচের মিনি-প্রজেক্টের চারটি সম্পদের দুটি শুধু অ-বাণিজ্যিক ব্যবহারের জন্য, আর তৃতীয়টি পরিবর্তিত সংস্করণ বিতরণ নিষেধ করে --- থিসিসে ব্যবহার করা যাবে, কিন্তু কী প্রকাশ করবেন তা সীমিত হবে। #strong[Compute:] হিসাব করে অনুমান করুন, তারপর pilot run দিয়ে যাচাই করুন। #strong[সময়:] পরীক্ষা, ক্লাস ও ছুটি বাদ দিয়ে আসলে কত সপ্তাহ আছে গুনুন। #strong[দক্ষতা:] পদ্ধতিতে নতুন কিছু লাগলে শেখার সময় রাখুন।]

#strong[Worked example: estimating compute (illustrative numbers).] You plan to fine-tune two transformer models. For each one you will try 6 hyperparameter settings, then train the best setting with 5 seeds on each of two training sets (the main experiment and an in-domain reference). A pilot run --- one full training run on your data and your GPU --- takes 40 minutes.

$ "runs" = 2 times (6 + 5 times 2) = 32 $
$ 32 times 40 "min" = 1280 "min" approx 21.3 "GPU-hours" $
$ 21.3 times 1.5 approx 32 "GPU-hours, with a 50% margin for failed runs and debugging" $

If you can use a GPU for about 12 hours a week, that is roughly three weeks of compute, and it must appear in your timeline. Never postpone the pilot run: measuring one real run in the first weeks replaces a guess with a number, and it often reveals problems --- out-of-memory errors, slow data loading --- while there is still time to change the plan.

#bn[#strong[উদাহরণ (কাল্পনিক সংখ্যা):] দুটি মডেলের প্রতিটির জন্য ৬টি hyperparameter সেটিং, তারপর সেরা সেটিংটি ৫টি seed-এ দুটি training set-এ --- মোট ৩২টি run। একটি pilot run-এ ৪০ মিনিট লাগলে মোট প্রায় ২১.৩ GPU-ঘণ্টা; ব্যর্থ run ও debugging-এর জন্য ৫০% যোগ করলে প্রায় ৩২ GPU-ঘণ্টা। সপ্তাহে ১২ ঘণ্টা GPU পেলে এটি প্রায় তিন সপ্তাহের কাজ, যা সময়রেখায় থাকতে হবে। Pilot run কখনো পিছিয়ে রাখবেন না: শুরুতেই একটি বাস্তব run মাপলে অনুমানের জায়গায় একটি সংখ্যা পাবেন, আর memory বা ডেটা লোডিংয়ের সমস্যা সময় থাকতেই ধরা পড়বে।]

Every proposal should list its main risks, each with a likelihood, an impact and a fallback. The point is not to predict everything; it is to show that a single failure will not sink the project. These risks appear in almost every ML project:

#figure(
  align(center)[#table(
    columns: (30%, 13%, 11%, 46%),
    align: (left,left,left,left,),
    table.header([Risk], [Likelihood], [Impact], [Mitigation],),
    table.hline(),
    [The gap has already been addressed], [Medium], [High], [Verify the gap (Chapter 15) before submitting the proposal; prepare a narrower fallback question],
    [Dataset unavailable, broken or wrongly licensed], [Low--medium], [High], [Check access and licence now; name a backup dataset],
    [Not enough compute], [Medium], [Medium], [Pilot run first; a smaller model or shorter inputs as fallback; never fewer than three seeds],
    [The method does not beat the baseline], [Medium], [Low], [Design the study so that a negative result is still informative (see below)],
    [A key person is unavailable (supervisor, annotator)], [Low], [Medium], [Agree a meeting schedule and annotation timeline in advance],
  )]
  , kind: table
  )

The fourth row deserves a second look. If your project only produces something worth reporting when your method wins, the project itself is the risk. A question such as "how much does performance drop, and which model drops least?" has a useful answer whatever the numbers turn out to be.

#bn[প্রতিটি প্রপোজালে প্রধান ঝুঁকিগুলো, তাদের সম্ভাবনা, প্রভাব ও বিকল্প পরিকল্পনা থাকা উচিত। উদ্দেশ্য সবকিছু আগাম বলা নয়; বরং দেখানো যে একটিমাত্র ব্যর্থতা পুরো প্রজেক্ট ডুবিয়ে দেবে না। টেবিলের চতুর্থ সারিটি আবার দেখুন: যদি প্রজেক্ট শুধু তখনই রিপোর্ট করার মতো কিছু দেয় যখন আপনার পদ্ধতি জেতে, তাহলে প্রজেক্টটিই একটি ঝুঁকি। "পারফরম্যান্স কতটা কমে, আর কোন মডেল সবচেয়ে কম হারায়?" --- এমন প্রশ্নের উত্তর সংখ্যা যা-ই হোক, কাজে লাগে।]

== Timeline and Milestones
<timeline-and-milestones>
#bnsub(2)[সময়রেখা ও মাইলফলক]
A timeline turns objectives into weeks. Break the work into tasks, give each a start and an end, and mark the #strong[milestones]: points where something checkable exists --- a clean dataset, a baseline result, a draft. Milestones are the "mid-term and final exams" of the Heilmeier Catechism; they let you and your supervisor see early when a project is slipping.

Three habits make a timeline realistic. Write in parallel with the experiments, not after them --- the method section can be drafted as soon as the baselines run. Keep a buffer: here, about a week and a half of the twelve. And schedule the pilot run first, because every other estimate depends on it.

#bn[সময়রেখা objective-গুলোকে সপ্তাহে রূপ দেয়। কাজগুলো ভাগ করুন, প্রতিটির শুরু ও শেষ ঠিক করুন, আর #strong[মাইলফলক] চিহ্নিত করুন --- এমন বিন্দু যেখানে যাচাইযোগ্য কিছু তৈরি থাকে: পরিষ্কার ডেটাসেট, বেসলাইন ফলাফল, খসড়া। মাইলফলকগুলোই Heilmeier Catechism-এর "মধ্যবর্তী ও চূড়ান্ত পরীক্ষা"; এগুলো দেখে আপনি ও আপনার supervisor আগেভাগেই বুঝবেন প্রজেক্ট পিছিয়ে পড়ছে কিনা। ওপরের মিনি-প্রজেক্টে পাঁচটি মাইলফলক: অনুমোদিত প্রপোজাল (সপ্তাহ ২), বেসলাইন ফলাফল (সপ্তাহ ৪), সব মূল run শেষ (সপ্তাহ ৭), পূর্ণ খসড়া (সপ্তাহ ১১) ও জমা (সপ্তাহ ১২)। তিনটি অভ্যাস সময়রেখাকে বাস্তবসম্মত করে: experiment শেষ হওয়ার অপেক্ষা না করে সমান্তরালে লিখুন; বাড়তি সময় রাখুন; আর pilot run সবার আগে করুন, কারণ বাকি সব অনুমান এর ওপর নির্ভর করে।]

The chart below is the twelve-week timeline of the mini-project in Section 26.7. Its five milestones are an approved proposal (week 2), a baseline results table (week 4), all main runs finished (week 7), a complete draft (week 11) and the submission (week 12).

#timeline-chart(weeks: 12,
  ("Verify the gap; finalise the proposal", "গ্যাপ যাচাই; প্রপোজাল চূড়ান্ত", 1, 2, true),
  ("Prepare data; pilot run", "ডেটা প্রস্তুতি; pilot run", 2, 3, false),
  ("Baselines: majority, TF-IDF + LR", "বেসলাইন", 3, 4, true),
  ("Fine-tune XLM-R and BanglaBERT", "XLM-R ও BanglaBERT fine-tuning", 5, 7, true),
  ("Statistical analysis", "পরিসংখ্যানগত বিশ্লেষণ", 8, 8, false),
  ("Error analysis by class and domain", "শ্রেণি ও domain অনুযায়ী ত্রুটি বিশ্লেষণ", 8, 9, false),
  ("Write the method section", "পদ্ধতি অংশ লেখা", 4, 5, false),
  ("Write the full paper", "পুরো পেপার লেখা", 9, 11, true),
  ("Buffer; revise and submit", "বাড়তি সময়; সংশোধন ও জমা", 11, 12, true),
)

== Mini-Project, Step 1: A One-Page Proposal
<mini-project-step-1-a-one-page-proposal>
#bnsub(2)[মিনি-প্রজেক্ট, ধাপ ১: এক পৃষ্ঠার প্রপোজাল]
Part VIII follows one small research project from proposal to submission. In Section 24.7 we chose a candidate gap and then narrowed it after searching the literature: cross-dataset tests of Bangla sentiment models exist, but the search found no controlled comparison of model families on the shift from rating-labelled book reviews to annotator-labelled social-media comments. Below is the complete one-page proposal for testing that. The datasets, models and their properties are real and cited. The gap reflects a search made in late 2026: #strong[repeat it] (Chapter 15) before relying on it.

#bn[Part VIII একটি ছোট গবেষণা প্রজেক্টকে প্রপোজাল থেকে জমা দেওয়া পর্যন্ত অনুসরণ করে। Section 24.7-এ আমরা একটি সম্ভাব্য গ্যাপ বেছে নিয়ে সাহিত্য অনুসন্ধানের পর তা সংকীর্ণ করেছিলাম: বাংলা sentiment মডেলের cross-dataset পরীক্ষা আছে, কিন্তু rating-এর label-যুক্ত বই-রিভিউ থেকে annotator-এর label-যুক্ত সোশ্যাল মিডিয়া মন্তব্যে যাওয়ার পরিবর্তনে মডেল-পরিবারের নিয়ন্ত্রিত তুলনা অনুসন্ধানে পাওয়া যায়নি। নিচে সেটি পরীক্ষার পূর্ণ এক-পৃষ্ঠার প্রপোজাল। ডেটাসেট, মডেল ও তাদের বৈশিষ্ট্য বাস্তব ও সাইটেড; গ্যাপটি ২০২৬ সালের শেষে করা অনুসন্ধানের ফল --- ব্যবহারের আগে Chapter 15-এর পদ্ধতিতে #strong[আবার অনুসন্ধান করুন]।]

#figure(
  align(center)[#table(
    columns: (19%, 81%),
    align: (left,left,),
    table.header([Section], [Content],),
    table.hline(),
    [#strong[Title]], [Do Bangla Sentiment Classifiers Trained on Book Reviews Work on Social-Media Comments? A Cross-Domain Study],
    [#strong[Aim]], [To measure how well three-class Bangla sentiment classifiers trained on one kind of text transfer to another, and whether a Bangla-specific pretrained model transfers better than a multilingual model or a simple lexical baseline.],
    [#strong[Gap] (Section 24.7)], [Cross-dataset tests of Bangla sentiment models exist #cite(<ref100>), but the search in Section 24.7 found no controlled comparison of lexical, multilingual and Bangla-specific models on the shift from edited book reviews labelled from star ratings #cite(<ref68>) to noisy social-media comments labelled by annotators #cite(<ref67>). Gap type: generalization (Section 13.13).],
    [#strong[Research question]], [How much does macro-F1 drop when a classifier trained on BanglaBook is tested on SentNoB instead of on BanglaBook's own test set, and does BanglaBERT drop less than XLM-R and a TF-IDF baseline?],
    [#strong[Hypotheses]], [H₁: every model loses macro-F1 out of domain, and BanglaBERT loses less than XLM-R. H₀: the drop does not differ between BanglaBERT and XLM-R.],
    [#strong[Data]], [#emph[BanglaBook] #cite(<ref68>): 158,065 book reviews, labelled from ratings (1--2 negative, 3 neutral, 4--5 positive); about 90% are positive. We use only the 89,371 reviews originally written in Bangla, because the other 68,694 were machine-translated into Bangla. Licence: CC BY-NC-SA 4.0. \ #emph[SentNoB] #cite(<ref67>): 15,728 public comments on news and videos from 13 domains, each labelled by three annotators (Fleiss' κ = 0.53, moderate agreement); official 80/10/10 split. Licence: listed as CC BY-ND 4.0 on its dataset card.],
    [#strong[Models]], [Majority class; TF-IDF word and character n-grams with logistic regression (lexical features were the strongest system in the SentNoB paper); XLM-R base #cite(<ref70>), MIT licence; BanglaBERT #cite(<ref69>), CC BY-NC-SA 4.0.],
    [#strong[Evaluation plan]], [Primary metric: macro-F1 on the SentNoB test set (accuracy would reward always predicting "positive"). Hyperparameters are tuned on BanglaBook validation data only; the SentNoB test set is used once, at the end. Five seeds per transformer, reported as mean ± standard deviation, with 95% bootstrap confidence intervals and paired tests with Holm correction (Chapter 27). Reference ceiling: the same models trained on SentNoB. Secondary: per-class F1 and errors by domain.],
    [#strong[Resources]], [One free or university cloud GPU; about 32 GPU-hours by the estimate in Section 26.5, to be confirmed by a pilot run in week 2.],
    [#strong[Ethics]], [Published datasets only; no new annotation. The comments are public but written by real people: quote only short, anonymised examples. Non-commercial research use only; release code and the IDs of the reviews used, not modified copies of the data.],
    [#strong[Main risks]], [(1) A study with this design appears: repeat the search of Section 24.7 before starting; fallback question --- which SentNoB domains are hardest for each model. (2) The labels mean different things (star ratings vs annotator judgement, κ = 0.53): report confusion matrices and a secondary positive-vs-negative analysis. (3) Compute runs out: three seeds minimum, shorter maximum input length.],
    [#strong[Contribution]], [A measured estimate, with confidence intervals, of how well Bangla sentiment models survive a change of domain, plus public code and data splits --- a new empirical finding about generalization (Chapter 17, types 8 and 10) whose value does not depend on which model wins.],
    [#strong[Timeline]], [Twelve weeks with five milestones (Section 26.6).],
  )]
  , kind: table
  )

#bn[এক নজরে প্রপোজাল: #strong[প্রশ্ন] --- BanglaBook-এ train করা classifier SentNoB-এ test করলে macro-F1 কতটা কমে, আর BanglaBERT কি XLM-R ও TF-IDF বেসলাইনের চেয়ে কম হারায়? #strong[ডেটা] --- BanglaBook-এর ১,৫৮,০৬৫টি বই-রিভিউ (rating থেকে label, প্রায় ৯০% positive; শুধু মূলত বাংলায় লেখা ৮৯,৩৭১টি ব্যবহার), আর SentNoB-এর ১৫,৭২৮টি সোশ্যাল মিডিয়া মন্তব্য (তিনজন annotator, Fleiss' κ = ০.৫৩)। #strong[মূল্যায়ন] --- SentNoB test set-এ macro-F1, শুধু BanglaBook validation-এ tuning, test set একবারই, প্রতি মডেলে ৫টি seed, bootstrap confidence interval। #strong[ঝুঁকি] --- গ্যাপ আগেই পূরণ হয়ে থাকতে পারে, দুই ডেটাসেটের label-এর অর্থ আলাদা, compute ফুরিয়ে যেতে পারে --- প্রতিটির বিকল্প পরিকল্পনা আছে।]

Notice how each row answers one of the Heilmeier questions, and how much of Section 26.4 is already decided: the primary metric, the test-set rule, the seeds, the tuning data and the fallback. Two design choices deserve a word. The machine-translated reviews are excluded because translated text differs systematically from text written directly in Bangla; keeping them would mix two kinds of domain shift and make the result hard to interpret. And the TF-IDF baseline is not a formality: the SentNoB authors found that lexical features outperformed the neural and pretrained models they tried #cite(<ref67>). Chapter 27 runs this plan; it will not need to invent anything new.

#bn[লক্ষ করুন, প্রপোজালের প্রতিটি সারি Heilmeier-এর কোনো না কোনো প্রশ্নের উত্তর দেয়, আর Section 26.4-এর বেশিরভাগ সিদ্ধান্ত আগেই নেওয়া হয়ে গেছে: প্রধান মেট্রিক, test set-এর নিয়ম, seed, tuning-এর ডেটা, বিকল্প পরিকল্পনা। দুটি সিদ্ধান্তের ব্যাখ্যা দরকার। মেশিনে অনূদিত reviewগুলো বাদ দেওয়া হয়েছে, কারণ অনূদিত লেখা সরাসরি বাংলায় লেখা টেক্সট থেকে নিয়মিতভাবে আলাদা; এগুলো রাখলে দুই ধরনের domain shift মিশে যেত, আর ফলাফল ব্যাখ্যা করা কঠিন হতো। আর TF-IDF বেসলাইন নিছক আনুষ্ঠানিকতা নয়: SentNoB-এর লেখকরা দেখেছেন, তাঁদের চেষ্টা করা neural ও pretrained মডেলের চেয়ে lexical feature ভালো করেছে #cite(<ref67>)। Chapter 27 এই পরিকল্পনাই চালাবে --- নতুন কিছু উদ্ভাবন করতে হবে না।]

== Why Proposals Get Rejected
<why-proposals-get-rejected>
#bnsub(2)[প্রপোজাল কেন বাতিল হয়]
The same weaknesses appear in proposal after proposal. Each has a fix you can apply before you submit.

#figure(
  align(center)[#table(
    columns: (21%, 36%, 43%),
    align: (left,left,left,),
    table.header([Problem], [How it shows], [Fix],),
    table.hline(),
    [#strong[Too broad]], ["Improve Bangla NLP"], [One question, one setting, one metric (Section 16.2)],
    [#strong[Gap assumed, not verified]], ["No one has studied …" with no search described], [Describe your search and cite the closest work (Chapter 15)],
    [#strong[Method does not answer the question]], [A question about robustness, but experiments on a single test set], [Check that every objective and experiment maps to the question (Section 16.1)],
    [#strong[No serious baseline]], [Comparison only with an old or untuned model], [Include simple and strong baselines with equal tuning (Section 6.1)],
    [#strong[Results promised]], ["We will achieve state-of-the-art performance"], [Promise measurements, not outcomes (Section 26.3)],
    [#strong[Unrealistic timeline]], [All experiments in week 10, writing in week 12], [Pilot run first; write in parallel; keep a buffer (Section 26.6)],
    [#strong[Risks ignored]], [No risk section, or "no risks are expected"], [List three real risks, each with a fallback (Section 26.5)],
    [#strong[Ethics and licences missing]], [Scraped data with no mention of consent or licence], [State licences, consent and what you will release (Section 21.4)],
    [#strong[Unclear contribution]], ["We apply X to Y"], [Say what the field will know or have afterwards (Chapter 17)],
  )]
  , kind: table
  )

#bn[একই দুর্বলতাগুলো একের পর এক প্রপোজালে দেখা যায়: অতিরিক্ত বিস্তৃত প্রশ্ন, যাচাই না করা গ্যাপ, প্রশ্নের উত্তর দেয় না এমন পদ্ধতি, দুর্বল বেসলাইন, ফলাফলের প্রতিশ্রুতি, অবাস্তব সময়রেখা, ঝুঁকি উপেক্ষা, নৈতিকতা ও লাইসেন্সের অনুপস্থিতি, এবং অস্পষ্ট অবদান। প্রতিটির সমাধান জমা দেওয়ার আগেই প্রয়োগ করা যায় --- টেবিলের শেষ কলামে তা দেওয়া আছে।]

== Exercises
<exercises-26>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ Answer the eight Heilmeier questions (Section 26.1) for a research question of your own, or for Example 2 in Section 16.5, in at most two sentences each. Which answer was hardest to write, and what does that tell you about the project?

  #bni[নিজের একটি রিসার্চ প্রশ্নের (অথবা Section 16.5-এর Example 2-এর) জন্য Heilmeier-এর আটটি প্রশ্নের উত্তর দিন, প্রতিটি সর্বোচ্চ দুই বাক্যে। কোন উত্তরটি লেখা সবচেয়ে কঠিন ছিল, এবং তা প্রজেক্ট সম্পর্কে কী বলে?]

+ Rewrite each of these as a SMART objective: (a) "Explore transformers for fake-news detection." (b) "Get better results than previous work." (c) "Collect a dataset."

  #bni[এগুলোকে SMART objective হিসেবে আবার লিখুন: (ক) "fake-news শনাক্তকরণে transformer নিয়ে কাজ করা", (খ) "আগের কাজের চেয়ে ভালো ফলাফল পাওয়া", (গ) "একটি ডেটাসেট সংগ্রহ করা"।]

+ A proposal says: "We will report whichever of accuracy, macro-F1 or AUC best shows our improvement." Explain what is wrong, using the terms HARKing and preregistration, and rewrite the sentence.

  #bni[একটি প্রপোজালে লেখা: "accuracy, macro-F1 বা AUC-এর মধ্যে যেটি আমাদের উন্নতি সবচেয়ে ভালো দেখায়, সেটিই রিপোর্ট করব।" HARKing ও preregistration ধারণা দিয়ে ভুলটি ব্যাখ্যা করুন এবং বাক্যটি আবার লিখুন।]

+ You will tune 3 models with 8 hyperparameter settings each, then train the best setting of each model with 5 seeds. A pilot run takes 25 minutes. How many GPU-hours do you need with a 50% margin? With 10 GPU-hours a week, how many weeks should the timeline allow?

  #bni[৩টি মডেলের প্রতিটিতে ৮টি hyperparameter সেটিং, তারপর প্রতিটির সেরা সেটিং ৫টি seed-এ। একটি pilot run-এ ২৫ মিনিট লাগে। ৫০% বাড়তি ধরে কত GPU-ঘণ্টা লাগবে? সপ্তাহে ১০ GPU-ঘণ্টা পেলে সময়রেখায় কত সপ্তাহ রাখবেন?]

+ In the mini-project (Section 26.7) the SentNoB test set may be used only once. What would go wrong if you tuned the learning rate on it? Which line of the proposal prevents this?

  #bni[মিনি-প্রজেক্টে SentNoB test set একবারই ব্যবহার করা যাবে। এতে learning rate tune করলে কী ভুল হতো? প্রপোজালের কোন লাইন এটি ঠেকায়?]

+ Choose a public dataset you might use. Record its licence, where you found the licence, and one thing the licence does not allow. As the mini-project shows, the licence is not always in the obvious place.

  #bni[ব্যবহার করতে পারেন এমন একটি পাবলিক ডেটাসেট বেছে নিন। এর লাইসেন্স, লাইসেন্সটি কোথায় পেলেন, এবং লাইসেন্স কোন একটি কাজের অনুমতি দেয় না --- লিখুন। মিনি-প্রজেক্টে যেমন দেখা গেছে, লাইসেন্স সবসময় সহজে চোখে পড়ার জায়গায় থাকে না।]

#recap[
- A proposal must convince its reader that the question is worth answering, that you can answer it, and that everyone will know whether it worked. The eight Heilmeier questions test all three.

  #bni[প্রপোজাল পাঠককে নিশ্চিত করবে: প্রশ্নটি মূল্যবান, আপনি এর উত্তর বের করতে পারবেন, এবং কাজ হলো কিনা সবাই বুঝতে পারবে। Heilmeier-এর আটটি প্রশ্ন তিনটিই যাচাই করে।]

- Objectives describe what you will do and measure, never what the results will be.

  #bni[Objective বলবে আপনি কী করবেন ও মাপবেন --- ফলাফল কী হবে তা কখনো নয়।]

- Fix the data, splits, baselines, primary metric, seeds, tuning budget and statistical test before you see any results; record and report every change.

  #bni[ফলাফল দেখার আগেই ডেটা, split, বেসলাইন, প্রধান মেট্রিক, seed, tuning বাজেট ও পরিসংখ্যান test ঠিক করুন; প্রতিটি পরিবর্তন লিখে রাখুন ও রিপোর্ট করুন।]

- Check feasibility with arithmetic and a pilot run, read every licence, and list real risks with fallbacks.

  #bni[হিসাব ও pilot run দিয়ে সম্ভাব্যতা যাচাই করুন, প্রতিটি লাইসেন্স পড়ুন, এবং বিকল্প পরিকল্পনাসহ বাস্তব ঝুঁকিগুলো লিখুন।]

- Design the study so that a negative result is still worth reporting.

  #bni[গবেষণাটি এমনভাবে সাজান যাতে নেতিবাচক ফলাফলও রিপোর্ট করার মতো হয়।]

]
