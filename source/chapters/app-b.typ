#import "../template.typ": *

= Formula Sheet
<formula-sheet>
#bnsub(1)[গুরুত্বপূর্ণ সূত্র]
This sheet collects the formulas you will meet most often in ML papers. Each entry gives the formula, what its symbols mean, the intuition, a small example, and why it matters when you read a paper. Chapter 19 works through many of them in full.

#bn[এই শিটে ML পেপারে সবচেয়ে বেশি দেখা সূত্রগুলো একসাথে রাখা হয়েছে। প্রতিটিতে আছে সূত্র, চিহ্নগুলোর অর্থ, মূল ধারণা, একটি ছোট উদাহরণ, এবং পেপার পড়ার সময় এটি কেন গুরুত্বপূর্ণ। Chapter 19-এ এদের অনেকগুলো পূর্ণভাবে হিসাব করে দেখানো হয়েছে।]

== Descriptive Statistics and Probability
<descriptive-statistics-and-probability>
#bnsub(2)[বর্ণনামূলক পরিসংখ্যান ও সম্ভাবনা]
=== Sample mean · নমুনা গড়
<sample-mean-নমন-গড>
$ macron(x) = 1 / n sum_(i = 1)^n x_i $

#strong[Symbols.] $x_i$ is the $i$-th value; $n$ is the number of values. #strong[Intuition.] The balance point of the data. #strong[Example.] For 80, 90 and 100, $macron(x) = 90$. #strong[In papers.] Results averaged over runs or folds are means --- always look for the spread that goes with them.

#bn[ডেটার ভারসাম্য-বিন্দু। ৮০, ৯০, ১০০-এর গড় ৯০। পেপারে একাধিক run বা fold-এর ফলাফল সাধারণত গড় হিসেবে দেওয়া হয় --- সাথে বিস্তার (spread) দেওয়া আছে কিনা সবসময় দেখুন।]

=== Sample variance and standard deviation · ভ্যারিয়েন্স ও স্ট্যান্ডার্ড ডেভিয়েশন
<sample-variance-and-standard-deviation-ভযরযনস-ও-সটযনডরড-ডভযশন>
$ s^2 = frac(1, n - 1) sum_(i = 1)^n \( x_i - macron(x) \)^2 \, #h(2em) s = sqrt(s^2) $

#strong[Symbols.] $n - 1$ (not $n$) corrects for estimating the mean from the same sample. #strong[Intuition.] How far values typically sit from the mean; $s$ is in the original units. #strong[Example.] For 80, 90 and 100: $s^2 = \( 100 + 0 + 100 \) \/ 2 = 100$, so $s = 10$. #strong[In papers.] "0.85 ± 0.02" usually means mean ± standard deviation across runs. A gain smaller than the standard deviation may be noise.

#bn[গড় থেকে মানগুলো সাধারণত কত দূরে থাকে তার পরিমাপ; $s$ মূল এককে প্রকাশিত। পেপারে "0.85 ± 0.02" সাধারণত গড় ± standard deviation বোঝায়। Standard deviation-এর চেয়ে ছোট উন্নতি নিছক noise হতে পারে।]

=== Standardisation · স্ট্যান্ডার্ডাইজেশন
<standardisation-সটযনডরডইজশন>
$ z = frac(x - mu, sigma) $

#strong[Intuition.] Re-expresses a value as "how many standard deviations from the mean". #strong[In papers.] $mu$ and $sigma$ must be computed on the training split only; computing them on all the data is leakage (Section 3.6).

#bn[একটি মানকে "গড় থেকে কত standard deviation দূরে" হিসেবে প্রকাশ করে। পেপারে $mu$ ও $sigma$ শুধু training split থেকে হিসাব করতে হবে --- পুরো ডেটা থেকে করলে তা leakage।]

=== Probability and conditional probability · সম্ভাবনা ও শর্তাধীন সম্ভাবনা
<probability-and-conditional-probability-সমভবন-ও-শরতধন-সমভবন>
$ P \( A \) = upright("favourable outcomes") / upright("total outcomes") \, #h(2em) P \( y divides x \) = frac(P \( x divides y \) thin P \( y \), P \( x \)) $

#strong[Symbols.] $P \( y divides x \)$ is the probability of class $y$ given input $x$\; the second formula is Bayes' rule. #strong[Intuition.] A classifier estimates $P \( y divides x \)$ and predicts the most probable class. #strong[Example.] See the Naive Bayes calculation in Section 19.10. #strong[In papers.] Predicted "probabilities" are often poorly calibrated (Section 20.3).

