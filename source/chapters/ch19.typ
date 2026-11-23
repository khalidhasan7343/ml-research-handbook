#import "../template.typ": *

= Worked Numerical Examples
<worked-numerical-examples>
#bnsub(1)[সংখ্যাসূচক উদাহরণসহ সমাধান]
This section works through real numbers by hand, step by step. Reading a formula is not the same as #emph[using] it --- once you have computed these yourself, the metrics in any paper's results table stop being abstract.

#bn[এই অংশে প্রতিটি হিসাব ধাপে ধাপে হাতে-কলমে করা হয়েছে। সূত্র পড়া আর সূত্র ব্যবহার করা এক জিনিস নয় --- একবার নিজে হিসাব করলে যেকোনো পেপারের result টেবিলের সংখ্যাগুলো আর বিমূর্ত মনে হবে না।]

== Confusion Matrix, Precision, Recall, F1 --- Full Worked Example
<confusion-matrix-precision-recall-f1-full-worked-example>
#bnsub(2)[সম্পূর্ণ উদাহরণ]
=== The scenario · পরিস্থিতি
<the-scenario-পরসথত>
A hospital tests a model that predicts whether a patient has a disease. The model is evaluated on #strong[1,000 patients]. In reality, only #strong[50 patients actually have the disease] (a 5% positive rate --- this is a realistically imbalanced medical dataset).

The model's results:

- It correctly identified #strong[40] of the sick patients → #strong[TP = 40]

- It missed #strong[10] sick patients, calling them healthy → #strong[FN = 10]

- It wrongly flagged #strong[60] healthy patients as sick → #strong[FP = 60]

- It correctly cleared #strong[890] healthy patients → #strong[TN = 890]

#bn[একটি হাসপাতাল এমন একটি মডেল পরীক্ষা করছে যা রোগীর রোগ আছে কিনা প্রেডিক্ট করে। ১,০০০ জন রোগীর ওপর মডেলটি মূল্যায়ন করা হয়েছে। বাস্তবে মাত্র ৫০ জনের রোগ আছে (৫% positive rate --- এটি একটি বাস্তবসম্মত imbalanced মেডিকেল ডেটাসেট)।]

#bn[মডেলের ফলাফল: #strong[TP = 40] (সঠিকভাবে রোগী শনাক্ত), #strong[FN = 10] (রোগীকে সুস্থ বলেছে --- miss), #strong[FP = 60] (সুস্থ মানুষকে রোগী বলেছে --- false alarm), #strong[TN = 890] (সঠিকভাবে সুস্থ বলেছে)।]

=== The confusion matrix · কনফিউশন ম্যাট্রিক্স
<the-confusion-matrix-কনফউশন-মযটরকস>
#figure(
  align(center)[#table(
    columns: (29.27%, 26.48%, 26.48%, 17.76%),
    align: (auto,auto,auto,auto,),
    table.header([], [Actually Sick (50)], [Actually Healthy (950)], [Row total],),
    table.hline(),
    [#strong[Predicted Sick]], [TP = 40], [FP = 60], [100],
    [#strong[Predicted Healthy]], [FN = 10], [TN = 890], [900],
    [#strong[Column total]], [50], [950], [1000],
  )]
  , kind: table
  )

=== Step-by-step calculations · ধাপে ধাপে হিসাব
<step-by-step-calculations-ধপ-ধপ-হসব>
#strong[Accuracy:]

#quote(block: true)[
$ upright("Accuracy") = frac(T P + T N, T P + T N + F P + F N) = frac(40 + 890, 1000) = 930 / 1000 = 0.930 = 93.0 % $
]

#strong[Precision] (of everyone flagged sick, how many really were?):

#quote(block: true)[
$ upright("Precision") = frac(T P, T P + F P) = frac(40, 40 + 60) = 40 / 100 = 0.400 = 40.0 % $
]

#strong[Recall / Sensitivity] (of all truly sick people, how many did we catch?):

#quote(block: true)[
$ upright("Recall") = frac(T P, T P + F N) = frac(40, 40 + 10) = 40 / 50 = 0.800 = 80.0 % $
]

#strong[Specificity] (of all truly healthy people, how many did we correctly clear?):

#quote(block: true)[
$ upright("Specificity") = frac(T N, T N + F P) = frac(890, 890 + 60) = 890 / 950 = 0.937 = 93.7 % $
]

#strong[F1-Score] (harmonic mean of precision and recall):

#quote(block: true)[
$ F_1 = 2 times frac(upright("Precision") times upright("Recall"), upright("Precision") + upright("Recall")) = 2 times frac(0.40 times 0.80, 0.40 + 0.80)\
F_1 = 2 times 0.32 / 1.20 = 0.64 / 1.20 = 0.533 = 53.3 % $
]

=== The critical lesson · সবচেয়ে গুরুত্বপূর্ণ শিক্ষা
<the-critical-lesson-সবচয-গরতবপরণ-শকষ>
Look carefully at what just happened. #strong[Accuracy is 93%] --- that sounds excellent, and a weak paper would report only this number. But #strong[Precision is only 40%]: of every 100 patients this model sends for expensive further testing, #strong[60 of them are perfectly healthy]. And #strong[F1 is only 53.3%] --- barely better than a coin flip. The single “93% accuracy” headline hides a model that is, in practice, quite poor.

Worse: a useless model that simply predicts #strong[“nobody is sick”] for every single patient would score:

#quote(block: true)[
$ upright("Accuracy") = frac(0 + 950, 1000) = 95.0 % $
]

That do-nothing model scores #strong[higher accuracy (95%) than our actual model (93%)] --- while catching zero sick patients (Recall = 0%). #strong[This is exactly why reporting accuracy alone on imbalanced data is a red flag] (Chapter 11, Red Flag \#5).

