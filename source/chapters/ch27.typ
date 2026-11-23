#import "../template.typ": *

= Running Your Own Study
<running-your-own-study>
#bnsub(1)[নিজের গবেষণা চালানো]
Chapter 26 produced a plan. This chapter carries it out. It shows how to turn the proposal into a plan of runs, which baselines make a result meaningful, how to handle the randomness of training, how to keep a research log, how to measure the #emph[size] of a difference, how to put a confidence interval on any metric with the bootstrap, how to avoid false discoveries when you make many comparisons, and how to budget and report compute. It ends with step 2 of the mini-project. The statistics build on Sections 6.7, 19.6 and 19.7; the three code snippets are short Python examples that you may reuse freely.

#bn[Chapter 26 একটি পরিকল্পনা তৈরি করেছিল; এই chapter সেটি বাস্তবায়ন করে। এখানে আছে: প্রপোজালকে run-এর পরিকল্পনায় রূপ দেওয়া, কোন বেসলাইন ফলাফলকে অর্থবহ করে, ট্রেনিংয়ের দৈবতা কীভাবে সামলাবেন, গবেষণার লগ কীভাবে রাখবেন, পার্থক্যের #emph[আকার] কীভাবে মাপবেন, bootstrap দিয়ে যেকোনো মেট্রিকের confidence interval কীভাবে বের করবেন, অনেক তুলনা করলে ভুল আবিষ্কার কীভাবে এড়াবেন, এবং compute-এর বাজেট ও রিপোর্ট। শেষে মিনি-প্রজেক্টের ধাপ ২। পরিসংখ্যানের অংশ Section 6.7, 19.6 ও 19.7-এর ওপর দাঁড়িয়ে; তিনটি কোডের অংশ ছোট Python উদাহরণ, যা আপনি অবাধে ব্যবহার করতে পারেন।]

== The Experiment Plan
<the-experiment-plan>
#bnsub(2)[experiment-এর পরিকল্পনা]
The method section of a proposal (Section 26.4) says #emph[what] you will compare. The experiment plan says exactly #emph[which runs] you will make: a #strong[run matrix] of systems × training sets × seeds, with the data splits, configuration files and evaluation code fixed before the first real run. Section 27.9 shows the run matrix of the mini-project.

Five steps come before any real training run:

+ #strong[Freeze the splits.] Create the train, validation and test splits once, with a fixed seed, and save the item IDs.
+ #strong[Write and test the evaluation code first,] on a case you can compute by hand (Section 23.4).
+ #strong[Run the trivial baselines.] If the majority-class score does not match your hand calculation (Section 27.2), the pipeline is broken.
+ #strong[Make a pilot run] to measure time per run and check the budget (Section 26.5).
+ #strong[Write down the tuning budget and the rule for failed runs] --- for example, "a run whose validation macro-F1 is below the majority baseline counts as diverged and is replaced by the next seed on a list written in advance".

Keep #strong[exploration] and #strong[confirmation] apart. Trying ideas on the validation set is normal and healthy; the test set is used once, at the end, after everything is frozen. This is the preregistration logic of Section 26.4 #cite(<ref65>) applied to daily work.

#bn[প্রপোজালের পদ্ধতি অংশ (Section 26.4) বলে #emph[কী] তুলনা করবেন; experiment-এর পরিকল্পনা বলে ঠিক #emph[কোন কোন run] করবেন: সিস্টেম × training set × seed-এর একটি #strong[run matrix], যেখানে প্রথম আসল run-এর আগেই ডেটা split, configuration ফাইল ও মূল্যায়নের কোড স্থির। আসল ট্রেনিংয়ের আগে পাঁচটি ধাপ: (১) split একবার, নির্দিষ্ট seed দিয়ে তৈরি করে item ID সংরক্ষণ; (২) মূল্যায়নের কোড আগে লিখে হাতে-হিসাবযোগ্য উদাহরণে পরীক্ষা (Section 23.4); (৩) সহজতম বেসলাইন চালানো --- majority-class স্কোর হাতের হিসাবের সাথে না মিললে pipeline ভাঙা; (৪) সময় ও বাজেট মাপতে pilot run (Section 26.5); (৫) tuning বাজেট ও ব্যর্থ run-এর নিয়ম আগেই লিখে রাখা। #strong[অনুসন্ধান] ও #strong[নিশ্চিতকরণ] আলাদা রাখুন: validation set-এ নানা ধারণা পরীক্ষা স্বাভাবিক; test set একবারই, সবকিছু স্থির হওয়ার পর --- Section 26.4-এর preregistration-এর যুক্তি #cite(<ref65>), দৈনন্দিন কাজে।]

