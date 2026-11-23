#import "../template.typ": *

= Model Evaluation
<model-evaluation>
#bnsub(1)[মডেল মূল্যায়ন]
== The Confusion Matrix
<the-confusion-matrix>
#bnsub(2)[কনফিউশন ম্যাট্রিক্স]
The foundation of classification evaluation. For binary classification:

#figure(
  align(center)[#table(
    columns: (26.78%, 36.61%, 36.61%),
    align: (auto,left,left,),
    table.header([], [Actual Positive], [Actual Negative],),
    table.hline(),
    [#strong[Predicted Positive]], [True Positive (TP)], [False Positive (FP)],
    [#strong[Predicted Negative]], [False Negative (FN)], [True Negative (TN)],
  )]
  , kind: table
  )

- #strong[TP:] Model says positive, truly positive (e.g., correctly flags a sick patient).
- #strong[TN:] Model says negative, truly negative (correctly flags a healthy patient).
- #strong[FP:] Model says positive, actually negative (a healthy person wrongly flagged sick --- a “false alarm”).
- #strong[FN:] Model says negative, actually positive (a sick patient wrongly cleared --- a “miss”).

In medical diagnosis, fraud detection, hate-speech detection, and security systems, #strong[False Negatives are often far more dangerous] than False Positives, because a real problem slips through undetected.

#bn[ক্লাসিফিকেশন মূল্যায়নের ভিত্তি। #strong[TP] = মডেল positive বলেছে ও সত্যিই positive। #strong[TN] = negative বলেছে ও সত্যিই negative। #strong[FP] = positive বলেছে কিন্তু আসলে negative (“false alarm”)। #strong[FN] = negative বলেছে কিন্তু আসলে positive (“miss”)।]

#bn[চিকিৎসা নির্ণয়, fraud detection, hate-speech detection ও security system-এ False Negative প্রায়ই অনেক বেশি বিপজ্জনক, কারণ আসল সমস্যা ধরা পড়ে না।]