#bn[এখানে কী ঘটলো ভালো করে দেখুন। Accuracy ৯৩% --- শুনতে দারুণ, এবং একটি দুর্বল পেপার কেবল এই সংখ্যাটিই রিপোর্ট করবে। কিন্তু Precision মাত্র ৪০%: মডেলটি যে ১০০ জনকে ব্যয়বহুল পরীক্ষার জন্য পাঠাচ্ছে, তাদের ৬০ জনই সম্পূর্ণ সুস্থ। আর F1 মাত্র ৫৩.৩%।]

#bn[আরও খারাপ: যে মডেল সবাইকে “সুস্থ” বলে দেয়, তার Accuracy হবে ৯৫% --- অর্থাৎ আমাদের আসল মডেলের (৯৩%) চেয়েও বেশি, অথচ সে একজন রোগীকেও ধরতে পারেনি (Recall = ০%)। এ কারণেই imbalanced ডেটায় শুধু accuracy রিপোর্ট করা একটি রেড ফ্ল্যাগ।]

=== Macro vs Weighted average --- worked · ম্যাক্রো বনাম ওয়েইটেড গড়
<macro-vs-weighted-average-worked-মযকর-বনম-ওযইটড-গড>
Treating this as two classes, “Sick” and “Healthy”:

#figure(
  align(center)[#table(
    columns: (18.63%, 25.52%, 23.22%, 14%, 18.63%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Class], [Precision], [Recall], [F1], [Support],),
    table.hline(),
    [Sick], [40/100 = 0.400], [40/50 = 0.800], [0.533], [50],
    [Healthy], [890/900 = 0.989], [890/950 = 0.937], [0.962], [950],
  )]
  , kind: table
  )

#strong[Macro-F1] (unweighted mean --- treats both classes as equally important):

#quote(block: true)[
$ upright("Macro-F1") = frac(0.533 + 0.962, 2) = 1.495 / 2 = 0.748 = 74.8 % $
]

#strong[Weighted-F1] (weighted by how many samples each class has):

#quote(block: true)[
$ upright("Weighted-F1") = frac(0.533 times 50 + 0.962 times 950, 1000) = frac(26.65 + 913.9, 1000) = 0.941 = 94.1 % $
]

#strong[Lesson:] Weighted-F1 (94.1%) looks far better than Macro-F1 (74.8%) purely because the easy majority class dominates the average. #strong[If a paper on imbalanced data reports only weighted-F1, be suspicious] --- ask for macro-F1 or the per-class breakdown.

#bn[#strong[শিক্ষা:] Weighted-F1 (৯৪.১%) শুধুমাত্র সহজ majority class-এর আধিপত্যের কারণে Macro-F1 (৭৪.৮%)-এর চেয়ে অনেক ভালো দেখাচ্ছে। কোনো পেপার imbalanced ডেটায় শুধু weighted-F1 দেখালে সন্দেহ করুন।]

== Regression Metrics --- Worked Example
<regression-metrics-worked-example>
#bnsub(2)[রিগ্রেশন মেট্রিক উদাহরণ]
#strong[Scenario:] A model predicts house prices (in lakh taka) for 5 houses.

#figure(
  align(center)[#table(
    columns: (13.67%, 15.96%, 22.53%, 13.67%, 18.2%, 15.96%),
    align: (auto,auto,auto,auto,auto,auto,),
    table.header([House], [Actual (y)], [Predicted (ŷ)], [Error (y − ŷ)], [|Error|], [Error²],),
    table.hline(),
    [1], [50], [48], [+2], [2], [4],
    [2], [60], [65], [−5], [5], [25],
    [3], [45], [44], [+1], [1], [1],
    [4], [80], [62], [+18], [18], [324],
    [5], [55], [56], [−1], [1], [1],
    [], [], [], [], [#strong[Σ = 27]], [#strong[Σ = 355]],
  )]
  , kind: table
  )

#strong[MAE (Mean Absolute Error):]

#quote(block: true)[
$ upright("MAE") = 27 / 5 = 5.4 upright(" lakh taka") $
]

#strong[MSE (Mean Squared Error):]

#quote(block: true)[
$ upright("MSE") = 355 / 5 = 71.0 $
]

#strong[RMSE (Root Mean Squared Error):]

#quote(block: true)[
$ upright("RMSE") = sqrt(71.0) = 8.43 upright(" lakh taka") $
]

#strong[R² (Coefficient of Determination):] First the mean of actual values:

#quote(block: true)[
$ macron(y) = frac(50 + 60 + 45 + 80 + 55, 5) = 290 / 5 = 58 $
]

Total sum of squares:

#quote(block: true)[
$ S S_(t o t) = \( 50 - 58 \)^2 + \( 60 - 58 \)^2 + \( 45 - 58 \)^2 + \( 80 - 58 \)^2 + \( 55 - 58 \)^2\
S S_(t o t) = 64 + 4 + 169 + 484 + 9 = 730 $
]

Residual sum of squares `SS_res = 355` (computed above), so:

#quote(block: true)[
$ R^2 = 1 - 355 / 730 = 1 - 0.486 = 0.514 $
]

#strong[Interpretation / ব্যাখ্যা:] RMSE (8.43) is notably larger than MAE (5.4). #strong[That gap is a signal]: because MSE squares the errors, House 4's large 18-lakh error (324 of the 355 total, i.e.~91%) dominates everything. R² = 0.514 means the model explains about 51% of the variance in prices --- mediocre.

#bn[RMSE (৮.৪৩) এবং MAE (৫.৪)-এর মধ্যে ব্যবধানটাই একটি সংকেত: MSE বর্গ করার কারণে House 4-এর ১৮ লাখের বড় ভুলটি (মোট ৩৫৫-এর মধ্যে ৩২৪, অর্থাৎ ৯১%) পুরো হিসাবে প্রাধান্য বিস্তার করছে। R² = ০.৫১৪ মানে মডেলটি দামের প্রায় ৫১% variance ব্যাখ্যা করতে পারছে।]

