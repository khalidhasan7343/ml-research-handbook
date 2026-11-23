#import "../template.typ": *

= Experimental Design
<experimental-design>
#bnsub(1)[এক্সপেরিমেন্টাল ডিজাইন]
== What Makes an ML Experiment Convincing vs Weak?
<what-makes-an-ml-experiment-convincing-vs-weak>
=== English --- Convincing
<english-convincing>
- Clear hypothesis and a properly justified baseline comparison
- Fair, tuned baselines using identical data splits, seeds, and preprocessing
- Multiple metrics appropriate to class balance
- Cross-validation or multiple random seeds with reported mean ± standard deviation
- Statistical significance testing when comparing close results
- An ablation study showing each proposed component's individual contribution
- Robustness/external validation on shifted or noisy data
- Full hyperparameters, code, and environment shared

=== English --- Weak
<english-weak>
- Single train/test split with no repetition
- Only one metric (often just accuracy) reported
- Weak/untuned baselines
- No statistical test for “improvement” of 0.1--0.5%
- No ablation for a complex proposed architecture
- No error analysis or robustness check
- Missing implementation details, preventing reproduction

=== বাংলা --- বিশ্বাসযোগ্য এক্সপেরিমেন্ট
<বল-বশবসযগয-একসপরমনট>
#bn[স্পষ্ট hypothesis ও যুক্তিসঙ্গত বেসলাইন তুলনা; একই split/seed/preprocessing দিয়ে fair ও tuned বেসলাইন; class balance অনুযায়ী একাধিক মেট্রিক; cross-validation বা একাধিক seed-এর mean ± std; কাছাকাছি ফলাফলের জন্য statistical significance test; প্রতিটি component-এর অবদান দেখানো ablation study; robustness/external validation; সম্পূর্ণ হাইপারপ্যারামিটার ও কোড শেয়ার করা।]

=== বাংলা --- দুর্বল এক্সপেরিমেন্ট
<বল-দরবল-একসপরমনট>
#bn[একটিমাত্র train/test split, পুনরাবৃত্তি ছাড়া; শুধু একটি মেট্রিক (প্রায়ই কেবল accuracy); দুর্বল/অপ্রস্তুত বেসলাইন; সামান্য উন্নতির (০.১--০.৫%) জন্য কোনো statistical test নেই; জটিল আর্কিটেকচারের জন্য ablation study নেই; error analysis বা robustness check নেই; implementation ডিটেইলস অনুপস্থিত।]

== Ablation Study
<ablation-study>
#bnsub(2)[অ্যাবলেশন স্টাডি]
An ablation study systematically removes or modifies specific components of a proposed model to prove exactly how much each one contributes --- proving the design is not arbitrary.

#strong[Why needed:] proves the architecture isn't random; shows which module matters most; convinces reviewers there's a real rationale; reduces overclaiming.

#strong[Example:] Model = CNN + BiLSTM + Attention + Preprocessing pipeline:

#figure(
  align(center)[#table(
    columns: (43.03%, 28.48%, 28.48%),
    align: (left,left,left,),
    table.header([Model Variant], [Accuracy], [F1-score],),
    table.hline(),
    [Full Model], [94.20%], [93.80%],
    [Without Attention], [91.60%], [91.10%],
    [Without BiLSTM], [90.80%], [90.20%],
    [Without CNN], [89.40%], [88.90%],
    [Without Preprocessing], [87.50%], [86.90%],
  )]
  , kind: table
  )

#emph[Section 19.8 reads this same table critically, step by step. · Section 19.8-এ এই টেবিলটিই ধাপে ধাপে সমালোচনামূলকভাবে পড়া হয়েছে।]

#strong[Types of ablation:] component ablation (remove a module); feature-group ablation (remove a group of input features); preprocessing ablation (remove stemming/augmentation/etc.); loss-function ablation (compare cross-entropy vs.~focal loss vs.~weighted loss); data ablation (train on 25%/50%/75%/100% of data to study data efficiency).

#bn[Ablation study হলো প্রস্তাবিত মডেলের নির্দিষ্ট অংশ পদ্ধতিগতভাবে সরিয়ে বা বদলে দেখা, যাতে প্রমাণ হয় প্রতিটি অংশ ঠিক কতটা অবদান রাখছে --- এটি প্রমাণ করে ডিজাইনটি এলোমেলো নয়।]