== Baselines That Matter
<baselines-that-matter>
#bnsub(2)[যে বেসলাইন গুরুত্বপূর্ণ]
#figure(
  align(center)[#table(
    columns: (21%, 43%, 36%),
    align: (left,left,left,),
    table.header([Baseline], [What it tells you], [Mini-project example],),
    table.hline(),
    [#strong[Trivial]], [What "no learning" scores; a check that the pipeline and metric work], [Majority class],
    [#strong[Simple and strong]], [Whether the complex method is needed at all], [TF-IDF features with logistic regression],
    [#strong[Strong and recent]], [Whether you improve on the current state of the art], [XLM-R and BanglaBERT],
    [#strong[Ablations]], [Which parts of your own method matter (Section 6.2)], [--- (the study compares existing models)],
    [#strong[Reference ceiling]], [What is achievable without the shift you study], [Models trained on SentNoB itself],
  )]
  , kind: table
  )

#strong[Worked example: what a trivial baseline scores.] On a test set with SentNoB's class balance (40.8% positive), predicting "positive" for every comment gives an accuracy of 0.408 --- but the F1 of the positive class is $2 times 0.408 times 1 slash (0.408 + 1) = 0.580$, the other two classes score 0, and the macro-F1 is only $0.580 slash 3 = 0.193$. Your code should reproduce these numbers exactly.

Simple baselines deserve respect. For sentiment classification, Wang and Manning found that simple Naive Bayes and SVM variants "outperform most published results on sentiment analysis datasets" #cite(<ref116>), and in the SentNoB paper lexical features beat the neural models tried #cite(<ref67>). Equally important is #strong[equal tuning]: when Melis, Dyer and Blunsom tuned language models with the same large-scale automatic search, standard LSTMs, "when properly regularised, outperform more recent models" #cite(<ref115>). Give every system the same tuning budget on the same validation data, and report that budget #cite(<ref66>).

#bn[পাঁচ ধরনের বেসলাইন: #strong[সহজতম] ("কিছু না শিখলে" কত স্কোর --- pipeline ও মেট্রিক ঠিক আছে কিনা তার পরীক্ষা); #strong[সহজ কিন্তু শক্তিশালী] (জটিল পদ্ধতির আদৌ দরকার আছে কিনা); #strong[শক্তিশালী ও সাম্প্রতিক]\; #strong[ablation] (নিজের পদ্ধতির কোন অংশ কাজ করে); আর #strong[reference ceiling] (যে পরিবর্তন নিয়ে গবেষণা, তা ছাড়া কত পাওয়া সম্ভব)। #strong[উদাহরণ:] SentNoB-এর মতো শ্রেণি-অনুপাতের (৪০.৮% ইতিবাচক) test set-এ সব মন্তব্যকে "ইতিবাচক" বললে accuracy ০.৪০৮, কিন্তু ইতিবাচক শ্রেণির F1 ০.৫৮০, বাকি দুটির ০, তাই macro-F1 মাত্র ০.১৯৩ --- আপনার কোড ঠিক এই সংখ্যাগুলোই দেবে। সহজ বেসলাইনকে সম্মান করুন: sentiment classification-এ সহজ Naive Bayes ও SVM-এর রূপ বেশিরভাগ প্রকাশিত ফলাফলকে ছাড়িয়ে গিয়েছিল #cite(<ref116>), আর SentNoB পেপারে lexical feature neural মডেলকে হারিয়েছিল #cite(<ref67>)। সমান tuning-ও সমান জরুরি: একই বড় স্বয়ংক্রিয় অনুসন্ধানে tune করলে সাধারণ LSTM নতুন মডেলগুলোকে ছাড়িয়ে গিয়েছিল #cite(<ref115>)। সব সিস্টেমকে একই validation ডেটায় একই tuning বাজেট দিন এবং বাজেটটি রিপোর্ট করুন #cite(<ref66>)।]

== Seeds, Repeated Runs and Variance
<seeds-repeated-runs-and-variance>
#bnsub(2)[Seed, একাধিক run ও variance]
Training is random: weight initialisation, data order and dropout all depend on the random seed. The effects are not small. Reimers and Gurevych showed that the seed alone can produce statistically significant differences between runs of the same sequence-tagging system, and that two NER systems differed by a full point of F1 depending only on the seed --- enough to make a system look "either as state-of-the-art or mediocre" #cite(<ref111>). Fine-tuning pretrained transformers is particularly unstable: runs with different seeds can vary widely #cite(<ref112>), weight initialisation and data order contribute about equally to that variance, and on small datasets many runs diverge part-way through training #cite(<ref113>). Data sampling and hyperparameter choice add further variance of their own #cite(<ref114>).

#bn[ট্রেনিং দৈব: weight-এর শুরুর মান, ডেটার ক্রম ও dropout --- সবই random seed-এর ওপর নির্ভর করে, আর প্রভাব ছোট নয়। শুধু seed বদলেই একই sequence-tagging সিস্টেমের run-গুলোর মধ্যে পরিসংখ্যানগতভাবে উল্লেখযোগ্য পার্থক্য হতে পারে; দুটি NER সিস্টেম শুধু seed-এর কারণে F1-এ পুরো এক পয়েন্ট আলাদা হয়েছিল --- একটি সিস্টেমকে "state-of-the-art বা মাঝারি" দেখানোর জন্য যথেষ্ট #cite(<ref111>)। Pretrained transformer-এর fine-tuning বিশেষভাবে অস্থির: ভিন্ন seed-এ run-গুলোর ফল অনেক আলাদা হতে পারে #cite(<ref112>), weight-এর শুরুর মান ও ডেটার ক্রম প্রায় সমানভাবে এই variance-এ অবদান রাখে, আর ছোট ডেটাসেটে অনেক run মাঝপথে ভেঙে পড়ে #cite(<ref113>)। ডেটা sampling ও hyperparameter বাছাই আরও variance যোগ করে #cite(<ref114>)।]

Five rules follow:

- #strong[Fix the seeds before the first run and record them.]
- #strong[Run every configuration with several seeds] --- at least three, preferably five --- and report the mean ± sample standard deviation (Section 19.6), with the minimum and maximum.
- #strong[Never report only the best seed.] It is the cherry-picking of Chapter 11, flag 8.
- #strong[Report failed and diverged runs] according to the rule you wrote in advance; do not drop them silently.
- #strong[Do not expect bit-identical results everywhere.] Even PyTorch states that completely reproducible results are not guaranteed across releases or platforms, or between CPU and GPU, "even when using identical seeds" #cite(<ref124>). Record library versions and hardware with every run.

```python
import random
import numpy as np

def set_seed(seed):
    random.seed(seed)
    np.random.seed(seed)
    try:
        import torch
        torch.manual_seed(seed)                    # CPU and every GPU
        torch.use_deterministic_algorithms(True, warn_only=True)
    except ImportError:
        pass

SEEDS = [11, 22, 33, 44, 55]                       # fixed before the first run

def summarise(train_and_evaluate):
    scores = []
    for seed in SEEDS:
        set_seed(seed)
        scores.append(train_and_evaluate(seed))
    print(f"macro-F1 = {np.mean(scores):.3f} ± {np.std(scores, ddof=1):.3f}"
          f"  (min {min(scores):.3f}, max {max(scores):.3f}, n = {len(scores)})")
    return scores
```

#bn[পাঁচটি নিয়ম: প্রথম run-এর আগেই seed ঠিক করে লিখে রাখুন; প্রতিটি configuration একাধিক seed-এ চালান --- অন্তত তিনটি, ভালো হয় পাঁচটি --- এবং গড় ± নমুনা standard deviation (Section 19.6), সাথে সর্বনিম্ন ও সর্বোচ্চ রিপোর্ট করুন; কখনো শুধু সেরা seed রিপোর্ট করবেন না (Chapter 11-এর flag ৮); আগে লেখা নিয়ম অনুযায়ী ব্যর্থ ও ভেঙে পড়া run রিপোর্ট করুন, নিঃশব্দে বাদ দেবেন না; আর সব জায়গায় হুবহু এক ফল আশা করবেন না --- PyTorch নিজেই বলে, একই seed দিলেও version, platform বা CPU ও GPU-র মধ্যে সম্পূর্ণ পুনরুৎপাদনযোগ্য ফলাফলের নিশ্চয়তা নেই #cite(<ref124>)। তাই প্রতিটি run-এর সাথে library-র version ও hardware লিখে রাখুন। ওপরের কোডটি seed বসায় এবং কয়েকটি seed-এর গড় ± standard deviation রিপোর্ট করে।]

== Experiment Tracking and the Research Log
<experiment-tracking-and-the-research-log>
#bnsub(2)[Experiment-এর হিসাব ও গবেষণার লগ]
Months later you will need to know exactly how a number in your paper was produced. Sandve et al.'s ten rules for reproducible computational research begin with "For every result, keep track of how it was produced", and include archiving the exact versions of all programs, version-controlling your scripts, noting the random seeds, storing the raw data behind every plot and connecting statements in the text to the underlying results #cite(<ref117>).

Keep two records. A #strong[machine log] stores, for every run: date and time, the code version (git commit), the full configuration, the seed, the data split version, library versions and hardware, training time, scores --- and the path to the saved predictions, which Section 27.6 needs. A #strong[research log], written by hand, records what you tried, why, what happened and what you will do next, including the failures. Plain files are enough; experiment trackers such as MLflow or Weights & Biases automate the machine log.

```python
import json, platform, subprocess, time
from importlib.metadata import version

def log_run(path, config, seed, scores):
    commit = subprocess.run(["git", "rev-parse", "HEAD"],
                            capture_output=True, text=True).stdout.strip()
    record = {
        "time": time.strftime("%Y-%m-%d %H:%M:%S"),
        "commit": commit,
        "seed": seed,
        "config": config,
        "python": platform.python_version(),
        "torch": version("torch"),
        "scores": scores,
    }
    with open(path, "a", encoding="utf-8") as f:
        f.write(json.dumps(record, ensure_ascii=False) + "\n")
```

#bn[মাস কয়েক পরে আপনাকে জানতে হবে পেপারের একটি সংখ্যা ঠিক কীভাবে তৈরি হয়েছিল। পুনরুৎপাদনযোগ্য গবেষণার দশটি নিয়মের প্রথমটি: "প্রতিটি ফলাফল কীভাবে তৈরি হলো তার হিসাব রাখুন"; অন্যগুলোর মধ্যে আছে সব প্রোগ্রামের সঠিক version সংরক্ষণ, স্ক্রিপ্টের version control, random seed লিখে রাখা, প্রতিটি চিত্রের পেছনের কাঁচা ডেটা রাখা, এবং লেখার বক্তব্যকে মূল ফলাফলের সাথে যুক্ত করা #cite(<ref117>)। দুটি রেকর্ড রাখুন: #strong[যান্ত্রিক লগ] --- প্রতি run-এর তারিখ, কোডের version (git commit), পূর্ণ configuration, seed, split-এর version, library ও hardware, সময়, স্কোর, আর সংরক্ষিত prediction-এর ঠিকানা (Section 27.6-এ লাগবে); এবং হাতে লেখা #strong[গবেষণার লগ] --- কী চেষ্টা করলেন, কেন, কী হলো, এরপর কী করবেন, ব্যর্থতাসহ। সাধারণ ফাইলই যথেষ্ট; MLflow বা Weights & Biases-এর মতো টুল যান্ত্রিক লগ স্বয়ংক্রিয় করে। ওপরের কোডটি প্রতি run-এ লগ ফাইলে একটি করে লাইন যোগ করে।]

== Effect Sizes: How Big Is the Difference?
<effect-sizes-how-big-is-the-difference>
#bnsub(2)[Effect size: পার্থক্য কত বড়?]
A p-value answers "could this difference be chance?", not "how big is it?". The American Statistical Association's statement on p-values is explicit: "A p-value, or statistical significance, does not measure the size of an effect or the importance of a result" #cite(<ref118>). Report the size of every important difference in three ways:

- #strong[In the metric's own units, with an interval:] "+1.8 macro-F1 points (95% CI 0.6 to 3.0)". This is the number readers need most.
- #strong[As a relative error reduction,] when scores are near the ceiling: moving from 92% to 94% accuracy removes $(8 - 6) slash 8 = 25%$ of the errors.
- #strong[As a standardised difference across seeds,] which compares the gap with seed-to-seed variation:

$ d = frac(macron(x)_B - macron(x)_A, s_p), quad s_p = sqrt(frac((n_A - 1) s_A^2 + (n_B - 1) s_B^2, n_A + n_B - 2)) $

#strong[Worked example (illustrative numbers).] Five seeds of model A score 0.700, 0.712, 0.695, 0.708 and 0.705 (mean 0.704, $s_A = 0.0067$); five seeds of model B score 0.721, 0.715, 0.730, 0.718 and 0.726 (mean 0.722, $s_B = 0.0060$). The difference is 0.018, the pooled standard deviation is $s_p = 0.0064$, and $d = 0.018 slash 0.0064 = 2.83$: the gap is almost three times the seed-to-seed spread. That says nothing yet about uncertainty from the particular test items --- the bootstrap handles that.

Decide in advance how big a difference would matter in practice (Section 26.4). A difference can be statistically clear and practically irrelevant, or practically important but not yet clearly established.

#bn[p-value উত্তর দেয় "পার্থক্যটি কি দৈব হতে পারে?", "কত বড়?" নয়। American Statistical Association-এর বিবৃতি স্পষ্ট: p-value বা statistical significance কোনো প্রভাবের আকার বা ফলাফলের গুরুত্ব মাপে না #cite(<ref118>)। প্রতিটি গুরুত্বপূর্ণ পার্থক্যের আকার তিনভাবে রিপোর্ট করুন: (১) মেট্রিকের নিজের এককে, interval-সহ --- যেমন "+১.৮ macro-F1 পয়েন্ট (৯৫% CI ০.৬ থেকে ৩.০)"; (২) সর্বোচ্চ সীমার কাছে আপেক্ষিক ভুল-হ্রাস হিসেবে --- ৯২% থেকে ৯৪% accuracy মানে ভুলের ২৫% কমা; (৩) seed-এর মধ্যে প্রমিত পার্থক্য $d$ হিসেবে, যা ব্যবধানকে seed-থেকে-seed ওঠানামার সাথে তুলনা করে। #strong[উদাহরণ (কাল্পনিক সংখ্যা):] মডেল A-এর পাঁচ seed-এর গড় ০.৭০৪, B-এর ০.৭২২; পার্থক্য ০.০১৮, মিলিত standard deviation ০.০০৬৪, $d$ = ২.৮৩ --- ব্যবধানটি seed-এর ওঠানামার প্রায় তিন গুণ। তবে নির্দিষ্ট test উদাহরণগুলোর কারণে অনিশ্চয়তা সম্পর্কে এটি কিছু বলে না --- সেটি bootstrap দেখে। বাস্তবে কত বড় পার্থক্য গুরুত্বপূর্ণ, তা আগেই ঠিক করুন (Section 26.4)।]

== Bootstrap Confidence Intervals
<bootstrap-confidence-intervals>
#bnsub(2)[Bootstrap confidence interval]
A test set is a sample. If you had drawn a different 1,570 comments, every score would be slightly different. The #strong[bootstrap] #cite(<ref119>) estimates this uncertainty directly from the test set you have, for any metric, including macro-F1, for which no simple formula exists:

+ Draw a new test set of the same size by sampling items from the original #emph[with replacement].
+ Compute the metric on this resampled set.
+ Repeat 1,000 to 10,000 times.
+ The 2.5th and 97.5th percentiles of the results form a 95% confidence interval.

To compare two systems, use the #strong[paired bootstrap]: resample the #emph[same] items for both systems and record the difference each time #cite(<ref120>). If the 95% interval of the difference excludes 0, the difference is unlikely to be an accident of which test items happened to be chosen. Koehn showed that this works even for test sets of only 300 sentences #cite(<ref120>). Choose a test that suits your metric and setup; a survey of ACL and TACL papers from 2017 found that significance testing in NLP is "often ignored or misused" #cite(<ref121>).

#bn[Test set একটি নমুনা: অন্য ১,৫৭০টি মন্তব্য নিলে প্রতিটি স্কোর একটু আলাদা হতো। #strong[Bootstrap] #cite(<ref119>) হাতে থাকা test set থেকেই এই অনিশ্চয়তা মাপে, যেকোনো মেট্রিকের জন্য --- macro-F1-সহ, যার কোনো সহজ সূত্র নেই: (১) মূল test set থেকে #emph[প্রতিস্থাপনসহ] একই আকারের নতুন নমুনা নিন; (২) তাতে মেট্রিক হিসাব করুন; (৩) ১,০০০ থেকে ১০,০০০ বার করুন; (৪) ফলাফলের ২.৫ ও ৯৭.৫ percentile মিলে ৯৫% confidence interval। দুটি সিস্টেম তুলনায় #strong[paired bootstrap] ব্যবহার করুন: দুটির জন্য #emph[একই] উদাহরণগুলো পুনঃনমুনা করে প্রতিবার পার্থক্য লিখুন #cite(<ref120>)। পার্থক্যের ৯৫% interval-এ ০ না থাকলে পার্থক্যটি কোন test উদাহরণ বাছা হলো তার দুর্ঘটনা হওয়ার সম্ভাবনা কম; মাত্র ৩০০ বাক্যের test set-এও এটি কাজ করে #cite(<ref120>)। মেট্রিক ও পরিস্থিতির উপযোগী test বাছুন; ২০১৭ সালের ACL ও TACL পেপারের এক সমীক্ষায় দেখা গেছে NLP-তে significance test প্রায়ই উপেক্ষিত বা ভুলভাবে ব্যবহৃত #cite(<ref121>)।]

The snippet below runs a paired bootstrap for the difference in macro-F1 between two systems, averaging each system over its training seeds inside every resample. On a test set of 1,570 items with five seeds per system, 1,000 resamples take a few seconds on a laptop.

```python
import numpy as np
from sklearn.metrics import f1_score

def paired_bootstrap(y_true, preds_a, preds_b, n_boot=1000, seed=0):
    """preds_a, preds_b: one row of predicted labels per training seed."""
    rng = np.random.default_rng(seed)
    y_true = np.asarray(y_true)
    preds_a, preds_b = np.asarray(preds_a), np.asarray(preds_b)
    n = len(y_true)
    diffs = np.empty(n_boot)
    for b in range(n_boot):
        idx = rng.integers(0, n, n)          # resample test items with replacement
        f_a = np.mean([f1_score(y_true[idx], p[idx], average="macro") for p in preds_a])
        f_b = np.mean([f1_score(y_true[idx], p[idx], average="macro") for p in preds_b])
        diffs[b] = f_b - f_a
    low, high = np.percentile(diffs, [2.5, 97.5])
    return diffs.mean(), (low, high), np.mean(diffs <= 0)
```

The function returns the mean difference, its 95% interval, and the share of resamples in which B was not better than A. The interval covers uncertainty from the test items; the seed standard deviation of Section 27.3 covers uncertainty from training. Report both.

#bn[ওপরের কোডটি দুটি সিস্টেমের macro-F1-এর পার্থক্যের জন্য paired bootstrap চালায়, প্রতিটি পুনঃনমুনায় প্রতিটি সিস্টেমের সব seed-এর গড় নিয়ে। ১,৫৭০ উদাহরণ ও প্রতি সিস্টেমে পাঁচটি seed-এ ১,০০০টি পুনঃনমুনায় ল্যাপটপে কয়েক সেকেন্ড লাগে। ফাংশনটি দেয় গড় পার্থক্য, তার ৯৫% interval, এবং কত অংশ পুনঃনমুনায় B, A-এর চেয়ে ভালো হয়নি। Interval test উদাহরণের অনিশ্চয়তা ধরে; Section 27.3-এর seed-এর standard deviation ধরে ট্রেনিংয়ের অনিশ্চয়তা। দুটিই রিপোর্ট করুন।]

== Multiple Comparisons: Bonferroni and Holm
<multiple-comparisons-bonferroni-and-holm>
#bnsub(2)[একাধিক তুলনা: Bonferroni ও Holm]
Every test at α = 0.05 accepts a 5% chance of a false positive. Make many tests and false positives become likely: with $m$ independent tests of true null hypotheses, the chance of at least one false positive is $1 - (1 - alpha)^m$ --- 0.226 for 5 tests, 0.487 for 13 tests, and 0.642 for 20. Comparisons multiply quickly in ML: several baselines, several datasets, and analyses by class or by domain. SentNoB alone has 13 domains.

- #strong[Bonferroni:] test each hypothesis at $alpha slash m$. Simple, but conservative.
- #strong[Holm] #cite(<ref122>)#strong[:] sort the p-values from smallest to largest, $p_((1)) <= dots.h <= p_((m))$. Reject hypotheses in that order while $p_((i)) <= alpha slash (m - i + 1)$, and stop at the first one that fails. Holm's procedure controls the same error rate as Bonferroni and is more powerful; Demšar recommends it for comparisons with a control model #cite(<ref14>).

#bn[α = ০.০৫-এ প্রতিটি test ৫% ভুল-ইতিবাচকের ঝুঁকি নেয়। অনেক test করলে ভুল-ইতিবাচক প্রায় নিশ্চিত হয়ে ওঠে: সত্য null hypothesis-এর $m$টি স্বাধীন test-এ অন্তত একটি ভুল-ইতিবাচকের সম্ভাবনা $1 - (1 - alpha)^m$ --- ৫টি test-এ ০.২২৬, ১৩টিতে ০.৪৮৭, ২০টিতে ০.৬৪২। ML-এ তুলনা দ্রুত বাড়ে: কয়েকটি বেসলাইন, কয়েকটি ডেটাসেট, শ্রেণি বা domain অনুযায়ী বিশ্লেষণ --- শুধু SentNoB-এই ১৩টি domain। #strong[Bonferroni:] প্রতিটি hypothesis $alpha slash m$-এ পরীক্ষা --- সহজ কিন্তু রক্ষণশীল। #strong[Holm] #cite(<ref122>)#strong[:] p-value-গুলো ছোট থেকে বড় সাজিয়ে ক্রমানুসারে বাতিল করুন যতক্ষণ $p_((i)) <= alpha slash (m - i + 1)$, আর প্রথম ব্যর্থতায় থামুন। এটি Bonferroni-র সমান ভুলের হার নিয়ন্ত্রণ করে কিন্তু বেশি শক্তিশালী; একটি control মডেলের সাথে তুলনায় Demšar এটি সুপারিশ করেন #cite(<ref14>)।]

#strong[Worked example (illustrative p-values).] Five comparisons give $p = 0.004, 0.011, 0.020, 0.040$ and $0.300$, with α = 0.05. Without correction, four look significant. Bonferroni's threshold, $0.05 slash 5 = 0.01$, keeps only one. Holm keeps two:

#figure(
  align(center)[#table(
    columns: (12%, 22%, 33%, 33%),
    align: (center,center,center,left,),
    table.header([$i$], [$p_((i))$], [Holm threshold $alpha slash (m - i + 1)$], [Decision],),
    table.hline(),
    [1], [0.004], [0.0100], [Reject],
    [2], [0.011], [0.0125], [Reject],
    [3], [0.020], [0.0167], [Not rejected --- stop here],
    [4], [0.040], [0.0250], [Not rejected],
    [5], [0.300], [0.0500], [Not rejected],
  )]
  , kind: table
  )

Correction connects to preregistration. Name #strong[one primary comparison] in advance and test it at α = 0.05. Treat the other planned comparisons as a #strong[secondary family] corrected with Holm, and label everything else --- for example, results for each of 13 domains --- as #strong[exploratory], to be described, not claimed.

#bn[#strong[উদাহরণ (কাল্পনিক p-value):] পাঁচটি তুলনায় $p$ = ০.০০৪, ০.০১১, ০.০২০, ০.০৪০ ও ০.৩০০, α = ০.০৫। সংশোধন ছাড়া চারটিকে উল্লেখযোগ্য মনে হয়; Bonferroni-র সীমা ০.০১, তাই মাত্র একটি; Holm-এ দুটি --- টেবিলে তৃতীয় সারিতে ০.০২০ > ০.০১৬৭ হওয়ায় সেখানেই থামতে হয়। সংশোধন preregistration-এর সাথে যুক্ত: আগেই #strong[একটি প্রধান তুলনা] ঠিক করে α = ০.০৫-এ পরীক্ষা করুন; বাকি পরিকল্পিত তুলনাগুলোকে Holm দিয়ে সংশোধিত #strong[গৌণ পরিবার] হিসেবে ধরুন; আর বাকি সব --- যেমন ১৩টি domain-এর আলাদা ফল --- #strong[অনুসন্ধানমূলক] হিসেবে চিহ্নিত করুন: বর্ণনা করুন, দাবি করবেন না।]

== Compute Budget and Reporting
<compute-budget-and-reporting>
#bnsub(2)[Compute বাজেট ও রিপোর্টিং]
Track the compute you actually use against the estimate in your proposal (Section 26.5), counting every run: pilot, tuning, failed runs and the main runs. Strubell et al. recommend that authors "report training time and sensitivity to hyperparameters" #cite(<ref123>), so that readers can weigh accuracy against cost; reporting how results change with the tuning budget does the same for hyperparameter search #cite(<ref66>).

#strong[Worked example (illustrative numbers, continuing Section 26.5).] One pilot run (40 min), 12 tuning runs (38 min each, 456 min), 20 main runs (41 min each, 820 min) and 4 failed runs stopped early (20 min each, 80 min) add up to 1,396 minutes, or 23.3 GPU-hours --- within the 32 GPU-hours planned. The paper should report all of it: the hardware, the number of runs of each kind, and the total.

#bn[প্রপোজালের অনুমানের (Section 26.5) বিপরীতে প্রকৃত compute-এর হিসাব রাখুন, প্রতিটি run গুনে: pilot, tuning, ব্যর্থ run ও মূল run। Strubell ও সহকর্মীরা ট্রেনিংয়ের সময় ও hyperparameter-এর প্রতি সংবেদনশীলতা রিপোর্ট করার সুপারিশ করেন #cite(<ref123>), যাতে পাঠক accuracy ও খরচ মিলিয়ে বিচার করতে পারেন; tuning বাজেটের সাথে ফলাফল কীভাবে বদলায় তা রিপোর্ট করলেও একই কাজ হয় #cite(<ref66>)। #strong[উদাহরণ (কাল্পনিক সংখ্যা):] একটি pilot (৪০ মিনিট), ১২টি tuning run (৪৫৬ মিনিট), ২০টি মূল run (৮২০ মিনিট) ও আগেই থামানো ৪টি ব্যর্থ run (৮০ মিনিট) মিলে ১,৩৯৬ মিনিট বা ২৩.৩ GPU-ঘণ্টা --- পরিকল্পিত ৩২-এর মধ্যে। পেপারে সবটাই রিপোর্ট করুন: hardware, প্রতি ধরনের run-এর সংখ্যা ও মোট।]

== Mini-Project, Step 2: Run and Analyse
<mini-project-step-2-run-and-analyse>
#bnsub(2)[মিনি-প্রজেক্ট, ধাপ ২: চালানো ও বিশ্লেষণ]
The proposal of Section 26.7 becomes this run matrix. The two transformers are tuned on BanglaBook validation data only (six settings each, as estimated in Section 26.5), then trained with five seeds on each training set: $2 times 5 times 2 = 20$ main fine-tuning runs.

#figure(
  align(center)[#table(
    columns: (30%, 24%, 14%, 32%),
    align: (left,left,center,left,),
    table.header([System], [Trained on], [Seeds], [Evaluated on],),
    table.hline(),
    [Majority class], [BanglaBook], [---], [BanglaBook test, SentNoB test],
    [TF-IDF + logistic regression], [BanglaBook], [1], [BanglaBook test, SentNoB test],
    [XLM-R base], [BanglaBook], [5], [BanglaBook test, SentNoB test],
    [BanglaBERT], [BanglaBook], [5], [BanglaBook test, SentNoB test],
    [TF-IDF, XLM-R, BanglaBERT (ceiling)], [SentNoB], [1, 5, 5], [SentNoB test],
  )]
  , kind: table
  )