#quote(block: true)[
#strong[Practical tip:] When you see RMSE ≫ MAE in a paper, it usually means a few large outlier errors are driving the result. Ask whether the authors examined those cases (Section 6.4, Error Analysis).

#bni[পরামর্শ: কোনো পেপারে RMSE ≫ MAE দেখলে বুঝবেন কয়েকটি বড় outlier ভুল ফলাফলকে চালাচ্ছে।]
]

== Gradient Descent --- Two Iterations by Hand
<gradient-descent-two-iterations-by-hand>
#bnsub(2)[গ্রেডিয়েন্ট ডিসেন্ট হাতে-কলমে]
#strong[Setup:] We fit $y = w dot.op x$ (a single weight, no bias) to one data point: $x = 2 \, quad y = 10$. The true answer is obviously `w = 5`. Let's watch gradient descent find it.

Loss (squared error): $L = \( y - w dot.op x \)^2$ Gradient: $frac(d L, d w) = - 2 x \( y - w dot.op x \)$ Learning rate: `η = 0.1` Starting guess: `w = 0`

#strong[Iteration 1:]

#quote(block: true)[
prediction: $hat(y) = 0 times 2 = 0$ error: $y - hat(y) = 10 - 0 = 10$ gradient: $frac(d L, d w) = - 2 \( 2 \) \( 10 \) = - 40$ update: $w = w - eta dot.op frac(d L, d w) = 0 - 0.1 \( - 40 \) = 0 + 4 = 4$
]

#strong[Iteration 2:]

#quote(block: true)[
prediction: $hat(y) = 4 times 2 = 8$ error: $10 - 8 = 2$ gradient: $frac(d L, d w) = - 2 \( 2 \) \( 2 \) = - 8$ update: $w = 4 - 0.1 \( - 8 \) = 4 + 0.8 = 4.8$
]

#strong[Iteration 3:]

#quote(block: true)[
prediction: $hat(y) = 4.8 times 2 = 9.6$\; error $= 0.4$\; gradient $= - 1.6$ update: $w = 4.8 + 0.16 = 4.96$
]

The weight moves 0 → 4 → 4.8 → 4.96 → … converging toward 5. Notice the steps get #strong[smaller] as the error shrinks --- that is automatic, because the gradient itself is proportional to the error.

#bn[Weight-টি ০ → ৪ → ৪.৮ → ৪.৯৬ … করে ৫-এর দিকে এগোচ্ছে। লক্ষ্য করুন, error কমার সাথে সাথে ধাপগুলো ছোট হয়ে আসছে --- এটি স্বয়ংক্রিয়, কারণ gradient নিজেই error-এর সমানুপাতিক।]

What if the learning rate is wrong? / লার্নিং রেট ভুল হলে কী হয়?

#figure(
  align(center)[#table(
    columns: (20.54%, 50.28%, 29.18%),
    align: (auto,auto,auto,),
    table.header([η (learning rate)], [Behaviour], [ফলাফল],),
    table.hline(),
    [`η = 0.001`], [w: 0 → 0.04 → 0.08 … takes thousands of steps], [অত্যন্ত ধীর convergence],
    [`η = 0.1`], [w: 0 → 4 → 4.8 → 4.96 (healthy convergence)], [সুস্থ convergence],
    [`η = 0.5`], [w: 0 → 20 → −40 → 140 … #strong[diverges]], [মডেল সম্পূর্ণ ভেঙে পড়ে],
  )]
  , kind: table
  )

With `η = 0.5`: $w = 0 - 0.5 \( - 40 \) = 20$, then prediction `= 40`, error $= - 30$, gradient $= - 2 \( 2 \) \( - 30 \) = + 120$, so $w = 20 - 0.5 \( 120 \) = - 40$. The weight oscillates with growing amplitude and #strong[never converges] --- this is what a diverging loss curve looks like in practice (Section 6.2).

== Gini Impurity & a Decision Tree Split
<gini-impurity-a-decision-tree-split>
#bnsub(2)[গিনি ইম্পিউরিটি ও ডেসিশন ট্রি স্প্লিট]
#strong[Setup:] 10 emails --- 5 spam, 5 not-spam. We test splitting on the feature “contains the word #emph[free]”.

#strong[Gini impurity of the parent node] ($G = 1 - sum p_i^2$):

#quote(block: true)[
$ p \( upright("spam") \) = 5 / 10 = 0.5 $, $p \( upright("not-spam") \) = 5 / 10 = 0.5$ $ G_(p a r e n t) = 1 - \( 0.5^2 + 0.5^2 \) = 1 - \( 0.25 + 0.25 \) = 1 - 0.5 = 0.500 $
]

A Gini of 0.5 is the #strong[worst possible] for two classes --- completely mixed, no information.

#strong[After the split:]

#emph[Left branch --- contains “free”] (4 emails: 4 spam, 0 not-spam):

#quote(block: true)[
$ G_(l e f t) = 1 - \( 1.0^2 + 0.0^2 \) = 1 - 1 = 0.000 $ ← perfectly pure!
]

#emph[Right branch --- no “free”] (6 emails: 1 spam, 5 not-spam):

#quote(block: true)[
$ p \( upright("spam") \) = 1 / 6 = 0.167 $, $p \( upright("not") \) = 5 / 6 = 0.833$ $ G_(r i g h t) = 1 - \( 0.167^2 + 0.833^2 \) = 1 - \( 0.028 + 0.694 \) = 1 - 0.722 = 0.278 $
]

#strong[Weighted Gini after the split] (weight each branch by its share of samples):

#quote(block: true)[
$ G_(s p l i t) = (4 / 10) \( 0.000 \) + (6 / 10) \( 0.278 \) = 0 + 0.167 = 0.167 $
]

#strong[Information Gain (Gini reduction):]

#quote(block: true)[
$ upright("Gain") = G_(p a r e n t) - G_(s p l i t) = 0.500 - 0.167 = 0.333 $
]

