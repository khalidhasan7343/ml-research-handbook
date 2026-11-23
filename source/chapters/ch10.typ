#import "../template.typ": *

= Critical Paper Analysis
<critical-paper-analysis>
#bnsub(1)[সমালোচনামূলক পেপার বিশ্লেষণ]
Reading a paper tells you what the authors #emph[claim]. Critical analysis asks whether their evidence actually #emph[supports] those claims. This chapter gives you one framework to apply to any paper --- including your own before you submit it --- then a practical checklist, a structure for writing a critique, and a short guide to judging the source itself.

#bn[পেপার পড়লে জানা যায় লেখকরা কী #emph[দাবি] করছেন। সমালোচনামূলক বিশ্লেষণ জিজ্ঞেস করে: তাদের প্রমাণ কি সত্যিই সেই দাবিকে #emph[সমর্থন] করে? এই chapter-এ আছে যেকোনো পেপারে (নিজের পেপার জমা দেওয়ার আগেও) প্রয়োগযোগ্য একটি কাঠামো, একটি ব্যবহারিক চেকলিস্ট, সমালোচনা লেখার একটি গঠন, এবং উৎস বা ভেন্যু বিচার করার একটি সংক্ষিপ্ত গাইড।]

== The Fourteen Dimensions
<the-fourteen-dimensions>
#bnsub(2)[১৪টি মাত্রা]
#figure(
  align(center)[#table(
    columns: (3.68%, 13.68%, 28.29%, 25.8%, 28.55%),
    align: (left,left,left,left,left,),
    table.header([\#], [Dimension], [Key question], [মূল প্রশ্ন], [Strong evidence looks like],),
    table.hline(),
    [1], [#strong[Problem]], [Is the problem well defined and important?], [সমস্যাটি সুনির্দিষ্ট ও গুরুত্বপূর্ণ কি?], [A measurable task with a stated real-world or scientific stake],
    [2], [#strong[Novelty]], [What is actually new --- method, combination, data or context?], [আসলে নতুন কী --- পদ্ধতি, সংমিশ্রণ, ডেটা নাকি প্রেক্ষাপট?], [A contribution that maps to a novelty type (Chapter 17)],
    [3], [#strong[Method]], [Is the method sound and suited to the problem and the data?], [পদ্ধতিটি কি যুক্তিসঙ্গত এবং সমস্যা ও ডেটার উপযোগী?], [Design choices justified, not just listed],
    [4], [#strong[Dataset]], [Is the data large and representative enough for the claims?], [দাবির তুলনায় ডেটা যথেষ্ট বড় ও প্রতিনিধিত্বমূলক কি?], [Source, size, balance and split all reported (Chapter 3)],
    [5], [#strong[Baselines]], [Are the comparisons fair, strong and recent?], [তুলনাগুলো কি ন্যায্য, শক্তিশালী ও সাম্প্রতিক?], [Recent SOTA, tuned with the same budget],
    [6], [#strong[Metrics]], [Do the metrics fit the task and class balance?], [মেট্রিক কি টাস্ক ও class balance-এর উপযোগী?], [Several complementary metrics (Chapter 5)],
    [7], [#strong[Experiments]], [Are results stable across seeds or folds?], [Seed বা fold জুড়ে ফলাফল কি স্থিতিশীল?], [Mean ± std over multiple runs],
    [8], [#strong[Results]], [Are improvements meaningful, not marginal?], [উন্নতি কি অর্থপূর্ণ, নাকি সামান্য?], [Gains larger than the run-to-run spread],
    [9], [#strong[Statistics]], [Is there statistical evidence for the gain?], [উন্নতির পক্ষে পরিসংখ্যানগত প্রমাণ আছে কি?], [Significance test or confidence interval (Section 6.7)],
    [10], [#strong[Ablation]], [Is each component's contribution shown?], [প্রতিটি অংশের অবদান দেখানো হয়েছে কি?], [One row per removed component (Section 6.2)],
    [11], [#strong[Reproducibility]], [Could someone else rerun this and match it?], [অন্য কেউ কি আবার চালিয়ে একই ফলাফল পাবে?], [Code, data, seeds, environment (Chapter 12)],
    [12], [#strong[Generalization]], [Does it work beyond the tested setting?], [পরীক্ষিত পরিস্থিতির বাইরেও কাজ করে কি?], [External or out-of-distribution test (Section 6.5)],
    [13], [#strong[Limitations]], [Are weaknesses discussed honestly and specifically?], [দুর্বলতা কি সততা ও নির্দিষ্টভাবে আলোচিত?], [Specific limits tied to the experiments],
    [14], [#strong[Practical value]], [Does the contribution matter in practice?], [বাস্তবে এই অবদানের মূল্য আছে কি?], [Cost, latency or deployment discussed (Section 6.6)],
  )]
  , kind: table
  )

Weak points tend to cluster. A paper with weak baselines (dimension 5) often also lacks statistics (9) and ablation (10), because all three come from the same root cause: too little experimental rigour. When you find one weakness, look for its neighbours.

#bn[দুর্বলতাগুলো সাধারণত একসাথে থাকে। দুর্বল বেসলাইন (৫) থাকলে প্রায়ই statistics (৯) ও ablation (১০)-ও অনুপস্থিত থাকে, কারণ তিনটির মূল কারণ একই: experiment-এ পর্যাপ্ত কঠোরতার অভাব। একটি দুর্বলতা পেলে তার আশেপাশের দুর্বলতাগুলোও খুঁজুন।]

== The Critical Thinking Checklist
<the-critical-thinking-checklist>
#bnsub(2)[সমালোচনামূলক চিন্তার চেকলিস্ট]
Use this as a final pass before you trust a paper's conclusions, cite it as evidence, or submit your own. Each item has a short Bangla gloss after the dot.

#bn[কোনো পেপারের সিদ্ধান্তে বিশ্বাস করার আগে, প্রমাণ হিসেবে সাইট করার আগে, বা নিজের পেপার জমা দেওয়ার আগে শেষবার এই চেকলিস্ট দিয়ে যাচাই করুন। প্রতিটি প্রশ্নের পরে বিন্দুর পর সংক্ষিপ্ত বাংলা অর্থ দেওয়া আছে।]

=== Problem · সমস্যা
<problem-সমসয>
#checklist[
- #cbox() Is the problem stated precisely enough to be measured? · সমস্যাটি কি পরিমাপযোগ্যভাবে সুনির্দিষ্ট?
- #cbox() Is the motivation given in scientific #emph[and] practical terms? · অনুপ্রেরণা কি বৈজ্ঞানিক ও ব্যবহারিক --- দুভাবেই বলা?
- #cbox() Would solving it change anything for anyone? · এটি সমাধান হলে কি কারও জন্য কিছু বদলাবে?

]
=== Dataset · ডেটাসেট
<dataset-ডটসট>
#checklist[
- #cbox() Are the source, size, class distribution and split method all reported? · উৎস, আকার, class distribution ও split পদ্ধতি --- সব উল্লেখ আছে কি?
- #cbox() Could any information leak from test to training data? (Section 3.6) · Test থেকে training-এ কোনো তথ্য leak হতে পারে কি?
- #cbox() Does the data represent the population the claims are about? · দাবিগুলো যে population নিয়ে, ডেটা কি তার প্রতিনিধিত্ব করে?
- #cbox() Is the dataset public, or at least described well enough to rebuild? · ডেটাসেট কি পাবলিক, বা অন্তত পুনর্নির্মাণের মতো বিস্তারিত বর্ণিত?

]
=== Method · পদ্ধতি
<method-পদধত>
#checklist[
- #cbox() Is each component explained, not only named? · প্রতিটি অংশ কি ব্যাখ্যা করা, শুধু নাম দেওয়া নয়?
- #cbox() Is the choice of architecture justified by reasoning or ablation? · আর্কিটেকচার বাছাই কি যুক্তি বা ablation দিয়ে সমর্থিত?
- #cbox() Do the method's assumptions hold for this data? · পদ্ধতির অনুমানগুলো কি এই ডেটার ক্ষেত্রে খাটে?

]
=== Experiment · পরীক্ষা
<experiment-পরকষ>
#checklist[
- #cbox() Are the baselines recent, strong and tuned with the same effort? · বেসলাইন কি সাম্প্রতিক, শক্তিশালী ও সমান যত্নে tune করা?
- #cbox() Were hyperparameters tuned on validation data, never on test data? · Hyperparameter কি validation-এ tune করা, test-এ কখনো নয়?
- #cbox() Were multiple seeds or cross-validation folds used? · একাধিক seed বা cross-validation fold ব্যবহার হয়েছে কি?

]
=== Evaluation · মূল্যায়ন
<evaluation-মলযযন>
#checklist[
- #cbox() Do the metrics suit the task and the class balance? · মেট্রিক কি টাস্ক ও class balance-এর উপযোগী?
- #cbox() Is more than one complementary metric reported? · একাধিক পরিপূরক মেট্রিক রিপোর্ট করা হয়েছে কি?
- #cbox() Is per-class or per-group performance shown where it matters? · প্রয়োজনে প্রতিটি class বা গোষ্ঠীর পারফরম্যান্স দেখানো হয়েছে কি?

]
=== Results · ফলাফল
<results-ফলফল>
#checklist[
- #cbox() Are standard deviations or confidence intervals reported? · Standard deviation বা confidence interval দেওয়া আছে কি?
- #cbox() Is the gain larger than the run-to-run spread, and is it tested? · উন্নতিটি কি run-এর বিস্তারের চেয়ে বড়, এবং পরীক্ষিত?
- #cbox() Is the gain large enough to matter in practice, not only statistically? · উন্নতিটি কি শুধু পরিসংখ্যানগতভাবে নয়, বাস্তবেও যথেষ্ট বড়?
- #cbox() Are failure cases shown and discussed? · ব্যর্থতার উদাহরণ দেখানো ও আলোচনা করা হয়েছে কি?

]
=== Novelty · নতুনত্ব
<novelty-নতনতব>
#checklist[
- #cbox() Which novelty type does the contribution belong to? (Chapter 17) · অবদানটি কোন ধরনের নতুনত্ব?
- #cbox() Is it more than an existing model fitted to a new dataset? · এটি কি নতুন ডেটাসেটে পুরনো মডেল চালানোর চেয়ে বেশি কিছু?
- #cbox() Is every claimed contribution backed by an experiment? · প্রতিটি দাবিকৃত অবদানের পেছনে কি experiment আছে?

]
=== Limitations · সীমাবদ্ধতা
<limitations-সমবদধত>
#checklist[
- #cbox() Are the limitations specific to this study, not generic boilerplate? · সীমাবদ্ধতাগুলো কি এই গবেষণার নির্দিষ্ট, গৎবাঁধা নয়?
- #cbox() Do the conclusions stay within what the experiments actually tested? · সিদ্ধান্তগুলো কি পরীক্ষিত পরিসরের মধ্যেই সীমাবদ্ধ?

]
=== Research gap · রিসার্চ গ্যাপ
<research-gap-রসরচ-গযপ>
#checklist[
- #cbox() Is the claimed gap supported by citations or a survey, not only asserted? · দাবিকৃত গ্যাপ কি সাইটেশন বা survey দিয়ে সমর্থিত, শুধু ঘোষিত নয়?
- #cbox() Which gap type is it? (Chapter 13) · এটি কোন ধরনের গ্যাপ?
- #cbox() Does the proposed method actually address that gap? · প্রস্তাবিত পদ্ধতি কি সত্যিই সেই গ্যাপটি সমাধান করে?

]
=== Reproducibility · রিপ্রোডিউসিবিলিটি
<reproducibility-রপরডউসবলট>
#checklist[
- #cbox() Are code, data, seeds and hyperparameters available? (Chapter 12) · কোড, ডেটা, seed ও hyperparameter পাওয়া যায় কি?
- #cbox() Is the software and hardware environment described? · Software ও hardware environment বর্ণিত কি?
- #cbox() Is the evaluation protocol precise enough to repeat exactly? · মূল্যায়ন পদ্ধতি কি হুবহু পুনরাবৃত্তি করার মতো সুনির্দিষ্ট?

]
== Writing a Critique
<writing-a-critique>
#bnsub(2)[সমালোচনা লেখার গঠন]
Whether you are preparing a journal-club presentation, a literature review or a peer review, a critique is more useful when it follows a fixed structure:

+ #strong[Summary (two or three sentences).] State the paper's claim in your own words. If you cannot, you have not finished the second pass.
+ #strong[Strengths.] What the paper does well, with specifics.
+ #strong[Major concerns.] Problems that could change the conclusions --- leakage, unfair baselines, missing statistics. For each, say #emph[why] it matters and #emph[what evidence would resolve it].
+ #strong[Minor concerns.] Clarity, missing details, presentation.
+ #strong[Questions for the authors.] Things you could not determine from the text.
+ #strong[Verdict.] How far the evidence supports the claims: fully, partly, or not yet.

#bn[Journal club, literature review বা peer review --- যে উদ্দেশ্যেই হোক, একটি নির্দিষ্ট গঠন মেনে লিখলে সমালোচনা বেশি কাজে আসে: (১) #strong[সারাংশ] --- নিজের ভাষায় পেপারের দাবি দুই-তিন বাক্যে; না পারলে দ্বিতীয় পাস শেষ হয়নি; (২) #strong[শক্তি] --- নির্দিষ্ট উদাহরণসহ; (৩) #strong[বড় উদ্বেগ] --- যেসব সমস্যা সিদ্ধান্তই বদলে দিতে পারে (leakage, অন্যায্য বেসলাইন, statistics-এর অভাব), প্রতিটির জন্য কেন গুরুত্বপূর্ণ এবং কোন প্রমাণ পেলে সমাধান হবে; (৪) #strong[ছোট উদ্বেগ] --- স্পষ্টতা, বাদ পড়া তথ্য; (৫) #strong[লেখকদের কাছে প্রশ্ন]\; (৬) #strong[রায়] --- প্রমাণ দাবিকে কতটা সমর্থন করে: পুরোপুরি, আংশিক, নাকি এখনো নয়।]

Be specific and fair. "The baselines are weak" helps no one; "the strongest baseline is from 2019, while two stronger 2023 methods use the same benchmark" can be checked and acted on.

#bn[নির্দিষ্ট ও ন্যায্য থাকুন। "বেসলাইন দুর্বল" বললে কারও উপকার হয় না; কিন্তু "সবচেয়ে শক্তিশালী বেসলাইনটি ২০১৯ সালের, অথচ একই benchmark-এ ২০২৩ সালের দুটি শক্তিশালী পদ্ধতি আছে" --- এটি যাচাই করা যায় এবং এর ভিত্তিতে কাজ করা যায়।]

== Judging the Source
<judging-the-source>
#bnsub(2)[উৎস ও ভেন্যু বিচার করা]
Where a paper appears tells you something about how it was checked --- but never replaces your own judgement of the work.

#bn[পেপারটি কোথায় প্রকাশিত হয়েছে তা থেকে বোঝা যায় এটি কীভাবে যাচাই হয়েছে --- তবে কাজটি নিজে বিচার করার বিকল্প এটি কখনোই নয়।]

#figure(
  align(center)[#table(
    columns: (24.21%, 41.04%, 34.75%),
    align: (left,left,left,),
    table.header([Source], [What it tells you], [বাংলা],),
    table.hline(),
    [#strong[Peer-reviewed conference] (e.g., NeurIPS, ICML, ICLR, CVPR, ACL)], [Reviewed by experts; in ML, the major conferences are the main publication venues], [বিশেষজ্ঞদের দ্বারা রিভিউকৃত; ML-এ বড় কনফারেন্সগুলোই প্রধান প্রকাশনা মাধ্যম],
    [#strong[Peer-reviewed journal] (e.g., JMLR, IEEE TPAMI)], [Longer, more detailed papers; slower, with revision rounds], [দীর্ঘ ও বিস্তারিত; ধীর, একাধিক সংশোধন পর্ব],
    [#strong[Workshop paper]], [Early or preliminary work; lighter review], [প্রাথমিক পর্যায়ের কাজ; হালকা রিভিউ],
    [#strong[Preprint] (e.g., arXiv)], [#strong[Not peer reviewed.] Read with extra care, and check whether a reviewed version exists], [#strong[পিয়ার-রিভিউড নয়।] বাড়তি সতর্কতায় পড়ুন; রিভিউকৃত সংস্করণ আছে কিনা দেখুন],
  )]
  , kind: table
  )

#strong[Warning signs of a predatory venue:] aggressive email invitations; guaranteed acceptance or publication within days; fees revealed only after acceptance; an editorial board with unverifiable members; a name that imitates a well-known journal; no description of the review process. You can check whether a journal is indexed in databases such as Scopus, Web of Science or DOAJ, and whether its publisher is a member of COPE.

#bn[#strong[প্রিডেটরি ভেন্যুর লক্ষণ:] আক্রমণাত্মক ইমেইল আমন্ত্রণ; নিশ্চিত গ্রহণযোগ্যতা বা কয়েকদিনে প্রকাশের প্রতিশ্রুতি; গ্রহণের পরে ফি জানানো; যাচাই-অযোগ্য সম্পাদকীয় বোর্ড; বিখ্যাত জার্নালের নকল নাম; রিভিউ প্রক্রিয়ার বর্ণনা না থাকা। জার্নালটি Scopus, Web of Science বা DOAJ-এ তালিকাভুক্ত কিনা এবং প্রকাশক COPE-এর সদস্য কিনা দেখে নিতে পারেন।]

#strong[Citation counts, the h-index and journal impact factors are proxies, not quality.] They accumulate slowly, vary greatly between fields, and an impact factor describes a journal, not an individual paper. A careful paper in a modest venue is still careful; a weak paper in a famous venue is still weak. Judge the work with the fourteen dimensions above, not by the logo on its first page.

#bn[#strong[Citation সংখ্যা, h-index ও impact factor মানের proxy মাত্র, মান নয়।] এগুলো ধীরে বাড়ে, ক্ষেত্রভেদে অনেক ভিন্ন হয়, আর impact factor একটি জার্নালের বৈশিষ্ট্য, একক পেপারের নয়। সাধারণ ভেন্যুর যত্নশীল কাজ যত্নশীলই থাকে; বিখ্যাত ভেন্যুর দুর্বল কাজ দুর্বলই। প্রথম পাতার লোগো দেখে নয়, উপরের ১৪টি মাত্রা দিয়ে কাজটি বিচার করুন।]

#recap[
- Apply all fourteen dimensions to every paper, including your own; weak points cluster, so one weakness is a reason to look for its neighbours.

  #bni[প্রতিটি পেপারে (নিজেরটিসহ) ১৪টি মাত্রা প্রয়োগ করুন; দুর্বলতা একসাথে থাকে, তাই একটি পেলে আশেপাশেরগুলোও খুঁজুন।]

- A useful critique is specific and checkable: state why a concern matters and what evidence would resolve it.

  #bni[কাজের সমালোচনা নির্দিষ্ট ও যাচাইযোগ্য হয়: উদ্বেগটি কেন গুরুত্বপূর্ণ এবং কোন প্রমাণ পেলে সমাধান হবে তা বলুন।]

- Preprints are not peer reviewed, and venue prestige and citation counts are proxies --- judge the work itself.

  #bni[Preprint পিয়ার-রিভিউড নয়, আর ভেন্যুর সুনাম ও citation সংখ্যা proxy মাত্র --- কাজটিকে নিজে বিচার করুন।]

]