+ #strong[Prepare the data.] Normalise Unicode identically in every split (Section 24.3); keep only the 89,371 BanglaBook reviews written in Bangla; make a fixed, stratified 80/10/10 split and save its IDs; use SentNoB's official split.
+ #strong[Check the pipeline.] Test the evaluation code on a hand-computed case, and confirm that the majority baseline reproduces its hand-calculated scores.
+ #strong[Tune, then run.] Log every run (Section 27.4) and save every set of predictions; replace diverged runs only by the rule written in advance, and count them.
+ #strong[Evaluate once.] After all runs are frozen, score each test set once and compute each model's #emph[drop]: in-domain macro-F1 minus out-of-domain macro-F1.
+ #strong[Analyse as planned.] #emph[Primary:] the difference between the drops of XLM-R and BanglaBERT, with a bootstrap 95% interval obtained by resampling each test set inside the loop; H₁ is supported if the interval lies above 0. #emph[Secondary family, corrected with Holm:] each transformer against TF-IDF on SentNoB, and BanglaBERT against XLM-R on each test set. #emph[Exploratory:] per-class F1 and errors by SentNoB domain, described but not claimed.
+ #strong[Report the compute] used, against the 32 GPU-hours planned.

#block(breakable: false)[
#figure(
  align(center)[#table(
    columns: (25%, 18%, 18%, 21%, 18%),
    align: (left,center,center,center,center,),
    table.header([Model], [BanglaBook test], [SentNoB test], [Drop (95% CI)], [Ceiling],),
    table.hline(),
    [Majority class], […], […], […], […],
    [TF-IDF + LR], […], […], […], […],
    [XLM-R base], […], […], […], […],
    [BanglaBERT], […], […], […], […],
  )]
  , kind: table
  )
]