#strong[Interpretation:] This split reduces impurity by 0.333 --- a large gain. A decision tree tries every possible feature and threshold, computes this gain for each, and #strong[greedily picks the split with the highest gain]. That is literally the whole CART training algorithm, repeated recursively.

#bn[#strong[ব্যাখ্যা:] এই split impurity ০.৩৩৩ কমিয়েছে --- একটি বড় gain। ডেসিশন ট্রি প্রতিটি সম্ভাব্য ফিচার ও threshold পরীক্ষা করে, প্রতিটির gain হিসাব করে, এবং সবচেয়ে বেশি gain দেয় এমন split বেছে নেয় --- বারবার, recursively। এটাই মূলত সম্পূর্ণ CART অ্যালগরিদম।]

== k-Means --- One Full Iteration
<k-means-one-full-iteration>
#bnsub(2)[কে-মিন্সের একটি সম্পূর্ণ ধাপ]
#strong[Setup:] Six 1-D points: `2, 3, 4, 10, 11, 12`. We want `k = 2` clusters. Initial (deliberately poor) centroids: `c₁ = 2`, `c₂ = 4`.

#strong[Step 1 --- Assign each point to the nearest centroid:]

#figure(
  align(center)[#table(
    columns: (18.27%, 27.24%, 27.24%, 27.24%),
    align: (auto,auto,auto,auto,),
    table.header([Point], [Distance to c₁=2], [Distance to c₂=4], [Assigned to],),
    table.hline(),
    [2], [0], [2], [c₁],
    [3], [1], [1], [c₁ (tie → first)],
    [4], [2], [0], [c₂],
    [10], [8], [6], [c₂],
    [11], [9], [7], [c₂],
    [12], [10], [8], [c₂],
  )]
  , kind: table
  )

Cluster 1 = {2, 3}; Cluster 2 = {4, 10, 11, 12}

#strong[Step 2 --- Recompute centroids as the mean of their members:]

#quote(block: true)[
$ c_1 = frac(2 + 3, 2) = 2.5\
c_2 = frac(4 + 10 + 11 + 12, 4) = 37 / 4 = 9.25 $
]

#strong[Step 3 --- Reassign with the new centroids:]

Point 4: distance to 2.5 is `1.5`\; distance to 9.25 is `5.25` → now moves to #strong[Cluster 1]. All others keep their assignment.

Cluster 1 = {2, 3, 4}; Cluster 2 = {10, 11, 12}

#strong[Step 4 --- Recompute again:]

#quote(block: true)[
$ c_1 = frac(2 + 3 + 4, 3) = 3.0\
c_2 = frac(10 + 11 + 12, 3) = 11.0 $
]

#strong[Step 5 ---] Reassigning changes nothing now, so the algorithm has #strong[converged]. Final clusters: `{2,3,4}` around 3.0 and `{10,11,12}` around 11.0 --- clearly the correct grouping.

#strong[Final inertia] (within-cluster sum of squared distances):

#quote(block: true)[
$ upright("Inertia") = [\( 2 - 3 \)^2 + \( 3 - 3 \)^2 + \( 4 - 3 \)^2] + [\( 10 - 11 \)^2 + \( 11 - 11 \)^2 + \( 12 - 11 \)^2]\
upright("Inertia") = \[ 1 + 0 + 1 \] + \[ 1 + 0 + 1 \] = 4.0 $
]

#strong[Lesson / শিক্ষা:] Even from a bad initialization, k-Means self-corrected in two iterations. But this is a 1-D toy problem; in high dimensions a poor start can converge to a genuinely wrong answer --- which is why `k-means++` initialization and multiple restarts (`n_init`) exist.

#bn[খারাপ initialization থেকেও k-Means দুই ধাপেই নিজেকে শুধরে নিলো। তবে এটি সহজ ১-D উদাহরণ; বহু-ডাইমেনশনে খারাপ শুরু সত্যিকারের ভুল উত্তরে আটকে যেতে পারে --- এজন্যই `k-means++` ও একাধিক restart ব্যবহার করা হয়।]

== Cross-Validation & Reporting Mean ± Std
<cross-validation-reporting-mean-std>
#bnsub(2)[ক্রস-ভ্যালিডেশন ও গড় ± স্ট্যান্ডার্ড ডেভিয়েশন]
#strong[Setup:] 5-fold cross-validation produces these accuracy scores:

#quote(block: true)[
`Fold scores: 0.82, 0.88, 0.79, 0.91, 0.85`
]

#strong[Mean:]

#quote(block: true)[
$ upright("mean") = frac(0.82 + 0.88 + 0.79 + 0.91 + 0.85, 5) = 4.25 / 5 = 0.850 $
]

#strong[Sample standard deviation] (using `n−1` in the denominator):

#quote(block: true)[
deviations: `−0.03, +0.03, −0.06, +0.06, 0.00` \ squared: `0.0009, 0.0009, 0.0036, 0.0036, 0.0000` → $sum = 0.0090$ $ s = sqrt(0.0090 / 4) = sqrt(0.00225) = 0.0474 $
]

#strong[Report as:] $upright("Accuracy") = 0.850 plus.minus 0.047$ (or 85.0% ± 4.7%)

#strong[Why this matters / কেন গুরুত্বপূর্ণ:] Suppose a competing model reports 0.870. Is it better? Our model's fold scores range from 0.79 to 0.91 --- a spread of 12 percentage points. A single 0.870 number sits comfortably #strong[inside] our model's natural fold-to-fold variation, so claiming superiority would be unjustified without a statistical test (Section 19.7).

#bn[ধরুন প্রতিদ্বন্দ্বী মডেল ০.৮৭০ রিপোর্ট করেছে। এটি কি ভালো? আমাদের মডেলের fold স্কোর ০.৭৯ থেকে ০.৯১ পর্যন্ত ওঠানামা করে। একক ০.৮৭০ সংখ্যাটি আমাদের মডেলের স্বাভাবিক ওঠানামার ভেতরেই পড়ে, তাই statistical test ছাড়া শ্রেষ্ঠত্ব দাবি করা অযৌক্তিক।]