== Classification Metrics
<classification-metrics>
#bnsub(2)[ক্লাসিফিকেশন মেট্রিক]
#figure(
  align(center)[#table(
    columns: (11%, 19.84%, 27.07%, 22.29%, 19.8%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Metric], [Formula], [English intuition], [বাংলা ধারণা], [When to prefer],),
    table.hline(),
    [#strong[Accuracy]], [$frac(T P + T N, T P + T N + F P + F N)$], [Fraction of all predictions that are correct.], [সব প্রেডিকশনের মধ্যে সঠিকের অনুপাত।], [Balanced classes only],
    [#strong[Precision]], [$frac(T P, T P + F P)$], [Of everything predicted positive, how much was truly positive.], [Positive বলা সবগুলোর মধ্যে কতগুলো সত্যিই positive।], [False positives are costly (spam filters, legal filtering)],
    [#strong[Recall (Sensitivity)]], [$frac(T P, T P + F N)$], [Of everything actually positive, how much was caught.], [আসল positive-এর কতটা ধরা পড়লো।], [False negatives are dangerous (cancer detection, fraud)],
    [#strong[Specificity]], [$frac(T N, T N + F P)$], [Of everything actually negative, how much was correctly identified.], [আসল negative-এর কতটা সঠিকভাবে চিহ্নিত হলো।], [Complements recall in medical screening],
    [#strong[F1-Score]], [$2 dot.op frac(P times R, P + R)$], [Harmonic mean of precision and recall.], [Precision ও Recall-এর সামঞ্জস্যপূর্ণ গড়।], [Imbalanced data],
    [#strong[Log Loss]], [$- 1 / m sum y log \( hat(p) \)$], [Penalizes confident wrong predictions heavily.], [ভুল হলেও আত্মবিশ্বাসী প্রেডিকশনকে কড়া শাস্তি দেয়।], [Probabilistic classifiers],
  )]
  , kind: table
  )

#strong[Macro vs Micro vs Weighted averaging (multi-class) / মাল্টি-ক্লাস গড় করার পদ্ধতি:]

- #strong[Macro average:] computes the metric per class then takes an unweighted mean --- treats every class equally, so it is the best choice when the minority class matters just as much as the majority.

  #bni[প্রতিটি ক্লাসের মেট্রিক আলাদাভাবে হিসাব করে unweighted গড় নেয় --- প্রতিটি ক্লাসকে সমান গুরুত্ব দেয়, তাই minority class গুরুত্বপূর্ণ হলে এটাই সেরা।]

- #strong[Micro average:] pools all TP/FP/FN across classes first, then computes the metric --- dominated by the largest class(es).

  #bni[সব ক্লাসের TP/FP/FN একত্রে হিসাব করে --- সবচেয়ে বড় ক্লাসের প্রভাব বেশি থাকে।]

- #strong[Weighted average:] averages per-class metrics weighted by each class's support (sample count) --- can still be dominated by the majority class in imbalanced data.

  #bni[প্রতিটি ক্লাসের নমুনা সংখ্যা অনুযায়ী weight দিয়ে গড় করে --- imbalanced ডেটায় majority class দ্বারা dominated হতে পারে।]

== ROC-AUC vs PR-AUC
<roc-auc-vs-pr-auc>
#bnsub(2)[আরওসি-এইউসি বনাম পিআর-এইউসি]
- #strong[ROC-AUC] plots Recall (Sensitivity) vs.~(1 − Specificity) across thresholds. AUC = 0.5 means random guessing; \> 0.8 is generally good; \> 0.9 is strong. Excellent for roughly balanced binary classification, but #strong[overly optimistic on highly imbalanced data].
- #strong[PR-AUC] plots Precision against Recall across thresholds. Far more honest for rare-event/minority-class retrieval on imbalanced datasets #cite(<ref16>) --- use PR-AUC whenever the positive class is rare.

#strong[ROC-AUC] বিভিন্ন threshold-এ Recall বনাম (1 − Specificity) প্লট করে। AUC = 0.5 মানে random guessing; 0.8+ ভালো; 0.9+ শক্তিশালী। মোটামুটি সুষম binary classification-এ চমৎকার, কিন্তু #strong[highly imbalanced ডেটায় বিভ্রান্তিকরভাবে ভালো দেখায়]। #strong[PR-AUC] Precision বনাম Recall প্লট করে এবং rare-event/minority-class retrieval-এর জন্য অনেক বেশি সৎ পরিমাপক --- positive class বিরল হলে PR-AUC ব্যবহার করুন।

== Regression Metrics
<regression-metrics>
#bnsub(2)[রিগ্রেশন মেট্রিক]
#figure(
  align(center)[#table(
    columns: (9.17%, 28.84%, 32.91%, 29.08%),
    align: (auto,auto,auto,auto,),
    table.header([Metric], [Formula], [English intuition], [বাংলা ধারণা],),
    table.hline(),
    [#strong[MAE]], [$1 / m sum \| y - hat(y) \|$], [Average absolute error; robust to outliers.], [গড় পরম ত্রুটি; আউটলায়ার-সহনশীল।],
    [#strong[MSE]], [$1 / m sum \( y - hat(y) \)^2$], [Squares errors, heavily penalizes large errors.], [বর্গ নেওয়ায় বড় ভুলকে বেশি শাস্তি দেয়।],
    [#strong[RMSE]], [$sqrt(upright("MSE"))$], [Error in the same unit as the target.], [টার্গেটের এককে ত্রুটি প্রকাশ করে।],
    [#strong[R squared]], [$1 - frac(sum \( y - hat(y) \)^2, sum \( y - macron(y) \)^2)$], [Fraction of variance explained (0 to 1).], [মডেল কতটুকু variance ব্যাখ্যা করলো (০-১)।],
    [#strong[MAPE]], [$1 / m sum lr(|frac(y - hat(y), y)|) times 100 %$], [Average percentage error; unstable when y is near 0.], [গড় শতাংশ ভুল; y শূন্যের কাছাকাছি হলে অস্থির।],
  )]
  , kind: table
  )

== Evaluation Methods at a Glance
<evaluation-methods-at-a-glance>
#bnsub(2)[মূল্যায়ন পদ্ধতি এক নজরে]
Adapted from the #emph[Machine Learning Methods Guide]. · #emph[Machine Learning Methods Guide] থেকে অভিযোজিত।

#figure(
  align(center)[#table(
    columns: (21.86%, 28.71%, 25.93%, 23.5%),
    align: (left,left,left,left,),
    table.header([Method], [Purpose (English)], [কাজ (বাংলা)], [Use when],),
    table.hline(),
    [Confusion Matrix], [Shows exactly which classes are confused], [মডেল কোন ক্লাসে কত ভুল করছে দেখায়], [Any classification problem],
    [Accuracy], [Fraction correct overall], [সামগ্রিক সঠিক অনুপাত], [Balanced dataset],
    [Precision], [Correctness of positive predictions], [Positive প্রেডিকশনের সঠিকতা], [Reducing false positives matters],
    [Recall], [Coverage of actual positives], [আসল positive কতটা ধরা গেলো], [Reducing false negatives matters],
    [F1-score], [Balance of precision & recall], [Precision-Recall ভারসাম্য], [Imbalanced dataset],
    [ROC-AUC], [Class-separation ability], [ক্লাস আলাদা করার সক্ষমতা], [Binary classification],
    [PR-AUC], [Precision-recall trade-off], [Precision-Recall trade-off], [Highly imbalanced data],
    [Cross-validation], [Reliability of the result], [ফলাফলের নির্ভরযোগ্যতা যাচাই], [Small/medium datasets],
  )]
  , kind: table
  )

== Validation Techniques
<validation-techniques>
#bnsub(2)[ভ্যালিডেশন টেকনিক]
#figure(
  align(center)[#table(
    columns: (31.02%, 68.98%),
    align: (left,left,),
    table.header([Split], [Purpose],),
    table.hline(),
    [Training set], [Teaches the model],
    [Validation set], [Hyperparameter tuning, model selection, early stopping],
    [Test set], [Final, unbiased performance check --- used only #strong[once]],
  )]
  , kind: table
  )

#strong[K-Fold Cross-Validation] #cite(<ref11>)#strong[:] split data into `K` folds; train on `K-1`, test on the remaining fold; repeat `K` times and average --- gives a much more stable estimate than a single split, plus a standard deviation to show reliability. Use #strong[stratified K-Fold] for classification (keeps class ratio consistent per fold) and #strong[TimeSeriesSplit] for temporal data (never shuffle time-ordered data).

#strong[External Validation:] testing the model on a dataset collected from a different source/environment than training data --- a strong way to demonstrate real generalization (crucial in medical AI, NLP, cybersecurity, and finance).

#strong[Train/Validation/Test:]

#bn[ট্রেনিং সেট মডেলকে শেখায়; validation সেট হাইপারপ্যারামিটার টিউনিং ও early stopping-এর জন্য; test সেট শুধু একবার ব্যবহার করে চূড়ান্ত unbiased performance মাপা হয়।]

#strong[K-Fold Cross-Validation:]

#bn[#cite(<ref11>) ডেটাকে `K` ভাগে ভাগ করে, প্রতিবার `K-1` ভাগে ট্রেন ও ১ ভাগে টেস্ট করে, `K` বার পুনরাবৃত্তি করে গড় নেওয়া হয় --- এতে একটি std deviation-ও পাওয়া যায় যা নির্ভরযোগ্যতা প্রকাশ করে। Classification-এ #strong[stratified K-Fold] এবং time-series-এ #strong[TimeSeriesSplit] ব্যবহার করুন (কখনো সময়ক্রম এলোমেলো করবেন না)।]

#strong[External Validation:]

#bn[ট্রেনিং ডেটার থেকে ভিন্ন উৎস/পরিবেশ থেকে সংগৃহীত ডেটায় মডেল টেস্ট করা --- বাস্তব generalization প্রমাণের শক্তিশালী উপায় (medical AI, NLP, cybersecurity, finance-এ অত্যন্ত গুরুত্বপূর্ণ)।]

#recap[
- Never report Accuracy alone on imbalanced data --- pair it with Precision, Recall, F1, and PR-AUC.

  Imbalanced ডেটায় শুধু Accuracy নয় --- Precision, Recall, F1, PR-AUC-ও দেখান।

- ROC-AUC can look great even on imbalanced data --- PR-AUC is the more honest metric when the positive class is rare.

  Imbalanced ডেটায় ROC-AUC ভালো দেখাতে পারে --- positive class বিরল হলে PR-AUC বেশি সৎ।

- Macro-average protects the minority class; micro/weighted averages can quietly hide poor minority-class performance.

  Macro-average minority class-কে সুরক্ষা দেয়; micro/weighted average দুর্বল minority পারফরম্যান্স লুকিয়ে ফেলতে পারে।

]