The table is left empty on purpose: this book reports no results for the mini-project. Run it and fill the table with macro-F1 as mean ± standard deviation over seeds. Whatever the numbers turn out to be --- including a null result --- Chapter 28 shows how to write them up honestly.

#bn[Section 26.7-এর প্রপোজাল এই run matrix-এ পরিণত হয়: দুটি transformer শুধু BanglaBook validation-এ tune করা হয় (প্রতিটির ছয়টি setting), তারপর প্রতিটি training set-এ পাঁচটি seed --- মোট ২ × ৫ × ২ = ২০টি মূল fine-tuning run। ধাপগুলো: (১) ডেটা প্রস্তুতি --- প্রতিটি split-এ একইভাবে Unicode normalise (Section 24.3), শুধু বাংলায় লেখা ৮৯,৩৭১টি BanglaBook রিভিউ, নির্দিষ্ট stratified ৮০/১০/১০ split ও তার ID সংরক্ষণ, SentNoB-এর অফিসিয়াল split; (২) pipeline যাচাই --- হাতে-হিসাব করা উদাহরণে মূল্যায়নের কোড পরীক্ষা, majority বেসলাইনের স্কোর হাতের হিসাবের সাথে মেলানো; (৩) tune করে চালানো --- প্রতিটি run লগ করা ও prediction সংরক্ষণ; ভেঙে পড়া run শুধু আগে লেখা নিয়মে বদলানো ও গোনা; (৪) একবার মূল্যায়ন --- সব run স্থির হলে প্রতিটি test set একবার, আর প্রতিটি মডেলের #emph[পতন] = নিজ domain-এর macro-F1 বিয়োগ অন্য domain-এর macro-F1; (৫) পরিকল্পনামতো বিশ্লেষণ --- #emph[প্রধান:] XLM-R ও BanglaBERT-এর পতনের পার্থক্য, প্রতিটি test set আলাদাভাবে পুনঃনমুনা করে bootstrap ৯৫% interval; interval ০-এর ওপরে থাকলে H₁ সমর্থিত; #emph[গৌণ পরিবার (Holm):] SentNoB-এ প্রতিটি transformer বনাম TF-IDF, এবং প্রতিটি test set-এ BanglaBERT বনাম XLM-R; #emph[অনুসন্ধানমূলক:] শ্রেণিভিত্তিক F1 ও SentNoB-এর domain অনুযায়ী ভুল --- বর্ণনা, দাবি নয়; (৬) পরিকল্পিত ৩২ GPU-ঘণ্টার বিপরীতে ব্যবহৃত compute রিপোর্ট। ফলাফলের টেবিলটি ইচ্ছা করেই খালি: এই বই মিনি-প্রজেক্টের কোনো ফল রিপোর্ট করে না। নিজে চালিয়ে seed-এর গড় ± standard deviation দিয়ে পূরণ করুন; ফল যা-ই হোক --- null ফলাফলসহ --- Chapter 28 দেখাবে কীভাবে সৎভাবে লিখবেন।]