== Is the Improvement Real? A Paired t-Test
<is-the-improvement-real-a-paired-t-test>
#bnsub(2)[উন্নতিটি কি সত্যি?]
#strong[Scenario:] Model A (baseline) vs Model B (proposed), same 5 CV folds, same seeds:

#figure(
  align(center)[#table(
    columns: (17.87%, 21.6%, 21.6%, 38.93%),
    align: (auto,auto,auto,auto,),
    table.header([Fold], [Model A], [Model B], [Difference (B − A)],),
    table.hline(),
    [1], [0.82], [0.85], [+0.03],
    [2], [0.88], [0.90], [+0.02],
    [3], [0.79], [0.83], [+0.04],
    [4], [0.91], [0.92], [+0.01],
    [5], [0.85], [0.88], [+0.03],
  )]
  , kind: table
  )

Mean of differences:

#quote(block: true)[
$ macron(d) = frac(0.03 + 0.02 + 0.04 + 0.01 + 0.03, 5) = 0.13 / 5 = 0.026 $
]

Standard deviation of differences:

#quote(block: true)[
deviations from 0.026: `+0.004, −0.006, +0.014, −0.016, +0.004` \ squared: `0.000016, 0.000036, 0.000196, 0.000256, 0.000016` → $sum = 0.00052$ $ s_d = sqrt(0.00052 / 4) = sqrt(0.00013) = 0.0114 $
]

t-statistic:

#quote(block: true)[
$ t = frac(macron(d), s_d \/ sqrt(n)) = frac(0.026, 0.0114 \/ sqrt(5)) = frac(0.026, 0.0114 \/ 2.236) = 0.026 / 0.0051 = 5.10 $
]

With $d f = n - 1 = 4$, the two-tailed critical value at α = 0.05 is approximately #strong[2.776]. Since #strong[5.10 \> 2.776], the improvement #strong[is statistically significant] (p \< 0.05).

#strong[The key insight / মূল অন্তর্দৃষ্টি:] Model B beat Model A on #strong[every single fold], and consistently by a similar margin. That consistency --- not the size of the gap --- is what makes the result trustworthy. A model that wins by +0.10 on one fold but loses on two others would produce a much smaller t-statistic and would #strong[not] be significant, even though its “best case” looks more impressive.

#bn[Model B প্রতিটি fold-এই Model A-কে হারিয়েছে, এবং প্রায় একই ব্যবধানে। এই সামঞ্জস্যতাই --- ব্যবধানের আকার নয় --- ফলাফলকে বিশ্বাসযোগ্য করে তোলে।]

#quote(block: true)[
#strong[Caution:] The paired t-test assumes roughly normally distributed differences and is often applied to CV folds that are not fully independent (folds share training data). For comparing multiple classifiers across multiple datasets, Demšar #cite(<ref14>) recommends non-parametric alternatives (Wilcoxon signed-rank, Friedman test with post-hoc analysis) instead.

#bni[সতর্কতা: CV fold-গুলো সম্পূর্ণ স্বাধীন নয় (তারা ট্রেনিং ডেটা ভাগ করে নেয়)। একাধিক ডেটাসেটে একাধিক classifier তুলনা করতে Demšar #cite(<ref14>) non-parametric বিকল্প (Wilcoxon, Friedman test) সুপারিশ করেন।]
]

== Reading an Ablation Table Correctly
<reading-an-ablation-table-correctly>
#bnsub(2)[অ্যাবলেশন টেবিল সঠিকভাবে পড়া]
#strong[Proposed model:] CNN + BiLSTM + Attention

#figure(
  align(center)[#table(
    columns: (27.65%, 22.87%, 12.69%, 36.8%),
    align: (auto,auto,auto,auto,),
    table.header([Variant], [F1-Score], [Drop vs Full], [Interpretation],),
    table.hline(),
    [#strong[Full model]], [#strong[93.8%]], [---], [Reference],
    [− Attention], [91.1%], [−2.7], [Attention contributes 2.7 points],
    [− BiLSTM], [90.2%], [−3.6], [BiLSTM contributes 3.6 points],
    [− CNN], [88.9%], [−4.9], [CNN contributes most],
    [CNN only (no BiLSTM, no Attention)], [87.4%], [−6.4], [---],
  )]
  , kind: table
  )

#bn[How to read this critically / সমালোচনামূলকভাবে কীভাবে পড়বেন:]

+ #strong[Do the contributions add up sensibly?] Individual drops sum to 2.7 + 3.6 + 4.9 = 11.2 points, but the full model is only 6.4 points above the CNN-only baseline. This is #strong[normal and expected] --- components overlap in function, so contributions are not additive. A paper claiming they #emph[are] additive misunderstands its own ablation.
+ #strong[Is every component earning its cost?] Attention adds 2.7 points. If it also doubles training time and parameters, a reviewer will fairly ask whether that trade is worth it (Section 6.6).
+ #strong[Watch for the missing row.] Notice there is no “BiLSTM only” or “Attention only” row. A thorough ablation removes components #strong[both individually and in combination]. Missing rows are often where the inconvenient results live.

#bn[\(১) পৃথক drop-গুলোর যোগফল (১১.২) পূর্ণ মডেলের প্রকৃত সুবিধার (৬.৪) চেয়ে বেশি --- এটি স্বাভাবিক, কারণ component-গুলোর কাজ পরস্পরের সাথে overlap করে; অবদান যোগ-বিয়োগযোগ্য নয়। (২) প্রতিটি component কি তার খরচ পোষাচ্ছে? Attention ২.৭ পয়েন্ট দিচ্ছে, কিন্তু ট্রেনিং সময় দ্বিগুণ করলে সেই লেনদেন যৌক্তিক কিনা প্রশ্ন উঠবে। (৩) অনুপস্থিত সারির দিকে খেয়াল করুন --- যেসব combination দেখানো হয়নি, প্রায়ই সেখানেই অসুবিধাজনক ফলাফল লুকিয়ে থাকে।]