#bn[কেন দরকার: আর্কিটেকচার random নয় তা প্রমাণ করে; কোন module সবচেয়ে গুরুত্বপূর্ণ তা দেখায়; reviewer-কে বিশ্বাস করায় যে যুক্তিসঙ্গত কারণ আছে; overclaiming কমায়।]

Ablation-এর ধরন: component ablation, feature-group ablation, preprocessing ablation, loss-function ablation, data ablation (২৫%/৫০%/৭৫%/১০০% ডেটা দিয়ে data efficiency দেখা)।

== XAI (Explainable AI) Methods
<xai-explainable-ai-methods>
#bnsub(2)[এক্সপ্লেইনেবল এআই মেথড]
XAI methods explain #emph[why] a model made a prediction --- turning a “black box” into something humans can trust and audit.

#figure(
  align(center)[#table(
    columns: (21.95%, 56.1%, 21.95%),
    align: (left,left,left,),
    table.header([Method], [What it shows], [Best for],),
    table.hline(),
    [#strong[SHAP] #cite(<ref50>)], [How much each feature/token increased or decreased a prediction], [Tabular, text],
    [#strong[LIME] #cite(<ref49>)], [A local, per-instance explanation of one prediction], [Tabular, text, image],
    [#strong[Grad-CAM] #cite(<ref51>)], [Heatmap of which image region most influenced a CNN's decision], [CNN, medical imaging],
    [#strong[Integrated Gradients]], [Attribution of the prediction to each input feature/token], [Neural networks, NLP],
    [#strong[Attention Visualization]], [Which words/tokens the model focused on most], [Transformers, NLP],
    [#strong[Permutation Importance]], [How much performance drops when a feature is shuffled], [Tabular models],
  )]
  , kind: table
  )

#strong[Caution:] XAI explanations describe learned patterns, not proven real-world causation --- always interpret XAI output alongside domain knowledge.

#bn[XAI মেথড ব্যাখ্যা করে মডেল কেন একটি নির্দিষ্ট প্রেডিকশন করলো --- “black box”-কে মানুষের বিশ্বাসযোগ্য ও যাচাইযোগ্য করে তোলে।]

#bn[উপরের টেবিলের মেথডগুলো: #strong[SHAP] (কোন ফিচার প্রেডিকশন কতটা বাড়ালো/কমালো), #strong[LIME] (একটি নির্দিষ্ট প্রেডিকশনের local ব্যাখ্যা), #strong[Grad-CAM] (ছবির কোন অংশ সিদ্ধান্তে সবচেয়ে বেশি প্রভাব ফেলেছে তার heatmap), #strong[Integrated Gradients (ইনপুট ফিচার/টোকেনের অবদান), Attention Visualization] (মডেল কোন শব্দে সবচেয়ে বেশি focus করেছে), #strong[Permutation Importance] (একটি ফিচার এলোমেলো করলে performance কতটা কমে)।]

#bn[#strong[সতর্কতা:] XAI-এর ব্যাখ্যা শেখা প্যাটার্ন বর্ণনা করে, বাস্তব cause-effect প্রমাণ করে না --- ডোমেইন জ্ঞানের সাথে মিলিয়ে XAI ফলাফল বুঝতে হবে।]

== Error Analysis
<error-analysis>
#bnsub(2)[এরর অ্যানালিসিস]
Systematically examining #emph[specific] wrong predictions rather than just reporting a score. Ask: Which class is confused most? Are false positives or false negatives more common? Is the minority class being missed? Does the model fail on noisy/edge-case inputs (typos, sarcasm, low-quality images, missing data)? Is there evidence of bias in the training data? A short error-analysis section with 2-3 concrete failure examples makes a paper look far more mature and trustworthy.

#bn[শুধু score না দিয়ে নির্দিষ্ট ভুল প্রেডিকশন পদ্ধতিগতভাবে বিশ্লেষণ করা। প্রশ্ন করুন: কোন ক্লাসে সবচেয়ে বেশি ভুল হচ্ছে? False positive না false negative বেশি? Minority class miss হচ্ছে কিনা? Noisy/edge-case ইনপুটে (বানান ভুল, sarcasm, নিম্নমানের ছবি) মডেল ব্যর্থ হচ্ছে কিনা? ট্রেনিং ডেটায় bias আছে কিনা? পেপারে ২-৩টি concrete ভুল উদাহরণসহ একটি ছোট error-analysis section কাজটিকে অনেক বেশি পরিণত ও বিশ্বাসযোগ্য দেখায়।]

== Robustness & Generalization Testing
<robustness-generalization-testing>
#bnsub(2)[রোবাস্টনেস ও জেনারেলাইজেশন টেস্ট]
#strong[Robustness] = does the model stay stable under noisy/incomplete/slightly changed input? #strong[Generalization] = does it perform well on genuinely new, unseen data/distributions?

#strong[Example robustness tests:] inject typos/emoji/slang into text; blur/rotate/change brightness of images; inject missing values/outliers into tabular data; test on adversarial or abnormal patterns in security data.

#bn[#strong[Robustness] = noisy/incomplete/সামান্য পরিবর্তিত ইনপুটেও মডেল স্থিতিশীল থাকে কিনা। #strong[Generalization] = সত্যিকারের নতুন, আগে না-দেখা ডেটাতে ভালো কাজ করে কিনা।]

#bn[উদাহরণ: টেক্সটে বানান ভুল/emoji/slang যোগ করা; ছবিতে blur/rotation/brightness পরিবর্তন করা; ট্যাবুলার ডেটায় missing value/outlier inject করা; security ডেটায় adversarial প্যাটার্ন টেস্ট করা।]

== Computational Complexity Analysis
<computational-complexity-analysis>
#bnsub(2)[কম্পিউটেশনাল জটিলতা বিশ্লেষণ]
If a paper claims a model is “lightweight,” “efficient,” or “deployment-friendly,” it must report: training time, inference time (per sample), number of parameters, memory/GPU usage, FLOPs, saved model size, and energy cost. In practice, a slightly lower-accuracy but fast, lightweight model is often more useful than a marginally more accurate but very heavy one.

#bn[কোনো মডেলকে “lightweight” বা “efficient” বলা হলে অবশ্যই রিপোর্ট করতে হবে: training time, inference time, parameter সংখ্যা, memory/GPU usage, FLOPs, model size, energy cost।]

#bn[বাস্তবে, সামান্য কম accuracy কিন্তু দ্রুত ও হালকা মডেল প্রায়ই সামান্য বেশি accuracy কিন্তু অনেক ভারী মডেলের চেয়ে বেশি কার্যকর।]

== Statistical Significance & Confidence Intervals
<statistical-significance-confidence-intervals>
#bnsub(2)[স্ট্যাটিসটিক্যাল সিগনিফিকেন্স ও কনফিডেন্স ইন্টারভাল]
When two models' performance is close, simply showing a raw accuracy difference is not enough --- you must show the difference is statistically meaningful, not random chance.

#strong[Common tests:] paired t-test, Wilcoxon signed-rank test, McNemar's test, Friedman test with post-hoc analysis. #cite(<ref12>) #cite(<ref14>)

#strong[Confidence interval] expresses uncertainty in a result, e.g., “Accuracy = 92.4% ± 1.2%” means the true performance likely lies in that range.

#bn[দুটি মডেলের performance কাছাকাছি হলে শুধু raw accuracy পার্থক্য দেখানো যথেষ্ট নয় --- পার্থক্যটি পরিসংখ্যানগতভাবে অর্থপূর্ণ, নাকি নিছক দৈব ঘটনা, তা প্রমাণ করতে হবে।]

#bn[সাধারণ টেস্ট: paired t-test, Wilcoxon signed-rank test, McNemar's test, Friedman test।]

#bn[#strong[Confidence interval] ফলাফলের অনিশ্চয়তা প্রকাশ করে --- যেমন “Accuracy = 92.4% ± 1.2%” মানে প্রকৃত performance এই পরিসরের মধ্যে থাকতে পারে।]

#recap[
- A convincing experiment has tuned fair baselines, multiple seeds/folds, significance testing, and an ablation study.

  #bni[বিশ্বাসযোগ্য experiment-এ fair বেসলাইন, একাধিক seed/fold, significance test ও ablation study থাকে।]

- Ablation studies prove which component of a complex model actually matters --- never trust a hybrid model without one.

  #bni[Ablation study প্রমাণ করে কোন component আসলে গুরুত্বপূর্ণ --- এটি ছাড়া hybrid মডেল বিশ্বাস করবেন না।]

- “Lightweight”/“efficient” claims need real numbers: parameters, FLOPs, training/inference time.

  #bni[“Lightweight”/“efficient” দাবির জন্য আসল সংখ্যা লাগবে: parameter, FLOPs, সময়।]

]