== Exercises
<exercises-27>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ A model improves accuracy from 92% to 94%. State the absolute gain and the relative error reduction. Which would you put in the abstract, and why might a reader want both?

  #bni[একটি মডেল accuracy ৯২% থেকে ৯৪%-এ নিল। পরম উন্নতি ও আপেক্ষিক ভুল-হ্রাস বলুন। Abstract-এ কোনটি দেবেন, আর পাঠক কেন দুটিই চাইতে পারেন?]

+ Five seeds of model C score 0.661, 0.702, 0.645, 0.690 and 0.672; the same five seeds of model D score 0.668, 0.712, 0.651, 0.705 and 0.679. Compute each mean and standard deviation, the pooled standard deviation and $d$. Then look at the differences seed by seed. What do you conclude?

  #bni[মডেল C-এর পাঁচ seed-এর স্কোর ০.৬৬১, ০.৭০২, ০.৬৪৫, ০.৬৯০ ও ০.৬৭২; একই পাঁচ seed-এ মডেল D-এর স্কোর ০.৬৬৮, ০.৭১২, ০.৬৫১, ০.৭০৫ ও ০.৬৭৯। প্রতিটির গড় ও standard deviation, মিলিত standard deviation ও $d$ বের করুন। তারপর seed ধরে ধরে পার্থক্য দেখুন। কী সিদ্ধান্তে আসেন?]