== Detecting Data Leakage in Numbers
<detecting-data-leakage-in-numbers>
#bnsub(2)[সংখ্যায় ডেটা লিকেজ ধরা]
A realistic scenario / বাস্তব পরিস্থিতি:

#figure(
  align(center)[#table(
    columns: (74.48%, 25.52%),
    align: (auto,auto,),
    table.header([Setup], [Reported Accuracy],),
    table.hline(),
    [Scaler fit on the #strong[entire] dataset before splitting (leakage)], [97.3%],
    [Scaler fit #strong[only on the training split] (correct)], [91.8%],
    [Deployed on genuinely new data], [89.5%],
  )]
  , kind: table
  )

#strong[What happened:] In the leaky setup, the `StandardScaler` computed its mean and standard deviation using #strong[all 1,000 samples --- including the test set]. Each test sample was therefore scaled using statistics that already “knew” about it. The result: a 5.5-point inflation that completely vanishes in deployment.

#strong[How you would catch this while reading a paper:]

- A suspiciously large gap between reported accuracy and any independent/external validation figure

- Preprocessing described #emph[before] the train/test split in the methodology section

- A result that is far above the established state of the art with no architectural reason given

- No mention of a `Pipeline` or of fitting transforms on training data only

#bn[Leaky সেটআপে `StandardScaler` তার গড় ও স্ট্যান্ডার্ড ডেভিয়েশন পুরো ১,০০০ নমুনা থেকে --- টেস্ট সেটসহ হিসাব করেছে। ফলে প্রতিটি টেস্ট নমুনা এমন পরিসংখ্যান দিয়ে scale হয়েছে যা তাকে আগেই “চিনতো”। ফলাফল: ৫.৫ পয়েন্টের কৃত্রিম বৃদ্ধি, যা deployment-এ সম্পূর্ণ উধাও হয়ে যায়।]

#bn[পেপার পড়ার সময় যেভাবে ধরবেন: রিপোর্ট করা accuracy ও external validation-এর মধ্যে অস্বাভাবিক বড় ব্যবধান; methodology-তে split-এর আগেই preprocessing-এর বর্ণনা; কোনো স্থাপত্যগত কারণ ছাড়াই SOTA-র অনেক ওপরে ফলাফল; `Pipeline` বা training-only fit-এর কোনো উল্লেখ না থাকা।]

#quote(block: true)[
Kapoor and Narayanan #cite(<ref13>) surveyed ML-based science across disciplines and found leakage affecting #strong[294 papers across 17 fields], in several cases producing dramatically over-optimistic conclusions. This is not a rare or theoretical problem.

#bni[Kapoor ও Narayanan #cite(<ref13>) বিভিন্ন বৈজ্ঞানিক ক্ষেত্রে অনুসন্ধান করে দেখেছেন যে leakage ১৭টি ক্ষেত্রের ২৯৪টি পেপারকে প্রভাবিত করেছে। এটি বিরল বা তাত্ত্বিক সমস্যা নয়।]
]

== Naive Bayes --- Worked Example
<naive-bayes-worked-example>
#bnsub(2)[নেইভ বেইজ উদাহরণ]
#strong[Scenario:] Classify an email as Spam or Not-Spam using two words as features: whether it contains “free” and whether it contains “meeting”. Training data (10 emails):

#figure(
  align(center)[#table(
    columns: (12.5%, 34.77%, 32.79%, 19.94%),
    align: (auto,auto,auto,auto,),
    table.header([], [Contains “free”], [Contains “meeting”], [Class],),
    table.hline(),
    [Prior counts], [Spam: 4/5 emails have “free”], [Spam: 1/5 have “meeting”], [Spam = 5 emails],
    [], [Not-Spam: 1/5 emails have “free”], [Not-Spam: 4/5 have “meeting”], [Not-Spam = 5 emails],
  )]
  , kind: table
  )

#strong[New email:] contains “free”, does not contain “meeting”. Classify it.

Using Bayes' theorem, we compare (up to a constant) $P \( upright("Spam") \) dot.op P \( upright("free") divides upright("Spam") \) dot.op P \( upright("no meeting") divides upright("Spam") \)$ against the same for Not-Spam:

#quote(block: true)[
$ P \( upright("Spam") divides x \) prop P \( upright("Spam") \) dot.op P \( upright("free") divides upright("Spam") \) dot.op P \( not upright("meeting") divides upright("Spam") \)\
= 0.5 times 0.8 times \( 1 - 0.2 \) = 0.5 times 0.8 times 0.8 = 0.320 $
]

#quote(block: true)[
$ P \( upright("Not-Spam") divides x \) prop P \( upright("Not-Spam") \) dot.op P \( upright("free") divides upright("Not-Spam") \) dot.op P \( not upright("meeting") divides upright("Not-Spam") \)\
= 0.5 times 0.2 times \( 1 - 0.8 \) = 0.5 times 0.2 times 0.2 = 0.020 $
]

Normalizing: $P \( upright("Spam") \) = frac(0.320, 0.320 + 0.020) = 0.941$ (94.1%). The email is classified #strong[Spam] with high confidence.

#bn[Bayes' theorem ব্যবহার করে দুটি ক্লাসের (Spam/Not-Spam) আপেক্ষিক স্কোর হিসাব করা হয়েছে --- “নেইভ” অনুমান হলো “free” ও “meeting” ফিচার দুটো একে অপর থেকে independent। হিসাব শেষে normalize করলে Spam হওয়ার সম্ভাবনা ৯৪.১% --- তাই ইমেইলটি #strong[Spam] হিসেবে চিহ্নিত হলো।]

#strong[Lesson / শিক্ষা:] Naive Bayes multiplies probabilities across features assuming independence --- this is why it is so fast (no iterative optimization needed, just counting), but also why it can misfire badly when features are strongly correlated (e.g., “free” and “discount” almost always appearing together would be double-counted as if they were two independent pieces of evidence).

