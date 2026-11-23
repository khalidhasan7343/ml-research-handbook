#import "../template.typ": *

= From Research Gap to Research Question
<from-research-gap-to-research-question>
#bnsub(1)[রিসার্চ গ্যাপ থেকে রিসার্চ প্রশ্ন]
A verified gap tells you #emph[where] to work. A research question tells you #emph[exactly what you will find out]. This chapter shows the full chain from an observation to a contribution, how to judge a research question, how to derive a testable hypothesis, and six worked examples --- one for each of the most common gap types in ML.

#bn[যাচাইকৃত গ্যাপ বলে #emph[কোথায়] কাজ করবেন। রিসার্চ প্রশ্ন বলে ঠিক #emph[কী জানতে চাইছেন]। এই chapter-এ আছে পর্যবেক্ষণ থেকে অবদান পর্যন্ত পুরো শৃঙ্খল, একটি রিসার্চ প্রশ্ন কীভাবে বিচার করবেন, কীভাবে পরীক্ষাযোগ্য hypothesis তৈরি করবেন, এবং ML-এর সবচেয়ে সাধারণ ছয় ধরনের গ্যাপের জন্য ছয়টি পূর্ণ উদাহরণ।]

== The Chain from Observation to Contribution
<the-chain-from-observation-to-contribution>
#bnsub(2)[পর্যবেক্ষণ থেকে অবদান পর্যন্ত শৃঙ্খল]
#gap2rq-diagram()
#figure(
  align(center)[#table(
    columns: (19.16%, 44.35%, 36.49%),
    align: (left,left,left,),
    table.header([Link], [Meaning], [বাংলা],),
    table.hline(),
    [#strong[Observation]], [Something you noticed --- in data, in practice, or in a paper], [যা আপনার চোখে পড়েছে --- ডেটায়, বাস্তবে বা কোনো পেপারে],
    [#strong[Problem]], [Why that observation is a problem], [পর্যবেক্ষণটি কেন সমস্যা],
    [#strong[Existing research]], [What has already been tried], [ইতিমধ্যে কী চেষ্টা করা হয়েছে],
    [#strong[Limitation]], [Where those attempts fall short], [সেই চেষ্টাগুলো কোথায় ঘাটতি রাখে],
    [#strong[Research gap]], [What is missing across the field, verified (Chapter 15)], [পুরো ক্ষেত্রে কী অনুপস্থিত --- যাচাইকৃত],
    [#strong[Research question]], [The specific thing you will find out], [ঠিক কী জানতে চান],
    [#strong[Hypothesis]], [Your predicted answer, stated so it can be proven wrong], [আপনার প্রত্যাশিত উত্তর, এমনভাবে যাতে ভুল প্রমাণ করা যায়],
    [#strong[Method]], [How you will test it], [কীভাবে পরীক্ষা করবেন],
    [#strong[Experiment]], [The concrete setup: data, baselines, metrics, runs], [বাস্তব সেটআপ: ডেটা, বেসলাইন, মেট্রিক, run],
    [#strong[Result]], [What you found --- including if the hypothesis failed], [কী পেলেন --- hypothesis ব্যর্থ হলেও],
    [#strong[Contribution]], [What the field now knows or can do that it could not before], [ক্ষেত্রটি এখন নতুন কী জানে বা করতে পারে],
  )]
  , kind: table
  )

Every link must follow from the one before. If your method does not test your hypothesis, or your hypothesis does not answer your question, the chain is broken --- and reviewers will notice.

#bn[প্রতিটি ধাপ আগেরটি থেকে যুক্তিসঙ্গতভাবে আসতে হবে। পদ্ধতি যদি hypothesis পরীক্ষা না করে, বা hypothesis যদি প্রশ্নের উত্তর না দেয়, তাহলে শৃঙ্খলটি ভেঙে যায় --- এবং reviewer-রা তা ধরে ফেলেন।]

== What Makes a Good Research Question
<what-makes-a-good-research-question>
#bnsub(2)[ভালো রিসার্চ প্রশ্নের বৈশিষ্ট্য]
#strong[Bad:] #emph["Can we make image segmentation better?"] --- Too broad. "Better" is not defined, nothing can be measured, and there is no gap behind it.

#strong[Good:] #emph["Does adding a multi-scale skip path to a fully convolutional network improve boundary F1 on high-resolution scenes without increasing parameter count?"] --- It names the change, the outcome, the setting and the constraint, and it answers a stated limitation (loss of spatial detail).

#bn[#strong[খারাপ:] "ইমেজ segmentation কি আরও ভালো করা যায়?" --- অতিরিক্ত বিস্তৃত; "ভালো" সংজ্ঞায়িত নয়, কিছুই মাপা যায় না, পেছনে কোনো গ্যাপ নেই। #strong[ভালো:] উপরের দ্বিতীয় প্রশ্নটি পরিবর্তন, ফলাফল, পরিস্থিতি ও শর্ত --- চারটিই নির্দিষ্ট করে, এবং একটি ঘোষিত সীমাবদ্ধতার (spatial detail হারানো) উত্তর দেয়।]

#figure(
  align(center)[#table(
    columns: (16.19%, 45.63%, 38.18%),
    align: (left,left,left,),
    table.header([Criterion], [Test it with], [বাংলা],),
    table.hline(),
    [#strong[Specific]], [Does it name one change, one outcome and one setting?], [একটি পরিবর্তন, একটি ফলাফল, একটি পরিস্থিতি --- নির্দিষ্ট কি?],
    [#strong[Measurable]], [Is there a standard metric for the outcome?], [ফলাফল মাপার প্রমিত মেট্রিক আছে কি?],
    [#strong[Feasible]], [Can it be done with the data, compute and time you have?], [হাতে থাকা ডেটা, compute ও সময়ে করা সম্ভব কি?],
    [#strong[Novel]], [Is the answer genuinely unknown? (Chapter 15)], [উত্তরটি কি সত্যিই অজানা?],
    [#strong[Relevant]], [Would anyone act differently once it is answered?], [উত্তর জানার পর কেউ কি ভিন্নভাবে কাজ করবে?],
    [#strong[Testable]], [Could the result come out #emph[against] you?], [ফলাফল কি আপনার #emph[বিপক্ষেও] যেতে পারে?],
  )]
  , kind: table
  )

The last criterion matters most. A question whose answer cannot possibly be "no" is a truism, not research.

#bn[শেষ মানদণ্ডটিই সবচেয়ে গুরুত্বপূর্ণ। যে প্রশ্নের উত্তর কখনো "না" হতে পারে না, সেটি স্বতঃসিদ্ধ কথা --- গবেষণা নয়।]

== Turning a Gap into a Question
<turning-a-gap-into-a-question>
#bnsub(2)[গ্যাপকে প্রশ্নে রূপান্তর]
Work through four slots:

+ #strong[Name the gap type] (Chapter 13). This tells you what kind of evidence will answer it.
+ #strong[Name what you will change] --- the #emph[independent variable] (a new component, a new dataset, a new training regime).
+ #strong[Name what you will measure] --- the #emph[dependent variable] (a specific metric on a specific split).
+ #strong[Name the comparison] --- against which baseline, in which setting, and by how much would count as success.

#bn[চারটি ঘর পূরণ করুন: (১) #strong[গ্যাপের ধরন] --- কোন ধরনের প্রমাণ লাগবে তা বোঝায়; (২) #strong[কী বদলাবেন] --- independent variable (নতুন অংশ, নতুন ডেটাসেট, নতুন training পদ্ধতি); (৩) #strong[কী মাপবেন] --- dependent variable (নির্দিষ্ট split-এ নির্দিষ্ট মেট্রিক); (৪) #strong[কিসের সাথে তুলনা] --- কোন বেসলাইন, কোন পরিস্থিতিতে, এবং কতটা হলে সফল।]

== From Question to Hypothesis
<from-question-to-hypothesis>
#bnsub(2)[প্রশ্ন থেকে হাইপোথিসিস]
A hypothesis is the answer you expect, written so that an experiment could prove it wrong. In ML it usually comes as a pair:

- #strong[Hypothesis (H₁):] Adding the multi-scale skip path increases boundary F1 compared with the same network without it.
- #strong[Null hypothesis (H₀):] There is no difference in boundary F1 between the two networks.

You then design the experiment so that the data could support either one: the same data splits, the same tuning budget, several seeds, and a significance test (Section 6.7 and Section 19.7). If H₀ cannot be rejected, that is still a result --- report it honestly.

#bn[Hypothesis হলো আপনার প্রত্যাশিত উত্তর, এমনভাবে লেখা যাতে একটি experiment একে ভুল প্রমাণ করতে পারে। ML-এ সাধারণত এটি জোড়ায় আসে: H₁ (পরিবর্তনটি মেট্রিক বাড়ায়) এবং H₀ (কোনো পার্থক্য নেই)। তারপর experiment এমনভাবে সাজান যাতে ডেটা যেকোনোটিকে সমর্থন করতে পারে: একই split, একই tuning বাজেট, একাধিক seed, এবং significance test। H₀ বাতিল করা না গেলেও সেটি একটি ফলাফল --- সৎভাবে রিপোর্ট করুন।]

== Six Worked Examples
<six-worked-examples>
#bnsub(2)[ছয়টি পূর্ণ উদাহরণ]
The scenarios below are #strong[illustrative]. They show how the chain fits together; they are not claims about the current literature, which you would need to verify yourself (Chapter 15).

#bn[নিচের পরিস্থিতিগুলো #strong[উদাহরণমূলক] --- শৃঙ্খলটি কীভাবে জোড়া লাগে তা দেখানোর জন্য। এগুলো বর্তমান সাহিত্য সম্পর্কে দাবি নয়; বাস্তবে আপনাকে নিজে যাচাই করতে হবে।]

=== Example 1 --- Dataset gap · ডেটাসেট গ্যাপ
<example-1-dataset-gap-ডটসট-গযপ>
#figure(
  align(center)[#table(
    columns: (17.85%, 82.15%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [Bangla hate-speech datasets in the papers you reviewed are small and privately held],
    [Limitation], [Results cannot be compared across papers; models are trained on a few thousand samples],
    [Gap], [No large, public, standardised Bangla hate-speech benchmark (dataset gap)],
    [Research question], [Does a public, annotated Bangla corpus of at least 50,000 posts, with reported inter-annotator agreement, let transformer models reach macro-F1 comparable to English benchmarks?],
    [Hypothesis], [Models trained on the new corpus achieve higher macro-F1 on a held-out platform than the same models trained on the largest existing private dataset],
    [Method / experiment], [Annotation protocol with agreement scores; fixed public splits; three model families; five seeds each],
    [Contribution], [A new dataset and benchmark (Chapter 17, type 3)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: বাংলা hate-speech ডেটাসেট ছোট ও ব্যক্তিগত। গ্যাপ: বড়, পাবলিক, প্রমিত benchmark নেই। প্রশ্ন: inter-annotator agreement-সহ ৫০,০০০+ পোস্টের পাবলিক corpus দিয়ে transformer মডেল কি ইংরেজি benchmark-এর কাছাকাছি macro-F1 পায়? অবদান: নতুন ডেটাসেট ও benchmark।]

=== Example 2 --- Generalization gap · জেনারেলাইজেশন গ্যাপ
<example-2-generalization-gap-জনরলইজশন-গযপ>
#figure(
  align(center)[#table(
    columns: (19.18%, 80.82%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [A skin-lesion classifier trained on Hospital A's images performs very well in-house],
    [Limitation], [Studies in the area report high accuracy but rarely test on data from other hospitals],
    [Gap], [Unknown performance under a change of imaging equipment (generalization gap)],
    [Research question], [How much does F1 drop when a classifier trained on Hospital A is evaluated on Hospitals B and C, and does domain adaptation reduce the drop?],
    [Hypothesis], [F1 drops significantly on B and C; domain adaptation recovers part of the drop],
    [Method / experiment], [Train on A only; test on A, B and C; compare with and without adaptation; confidence intervals per site],
    [Contribution], [A new empirical finding on robustness to site shift (Chapter 17, types 8 and 10)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: এক হাসপাতালের ছবিতে ট্রেন করা মডেল সেখানে খুব ভালো করে। গ্যাপ: অন্য হাসপাতালের যন্ত্রে পারফরম্যান্স অজানা। প্রশ্ন: হাসপাতাল B ও C-তে F1 কতটা কমে, এবং domain adaptation কি তা কমায়? অবদান: site পরিবর্তনে robustness নিয়ে নতুন empirical তথ্য।]

=== Example 3 --- Interpretability gap · ইন্টারপ্রেটেবিলিটি গ্যাপ
<example-3-interpretability-gap-ইনটরপরটবলট-গযপ>
#figure(
  align(center)[#table(
    columns: (19.4%, 80.6%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [A loan-approval model reaches high accuracy but gives no explanation for its decisions],
    [Limitation], [Evaluation reports aggregate accuracy only],
    [Gap], [It is unknown whether the model relies on proxies for protected attributes (interpretability gap)],
    [Research question], [Do SHAP explanations of a gradient-boosted loan model reveal reliance on proxies for a protected group that aggregate accuracy hides?],
    [Hypothesis], [At least one feature strongly correlated with the protected attribute ranks among the top contributors to rejections],
    [Method / experiment], [SHAP analysis; disaggregated error rates by group; a fairness metric chosen and justified (Chapter 21)],
    [Contribution], [A new evaluation of an existing model (Chapter 17, type 6)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: loan-approval মডেলের accuracy বেশি, কিন্তু সিদ্ধান্তের ব্যাখ্যা নেই। গ্যাপ: মডেলটি সুরক্ষিত গোষ্ঠীর proxy-র ওপর নির্ভর করছে কিনা অজানা। প্রশ্ন: SHAP ব্যাখ্যা কি এমন নির্ভরতা দেখায় যা aggregate accuracy লুকিয়ে রাখে? অবদান: বিদ্যমান মডেলের নতুন মূল্যায়ন।]

=== Example 4 --- Robustness gap · রবাস্টনেস গ্যাপ
<example-4-robustness-gap-রবসটনস-গযপ>
#figure(
  align(center)[#table(
    columns: (19.3%, 80.7%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [A network-intrusion detector performs well on clean test traffic],
    [Limitation], [It has never been evaluated against traffic crafted to evade it],
    [Gap], [Unknown behaviour under adversarial perturbation (robustness gap)],
    [Research question], [How much does detection recall fall under gradient-based perturbation of traffic features, and can adversarial training recover at least 90% of the clean recall?],
    [Hypothesis], [Recall falls sharply under attack; adversarial training recovers most of it at a small cost in clean accuracy],
    [Method / experiment], [Standard attack at several strengths; adversarial training; report clean and attacked recall over several seeds],
    [Contribution], [Better robustness, with a measured trade-off (Chapter 17, type 11)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: intrusion detector পরিষ্কার ট্রাফিকে ভালো কাজ করে। গ্যাপ: ইচ্ছাকৃতভাবে ফাঁকি দেওয়া ট্রাফিকে আচরণ অজানা। প্রশ্ন: adversarial আক্রমণে recall কতটা কমে, এবং adversarial training কি অন্তত ৯০% ফিরিয়ে আনতে পারে? অবদান: পরিমাপকৃত trade-off-সহ উন্নত robustness।]

=== Example 5 --- Reproducibility gap · রিপ্রোডিউসিবিলিটি গ্যাপ
<example-5-reproducibility-gap-রপরডউসবলট-গযপ>
#figure(
  align(center)[#table(
    columns: (19.83%, 80.17%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [Several papers claim state-of-the-art on the same task, but none releases code or full hyperparameters],
    [Limitation], [Their gains cannot be compared or verified],
    [Gap], [It is unknown whether the reported improvements hold under controlled conditions (reproducibility gap)],
    [Research question], [Do the reported improvements replicate under a controlled re-implementation with identical splits, seeds and tuning budgets?],
    [Hypothesis], [At least part of the reported improvement disappears under equal tuning budgets],
    [Method / experiment], [Re-implement each method; same splits and budget; ten seeds; significance tests between all pairs],
    [Contribution], [A replication study and a new empirical finding (Chapter 17, type 8)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: কয়েকটি পেপার একই কাজে SOTA দাবি করে, কিন্তু কেউ কোড বা পূর্ণ hyperparameter দেয় না। গ্যাপ: নিয়ন্ত্রিত অবস্থায় উন্নতি টেকে কিনা অজানা। প্রশ্ন: একই split, seed ও tuning বাজেটে কি দাবিকৃত উন্নতি replicate হয়? অবদান: একটি replication study।]

=== Example 6 --- Performance gap · পারফরম্যান্স গ্যাপ
<example-6-performance-gap-পরফরমযনস-গযপ>
#figure(
  align(center)[#table(
    columns: (20.23%, 79.77%),
    align: (left,left,),
    table.header([Link], [Content],),
    table.hline(),
    [Observation], [Published crop-disease detectors reach about 85% F1 in the lab],
    [Limitation], [Field deployment would need at least 95% to avoid costly mistakes (a requirement you would document)],
    [Gap], [A measurable distance between achieved and required performance (performance gap)],
    [Research question], [Does adding multi-spectral input to RGB images raise field-test F1 from about 85% to the 95% threshold?],
    [Hypothesis], [Multi-spectral input improves field-test F1 significantly over RGB-only input],
    [Method / experiment], [Paired RGB and multi-spectral data; same model; field test set collected separately from training data],
    [Contribution], [Better performance on a deployment-relevant metric (Chapter 17, type 2)],
  )]
  , kind: table
  )

#bn[পর্যবেক্ষণ: প্রকাশিত crop-disease detector ল্যাবে প্রায় ৮৫% F1 পায়। গ্যাপ: প্রয়োজনীয় ৯৫%-এর সাথে পরিমাপযোগ্য দূরত্ব। প্রশ্ন: RGB-এর সাথে multi-spectral ইনপুট যোগ করলে কি field-test F1 ৯৫%-এ পৌঁছায়? অবদান: বাস্তব প্রয়োগের মেট্রিকে উন্নত পারফরম্যান্স।]

#recap[
- Each link --- observation, gap, question, hypothesis, method, result, contribution --- must follow from the one before it.

  #bni[প্রতিটি ধাপ --- পর্যবেক্ষণ, গ্যাপ, প্রশ্ন, hypothesis, পদ্ধতি, ফলাফল, অবদান --- আগেরটি থেকে যুক্তিসঙ্গতভাবে আসতে হবে।]

- A good research question is specific, measurable, feasible, novel, relevant and testable; above all, its answer could come out against you.

  #bni[ভালো রিসার্চ প্রশ্ন নির্দিষ্ট, পরিমাপযোগ্য, সম্ভবপর, নতুন, প্রাসঙ্গিক ও পরীক্ষাযোগ্য; সবচেয়ে বড় কথা, এর উত্তর আপনার বিপক্ষেও যেতে পারে।]

- State the null hypothesis too, and design the experiment so the data could support either answer.

  #bni[Null hypothesis-ও লিখুন, এবং experiment এমনভাবে সাজান যাতে ডেটা যেকোনো উত্তরকে সমর্থন করতে পারে।]

]