+ Five comparisons give $p = 0.001, 0.018, 0.021, 0.030$ and $0.049$, with α = 0.05. How many are significant without correction, with Bonferroni, and with Holm?

  #bni[পাঁচটি তুলনায় $p$ = ০.০০১, ০.০১৮, ০.০২১, ০.০৩০ ও ০.০৪৯, α = ০.০৫। সংশোধন ছাড়া, Bonferroni-তে এবং Holm-এ কয়টি উল্লেখযোগ্য?]

+ You test each of SentNoB's 13 domains separately at α = 0.05, and in truth no domain differs. Assuming independent tests, what is the chance of at least one "significant" domain? How should the per-domain results be presented?

  #bni[SentNoB-এর ১৩টি domain আলাদাভাবে α = ০.০৫-এ পরীক্ষা করলেন, অথচ আসলে কোনো domain-এ পার্থক্য নেই। Test-গুলো স্বাধীন ধরলে অন্তত একটি "উল্লেখযোগ্য" domain পাওয়ার সম্ভাবনা কত? Domain-ভিত্তিক ফল কীভাবে উপস্থাপন করবেন?]

+ A classmate trained five seeds and reports only the best one, "because the others were unlucky". What is wrong, and what should be reported instead?

  #bni[একজন সহপাঠী পাঁচটি seed চালিয়ে শুধু সেরাটি রিপোর্ট করেছেন, "কারণ বাকিগুলো দুর্ভাগা ছিল"। ভুলটি কী, আর এর বদলে কী রিপোর্ট করা উচিত?]