#bn[Naive Bayes ফিচারগুলোকে independent ধরে probability গুণ করে --- এ কারণেই এটি দ্রুত (কোনো iterative optimization লাগে না), কিন্তু ফিচার পরস্পর সম্পর্কিত হলে (যেমন “free” আর “discount” প্রায়ই একসাথে আসে) ভুল করতে পারে, কারণ একই তথ্য দুইবার গোনা হয়।]

== k-Nearest Neighbors --- Worked Example
<k-nearest-neighbors-worked-example>
#bnsub(2)[কে-এনএন উদাহরণ]
#strong[Scenario:] Predict whether a new customer (Age = 33, Income = 48k) will churn, using $k = 3$ and existing labeled customers:

#figure(
  align(center)[#table(
    columns: (20.08%, 9.21%, 15.72%, 20.08%, 34.91%),
    align: (auto,auto,auto,auto,auto,),
    table.header([Customer], [Age], [Income (k)], [Churned?], [Distance to new point],),
    table.hline(),
    [A], [30], [50], [No], [$sqrt(9 + 4) = 3.61$],
    [B], [45], [40], [Yes], [$sqrt(144 + 64) = 14.42$],
    [C], [35], [45], [No], [$sqrt(4 + 9) = 3.61$],
    [D], [32], [47], [No], [$sqrt(1 + 1) = 1.41$],
    [E], [50], [20], [Yes], [$sqrt(289 + 784) = 32.76$],
  )]
  , kind: table
  )

Sorted by distance, the 3 nearest neighbors ($k = 3$) are: #strong[D (1.41, No)], #strong[A (3.61, No)], #strong[C (3.61, No)]. All three vote “No” → the new customer is predicted #strong[not to churn].

#bn[নতুন গ্রাহকের (Age=33, Income=48k) সাথে বিদ্যমান সব গ্রাহকের দূরত্ব মাপা হয়েছে। $k = 3$ অনুযায়ী নিকটতম ৩ জন (D, A, C) সবাই “No” --- তাই প্রেডিকশন #strong[churn করবে না]।]

#strong[Critical pitfall --- feature scaling / গুরুত্বপূর্ণ ভুল --- ফিচার স্কেলিং:] Notice “Income” ranges over tens of thousands while “Age” ranges over tens --- if Income were left in raw taka/dollar units instead of thousands, it would completely dominate the distance calculation and Age would become irrelevant. This is exactly why #strong[k-NN requires feature scaling] before use.

#bn[লক্ষ্য করুন “Income” হাজার হাজার এককে আর “Age” মাত্র কয়েক দশকে --- Income যদি raw টাকায় রাখা হতো, তাহলে দূরত্ব হিসাবে Age-এর কোনো প্রভাবই থাকতো না। এ কারণেই #strong[k-NN ব্যবহারের আগে ফিচার স্কেলিং আবশ্যক]।]

== A Single Neuron Forward & Backward Pass
<a-single-neuron-forward-backward-pass>
#bnsub(2)[একটি নিউরনের ফরওয়ার্ড ও ব্যাকওয়ার্ড পাস]
#strong[Setup:] One neuron with two inputs, sigmoid activation. Inputs $x_1 = 1.0 \, med x_2 = 0.5$\; weights $w_1 = 0.4 \, med w_2 = - 0.6$\; bias $b = 0.1$\; true label $y = 1$\; learning rate $eta = 0.5$.

#bn[#strong[Forward pass / ফরওয়ার্ড পাস:]]

#quote(block: true)[
$ z = w_1 x_1 + w_2 x_2 + b = \( 0.4 \) \( 1.0 \) + \( - 0.6 \) \( 0.5 \) + 0.1 = 0.4 - 0.3 + 0.1 = 0.2\
hat(y) = sigma \( z \) = frac(1, 1 + e^(- 0.2)) = frac(1, 1 + 0.819) = 0.550 $
]

#strong[Loss (squared error):]

#quote(block: true)[
$ L = \( y - hat(y) \)^2 = \( 1 - 0.550 \)^2 = 0.2025 $
]

#strong[Backward pass / ব্যাকওয়ার্ড পাস] (chain rule):

#quote(block: true)[
$ frac(partial L, partial hat(y)) = - 2 \( y - hat(y) \) = - 2 \( 1 - 0.550 \) = - 0.900\
frac(partial hat(y), partial z) = hat(y) \( 1 - hat(y) \) = 0.550 \( 1 - 0.550 \) = 0.2475\
frac(partial L, partial z) = frac(partial L, partial hat(y)) dot.op frac(partial hat(y), partial z) = - 0.900 times 0.2475 = - 0.2228 $
]

Now the gradient with respect to each weight ($partial z \/ partial w_1 = x_1$):

#quote(block: true)[
$ frac(partial L, partial w_1) = - 0.2228 times x_1 = - 0.2228 times 1.0 = - 0.2228\
frac(partial L, partial w_2) = - 0.2228 times x_2 = - 0.2228 times 0.5 = - 0.1114 $
]

#strong[Weight update:]

#quote(block: true)[
$ w_1^(upright("new")) = w_1 - eta frac(partial L, partial w_1) = 0.4 - 0.5 \( - 0.2228 \) = 0.4 + 0.1114 = 0.5114\
w_2^(upright("new")) = w_2 - eta frac(partial L, partial w_2) = - 0.6 - 0.5 \( - 0.1114 \) = - 0.6 + 0.0557 = - 0.5443 $
]

#strong[Lesson / শিক্ষা:] This entire calculation --- forward pass, loss, and the chain-rule gradient back to each weight --- is exactly what #strong[backpropagation] #cite(<ref34>) does automatically, for every neuron, in every layer, of a network with millions of parameters. The math never changes; only the number of times it's repeated does.