#bn[ক্লাসিফায়ার মূলত $P \( y divides x \)$ --- ইনপুট $x$ দেওয়া থাকলে ক্লাস $y$-এর সম্ভাবনা --- অনুমান করে। দ্বিতীয় সূত্রটি Bayes' rule। পেপারে মডেলের দেওয়া "সম্ভাবনা" প্রায়ই সঠিকভাবে calibrated থাকে না।]

== Classification Metrics
<classification-metrics-1>
#bnsub(2)[ক্লাসিফিকেশন মেট্রিক]
All four use the confusion-matrix counts: true positives (TP), true negatives (TN), false positives (FP) and false negatives (FN) (Section 5.1).

#bn[চারটি সূত্রই confusion matrix-এর TP, TN, FP ও FN ব্যবহার করে।]

$ upright("Accuracy") = frac(T P + T N, T P + T N + F P + F N) #h(2em) upright("Precision") = frac(T P, T P + F P) $

$ upright("Recall") = frac(T P, T P + F N) #h(2em) F_1 = 2 dot.op frac(upright("Precision") times upright("Recall"), upright("Precision") + upright("Recall")) $

#figure(
  align(center)[#table(
    columns: (10.77%, 32.59%, 21.66%, 34.98%),
    align: (left,left,left,left,),
    table.header([Metric], [Intuition], [Use when], [বাংলা],),
    table.hline(),
    [#strong[Accuracy]], [Share of all predictions that are right], [Classes are roughly balanced], [সব প্রেডিকশনের মধ্যে সঠিকের অনুপাত; ক্লাস মোটামুটি সমান হলে],
    [#strong[Precision]], [When the model says "positive", how often it is right], [False alarms are costly], ["Positive" বললে কতবার সঠিক; ভুল সতর্কতা ব্যয়বহুল হলে],
    [#strong[Recall]], [Of the real positives, how many the model finds], [Misses are costly (disease, fraud)], [আসল positive-এর কতটা ধরা পড়ে; মিস করা বিপজ্জনক হলে],
    [#strong[F1]], [One number that is low if either precision or recall is low], [Imbalanced data, both errors matter], [Precision বা recall যেকোনোটি কম হলে কম; imbalanced ডেটায়],
  )]
  , kind: table
  )

#strong[Example.] With TP = 40, FP = 60, FN = 10 and TN = 890: accuracy = 0.93, precision = 0.40, recall = 0.80, $F_1 approx 0.53$ (Section 19.1). #strong[In papers.] A high accuracy on imbalanced data can hide a weak precision or F1 --- this example is exactly that case.

#bn[উদাহরণে accuracy ০.৯৩ হলেও precision মাত্র ০.৪০ এবং F1 প্রায় ০.৫৩। Imbalanced ডেটায় উচ্চ accuracy দুর্বল precision বা F1 লুকিয়ে রাখতে পারে।]

== Regression Metrics
<regression-metrics-1>
#bnsub(2)[রিগ্রেশন মেট্রিক]
$ upright("MAE") = 1 / m sum_(i = 1)^m lr(|y_i - hat(y)_i|) #h(2em) upright("MSE") = 1 / m sum_(i = 1)^m (y_i - hat(y)_i)^2 #h(2em) upright("RMSE") = sqrt(upright("MSE")) $

$ R^2 = 1 - frac(sum_i \( y_i - hat(y)_i \)^2, sum_i \( y_i - macron(y) \)^2) $

#strong[Symbols.] $y_i$ is the true value, $hat(y)_i$ the prediction, $macron(y)$ the mean of the true values, $m$ the number of samples.

#figure(
  align(center)[#table(
    columns: (9.1%, 50.73%, 40.16%),
    align: (left,left,left,),
    table.header([Metric], [Intuition], [বাংলা],),
    table.hline(),
    [#strong[MAE]], [Average size of the error, in the target's units; less sensitive to outliers], [ভুলের গড় আকার, টার্গেটের এককে; outlier-এ কম সংবেদনশীল],
    [#strong[MSE]], [Squares errors, so large errors dominate; the usual training loss], [ভুলকে বর্গ করে, তাই বড় ভুল প্রাধান্য পায়],
    [#strong[RMSE]], [MSE brought back to the target's units], [MSE-কে টার্গেটের এককে ফিরিয়ে আনা],
    [#strong[R²]], [Share of the target's variance explained; 1 is perfect, 0 is no better than predicting the mean], [টার্গেটের variance-এর কতটা ব্যাখ্যা হলো; ১ নিখুঁত, ০ মানে গড় বলার চেয়ে ভালো নয়],
  )]
  , kind: table
  )

#strong[In papers.] If RMSE is much larger than MAE, a few large errors dominate --- ask which samples cause them (Section 19.2). $R^2$ can be negative on a test set when the model is worse than predicting the mean.

#bn[RMSE যদি MAE-এর চেয়ে অনেক বড় হয়, তাহলে কয়েকটি বড় ভুল প্রাধান্য পাচ্ছে --- কোন নমুনাগুলো দায়ী জিজ্ঞেস করুন। মডেল গড় বলার চেয়েও খারাপ হলে test set-এ $R^2$ ঋণাত্মক হতে পারে।]

== Learning and Optimisation
<learning-and-optimisation>
#bnsub(2)[শেখা ও অপ্টিমাইজেশন]
=== Loss function and gradient descent · লস ফাংশন ও গ্রেডিয়েন্ট ডিসেন্ট
<loss-function-and-gradient-descent-লস-ফশন-ও-গরডযনট-ডসনট>
$ theta arrow.l theta - eta thin nabla_theta J \( theta \) $

#strong[Symbols.] $theta$ are the model parameters, $J \( theta \)$ the loss (how wrong the model is on the training data), $nabla_theta J$ its gradient, and $eta$ the learning rate. #strong[Intuition.] Take a small step downhill on the loss surface, then repeat. #strong[Example.] See two iterations by hand in Section 19.3. #strong[In papers.] The learning rate, optimiser (SGD, Adam) and schedule are hyperparameters that must be reported (Chapter 12).

#bn[$theta$ মডেলের parameter, $J \( theta \)$ লস (ট্রেনিং ডেটায় মডেল কতটা ভুল), $eta$ learning rate। লস-এর ঢাল বেয়ে ছোট এক পা নিচে নামা, তারপর আবার। Learning rate, optimiser ও schedule পেপারে অবশ্যই রিপোর্ট করতে হবে।]

=== Regularisation · রেগুলারাইজেশন
<regularisation-রগলরইজশন>
$ J_(upright("Ridge")) \( theta \) = upright("MSE") \( theta \) + lambda sum_(j = 1)^n theta_j^2 #h(2em) J_(upright("Lasso")) \( theta \) = upright("MSE") \( theta \) + lambda sum_(j = 1)^n \| theta_j \| $

#strong[Symbols.] $lambda gt.eq 0$ sets the strength of the penalty; the bias term is usually not penalised. Textbooks scale these terms differently (for example, by $1 / 2$ or $1 / m$), so check each paper's exact definition. #strong[Intuition.] Ridge (L2) shrinks all weights towards zero; Lasso (L1) can set some exactly to zero, which selects features. #strong[In papers.] The value of $lambda$ is a hyperparameter; ask how it was chosen.

#bn[$lambda$ শাস্তির মাত্রা ঠিক করে। Ridge (L2) সব weight-কে শূন্যের দিকে ছোট করে; Lasso (L1) কিছু weight-কে ঠিক শূন্য করে দিতে পারে, ফলে feature selection হয়। বিভিন্ন বইয়ে এই পদগুলোর scaling ভিন্ন, তাই প্রতিটি পেপারের সুনির্দিষ্ট সংজ্ঞা দেখুন।]

=== Softmax · সফটম্যাক্স
<softmax-সফটমযকস>
$ hat(p)_k = frac(e^(z_k), sum_(j = 1)^K e^(z_j)) $

#strong[Symbols.] $z_k$ is the raw score (logit) for class $k$\; $K$ is the number of classes. #strong[Intuition.] Turns any scores into positive numbers that sum to 1. #strong[Example.] Scores (2, 1, 0) become about (0.67, 0.24, 0.09). #strong[In papers.] Softmax outputs look like probabilities but are often over-confident (Section 20.3).

#bn[প্রতিটি ক্লাসের কাঁচা স্কোরকে এমন ধনাত্মক সংখ্যায় রূপান্তর করে যাদের যোগফল ১। স্কোর (২, ১, ০) হয় প্রায় (০.৬৭, ০.২৪, ০.০৯)। দেখতে সম্ভাবনার মতো হলেও প্রায়ই অতিরিক্ত আত্মবিশ্বাসী।]

=== Cross-entropy loss · ক্রস-এনট্রপি লস
<cross-entropy-loss-করস-এনটরপ-লস>
$ J = - 1 / m sum_(i = 1)^m sum_(k = 1)^K y_(i k) thin log hat(p)_(i k) $

#strong[Symbols.] $y_(i k)$ is 1 if sample $i$ belongs to class $k$ and 0 otherwise; $hat(p)_(i k)$ is the predicted probability. #strong[Intuition.] Only the probability given to the #emph[correct] class counts, and a confident wrong answer is punished heavily. #strong[Example.] If the true class gets $hat(p) = 0.9$, the loss for that sample is $- log 0.9 approx 0.11$\; if it gets $0.1$, the loss is $- log 0.1 approx 2.30$. #strong[In papers.] The standard loss for classification; "log loss" in a results table is the same quantity.

#bn[শুধু সঠিক ক্লাসকে দেওয়া সম্ভাবনাই গণনায় আসে, আর আত্মবিশ্বাসী ভুল উত্তর কঠোর শাস্তি পায়। সঠিক ক্লাসের সম্ভাবনা ০.৯ হলে লস প্রায় ০.১১, কিন্তু ০.১ হলে প্রায় ২.৩০।]

== Comparing Systems
<comparing-systems>
#bnsub(2)[সিস্টেম তুলনা]
=== Effect size across seeds · seed-জুড়ে effect size
<effect-size-across-seeds>
$ d = frac(macron(x)_B - macron(x)_A, s_p), quad s_p = sqrt(frac((n_A - 1) s_A^2 + (n_B - 1) s_B^2, n_A + n_B - 2)) $

#strong[Symbols.] $macron(x)_A$, $macron(x)_B$ are the mean scores over $n_A$, $n_B$ seeds, and $s_A$, $s_B$ their sample standard deviations. #strong[Intuition.] How large the gap is compared with seed-to-seed variation. Report it beside the difference in the metric's own units, with an interval (Section 27.5).

#bn[দুটি মডেলের গড় স্কোরের পার্থক্যকে seed-এর মিলিত standard deviation দিয়ে ভাগ করা হয়: ব্যবধান seed-থেকে-seed ওঠানামার তুলনায় কত বড়। মেট্রিকের নিজের এককে interval-সহ পার্থক্যের পাশে রিপোর্ট করুন (Section 27.5)।]

=== Relative error reduction · আপেক্ষিক ভুল-হ্রাস
<relative-error-reduction>
$ "RER" = frac(e_"old" - e_"new", e_"old") $

#strong[Example.] Accuracy from 92% to 94% means errors fall from 8% to 6%: $"RER" = 2 slash 8 = 25%$. Useful near the ceiling, but always give the absolute change as well.

#bn[৯২% থেকে ৯৪% accuracy মানে ভুল ৮% থেকে ৬%: আপেক্ষিক হ্রাস ২৫%। সর্বোচ্চ সীমার কাছে কাজে লাগে, তবে পরম পরিবর্তনও সবসময় দিন।]

=== Bootstrap percentile interval · bootstrap percentile interval
<bootstrap-percentile-interval>
$ "CI"_(95%) = [q_(0.025), q_(0.975)] "of" {M(S_1^*), dots.h, M(S_B^*)} $

#strong[Symbols.] $S_b^*$ is the $b$-th resample of the test set, drawn with replacement; $M$ is any metric, such as macro-F1; $q$ are percentiles over the $B$ resamples (1,000 to 10,000). For two systems, resample the same items for both and use the difference (Section 27.6).

#bn[Test set থেকে প্রতিস্থাপনসহ $B$ বার পুনঃনমুনা নিয়ে প্রতিবার মেট্রিক হিসাব করুন; ২.৫ ও ৯৭.৫ percentile মিলে ৯৫% interval। দুটি সিস্টেমের জন্য একই উদাহরণ পুনঃনমুনা করে পার্থক্য নিন (Section 27.6)।]

=== Multiple comparisons · একাধিক তুলনা
<multiple-comparisons-formulas>
$ P("at least one false positive") = 1 - (1 - alpha)^m #h(2em) "Bonferroni: reject if" p_i <= alpha / m $

$ "Holm: sort" p_((1)) <= dots.h <= p_((m)), "reject while" p_((i)) <= frac(alpha, m - i + 1) $

#strong[Symbols.] $m$ is the number of tests and $alpha$ the significance level. #strong[Intuition.] Holm controls the same family-wise error rate as Bonferroni but rejects at least as many hypotheses; stop at the first p-value that fails (Section 27.7).

#bn[$m$টি test-এ অন্তত একটি ভুল-ইতিবাচকের সম্ভাবনা $1 - (1 - alpha)^m$। Bonferroni প্রতিটি test $alpha slash m$-এ করে; Holm p-value সাজিয়ে ক্রমানুসারে পরীক্ষা করে এবং প্রথম ব্যর্থতায় থামে --- একই ভুলের হার, কিন্তু অন্তত সমান শক্তিশালী (Section 27.7)।]