+ On a test set with BanglaBook's overall class balance (about 89.6% positive), a model predicts "positive" for every review. Compute its accuracy and its macro-F1 over the three classes. What does the comparison tell you about choosing the primary metric?

  #bni[BanglaBook-এর সামগ্রিক শ্রেণি-অনুপাতের (প্রায় ৮৯.৬% ইতিবাচক) test set-এ একটি মডেল প্রতিটি রিভিউকে "ইতিবাচক" বলে। এর accuracy ও তিন শ্রেণির macro-F1 বের করুন। তুলনাটি প্রধান মেট্রিক বাছাই সম্পর্কে কী বলে?]

#recap[
- Turn the proposal into a run matrix, freeze the splits, test the evaluation code and run the trivial baselines before any real training.

  #bni[প্রপোজালকে run matrix-এ রূপ দিন, split স্থির করুন, মূল্যায়নের কোড পরীক্ষা করুন এবং আসল ট্রেনিংয়ের আগে সহজতম বেসলাইন চালান।]

- Include simple, strong and ceiling baselines, and tune every system with the same budget on the same validation data.

  #bni[সহজ, শক্তিশালী ও ceiling বেসলাইন রাখুন, আর একই validation ডেটায় সব সিস্টেমকে একই বাজেটে tune করুন।]

- Run several seeds, report mean ± standard deviation with failed runs counted, and log how every result was produced.

  #bni[একাধিক seed চালান, ব্যর্থ run গুনে গড় ± standard deviation রিপোর্ট করুন, আর প্রতিটি ফল কীভাবে তৈরি তা লগ করুন।]

- Report effect sizes with intervals; use the paired bootstrap for test-set uncertainty and the seed spread for training uncertainty.

  #bni[Interval-সহ effect size রিপোর্ট করুন; test set-এর অনিশ্চয়তায় paired bootstrap, আর ট্রেনিংয়ের অনিশ্চয়তায় seed-এর ওঠানামা ব্যবহার করুন।]

- Name one primary comparison, correct the secondary family with Holm, label the rest exploratory, and report all compute used.

  #bni[একটি প্রধান তুলনা আগে ঠিক করুন, গৌণ পরিবার Holm দিয়ে সংশোধন করুন, বাকিগুলোকে অনুসন্ধানমূলক বলুন, আর ব্যবহৃত সব compute রিপোর্ট করুন।]

]