#bn[এই সম্পূর্ণ হিসাব --- forward pass, loss, এবং chain rule দিয়ে প্রতিটি weight-এ gradient পাঠানো --- এটাই #strong[backpropagation] #cite(<ref34>) স্বয়ংক্রিয়ভাবে করে, লক্ষ লক্ষ প্যারামিটারের নেটওয়ার্কের প্রতিটি নিউরনে। গণিত কখনো পাল্টায় না, শুধু পুনরাবৃত্তির সংখ্যা পাল্টায়।]

== PCA --- Worked Example on 2D Data
<pca-worked-example-on-2d-data>
#bnsub(2)[পিসিএ উদাহরণ]
#strong[Scenario:] Four 2D points (already mean-centered): $\( 2 \, 2 \) \, med \( 0 \, - 2 \) \, med \( - 2 \, 0 \) \, med \( 0 \, 0 \)$.

#strong[Covariance matrix] entries:

#quote(block: true)[
$ upright("Var") \( x \) = frac(2^2 + 0^2 + \( - 2 \)^2 + 0^2, 4) = 8 / 4 = 2.0\
upright("Var") \( y \) = frac(2^2 + \( - 2 \)^2 + 0^2 + 0^2, 4) = 8 / 4 = 2.0\
upright("Cov") \( x \, y \) = frac(\( 2 \) \( 2 \) + \( 0 \) \( - 2 \) + \( - 2 \) \( 0 \) + \( 0 \) \( 0 \), 4) = 4 / 4 = 1.0 $
]

Covariance matrix: $mat(delim: "(", 2.0, 1.0; 1.0, 2.0)$. Solving for eigenvalues ($lambda^2 - upright("trace") dot.op lambda + det = 0$, i.e.~$lambda^2 - 4 lambda + 3 = 0$) gives $lambda_1 = 3 \, med lambda_2 = 1$.

#strong[Variance explained by the first principal component:]

#quote(block: true)[
$ frac(lambda_1, lambda_1 + lambda_2) = 3 / 4 = 0.75 = 75 % $
]

#strong[Lesson / শিক্ষা:] The first principal component (aligned with the direction $\( 1 \, 1 \)$, since the two features are positively correlated) captures 75% of the total variance in just one dimension instead of two --- this is exactly the compression PCA provides. If $lambda_1 \/ \( lambda_1 + lambda_2 \)$ had come out closer to 50%, it would mean the two original features carry mostly independent information and compressing to one dimension would lose a lot.

#bn[প্রথম principal component (দিক $\( 1 \, 1 \)$, কারণ দুটি ফিচার ধনাত্মকভাবে correlated) মোট variance-এর ৭৫% একটি মাত্র ডাইমেনশনেই ধরে ফেলেছে --- এটাই PCA-র সংকোচন ক্ষমতা। অনুপাতটি ৫০%-এর কাছাকাছি হলে বোঝাতো দুটি ফিচার প্রায় independent এবং এক ডাইমেনশনে সংকুচিত করলে অনেক তথ্য হারাতে হতো।]

== Hard vs.~Soft Voting Ensemble --- Worked Example
<hard-vs.-soft-voting-ensemble-worked-example>
#bnsub(2)[ভোটিং এনসেম্বল উদাহরণ]
#strong[Scenario:] Three classifiers predict on the same instance:

#figure(
  align(center)[#table(
    columns: (22.66%, 20.71%, 28.32%, 28.32%),
    align: (auto,auto,auto,auto,),
    table.header([Classifier], [Predicted class], [$P \( upright("Class A") \)$], [$P \( upright("Class B") \)$],),
    table.hline(),
    [Logistic Regression], [A], [0.55], [0.45],
    [Random Forest], [B], [0.40], [0.60],
    [SVM], [B], [0.30], [0.70],
  )]
  , kind: table
  )

#strong[Hard voting:] counts raw votes --- A gets 1 vote, B gets 2 votes → #strong[predicts B].

#strong[Soft voting:] averages the probabilities ---

#quote(block: true)[
$ P \( upright("A") \) = frac(0.55 + 0.40 + 0.30, 3) = 1.25 / 3 = 0.417\
P \( upright("B") \) = frac(0.45 + 0.60 + 0.70, 3) = 1.75 / 3 = 0.583 $
]

Soft voting also predicts #strong[B], but notice #emph[why] it's more informative: it shows B won with 58.3% average confidence, not just “2 out of 3 votes.” If Logistic Regression's confidence in A had been 0.90 instead of 0.55, soft voting could flip the outcome to A even though the raw vote count (1 vs 2) stays identical --- hard voting would still say B, missing that one highly confident vote.

#bn[Hard voting শুধু ভোট গোনে (A=1, B=2 → B জেতে)। Soft voting probability গড় করে (A=41.7%, B=58.3% → B জেতে), কিন্তু এটি #emph[কতটা জোরালোভাবে] জিতেছে তাও দেখায়। যদি Logistic Regression-এর A-তে confidence ০.৯০ হতো, soft voting ফলাফল পাল্টাতে পারতো, কিন্তু hard voting একই থাকতো (B) কারণ সে শুধু ভোট গোনে, confidence নয়।]

#recap[
- A 93% accuracy model can have only 40% precision and 53% F1 --- always compute the full picture yourself.

  #bni[৯৩% accuracy-র মডেলের precision মাত্র ৪০% হতে পারে --- সবসময় পূর্ণ চিত্র নিজে হিসাব করুন।]

- RMSE ≫ MAE signals outlier-driven error; Macro-F1 ≪ Weighted-F1 signals minority-class failure.

  RMSE ≫ MAE মানে outlier-চালিত ভুল; Macro-F1 ≪ Weighted-F1 মানে minority class-এ ব্যর্থতা।

- Consistency across folds --- not the size of the gap --- is what makes an improvement statistically trustworthy.

  #bni[Fold জুড়ে সামঞ্জস্যতাই উন্নতিকে পরিসংখ্যানগতভাবে বিশ্বাসযোগ্য করে, ব্যবধানের আকার নয়।]

]
