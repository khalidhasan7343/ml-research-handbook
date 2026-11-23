#import "../template.typ": *

= The Complete ML Project Pipeline
<the-complete-ml-project-pipeline>
#bnsub(1)[সম্পূর্ণ মেশিন লার্নিং প্রজেক্ট পাইপলাইন]
An end-to-end ML project moves through #strong[17 ordered steps], grouped below into four phases. For each step you will find what it is and why it matters, what goes wrong when it is skipped, and the question to ask when you read a paper that claims to have done it.

#bn[একটি সম্পূর্ণ ML প্রজেক্টে ১৭টি ধারাবাহিক ধাপ থাকে, যেগুলো নিচে চারটি phase-এ ভাগ করা হয়েছে। প্রতিটি ধাপে দেখুন: এটি কী ও কেন দরকার, বাদ দিলে কী ভুল হয়, এবং পেপার পড়ার সময় কোন প্রশ্নটি করবেন।]

#pipeline-diagram()
== Phase 1 --- Problem and Data
<phase-1-problem-and-data>
#bnsub(2)[ধাপ ১ — সমস্যা ও ডেটা]
=== Step 1 · Problem Definition · সমস্যা নির্ধারণ
<step-1-problem-definition-সমসয-নরধরণ>
Formulate the business/scientific objective; decide supervised/unsupervised/RL; define success criteria. Skipping this leads to solving the wrong problem well.

#bn[ব্যবসায়িক/বৈজ্ঞানিক উদ্দেশ্য নির্ধারণ করা এবং কোন ধরনের লার্নিং দরকার তা ঠিক করা। এটা না করলে “ভুল সমস্যা”-কে ভালোভাবে সমাধান করা হয়।]

#strong[Ask while reading:] #emph[Is the problem clearly, measurably defined?]

=== Step 2 · Data Collection · ডেটা সংগ্রহ
<step-2-data-collection-ডট-সগরহ>
Gather data from APIs, databases, files, sensors, web. Report exact source, collection period, consent/ethics.

#bn[API, ডেটাবেস, ফাইল, সেন্সর ইত্যাদি থেকে ডেটা সংগ্রহ করা। ডেটার উৎস, সংগ্রহকাল স্পষ্টভাবে লিখতে হবে।]

#strong[Ask while reading:] #emph[Where exactly did the data come from?]

=== Step 3 · Data Understanding · ডেটা অনুধাবন
<step-3-data-understanding-ডট-অনধবন>
Inspect shape, dtypes, nulls, basic stats, class distribution before touching the data.

#bn[কলাম, ডেটা টাইপ, missing value, class distribution বোঝা --- ডেটাতে হাত দেওয়ার আগে।]

#strong[Ask while reading:] #emph[Did they show summary statistics / class counts?]

=== Step 4 · Data Cleaning · ডেটা ক্লিনিং
<step-4-data-cleaning-ডট-কলন>
Fix missing values, duplicates, wrong types, inconsistent labels. Undocumented cleaning is a reproducibility gap.

#bn[Missing value, ডুপ্লিকেট, ভুল টাইপ, ভুল লেবেল ঠিক করা। ডকুমেন্ট না করলে reproducibility gap তৈরি হয়।]

#strong[Ask while reading:] #emph[Is the exact cleaning procedure documented?]

=== Step 5 · Exploratory Data Analysis (EDA) · এক্সপ্লোরেটরি ডেটা অ্যানালিসিস
<step-5-exploratory-data-analysis-eda-একসপলরটর-ডট-অযনলসস>
Visualize distributions, correlations, anomalies to guide feature/model choices.

#bn[চার্ট/গ্রাফের সাহায্যে distribution, correlation, anomaly দেখা --- এটি ফিচার ও মডেল নির্বাচনে সাহায্য করে।]

#strong[Ask while reading:] #emph[Does EDA justify later modeling decisions?]

== Phase 2 --- Preparation
<phase-2-preparation>
#bnsub(2)[ধাপ ২ — প্রস্তুতি]
=== Step 6 · Data Preprocessing · ডেটা প্রিপ্রসেসিং
<step-6-data-preprocessing-ডট-পরপরসস>
Scaling, encoding, normalization --- fit only on train split (see Section 3.6).

#bn[স্কেলিং, এনকোডিং --- শুধু ট্রেনিং সেটে fit করতে হবে (Section 3.6 দেখুন)।]

#strong[Ask while reading:] #emph[Was preprocessing fit only on training data?]

=== Step 7 · Feature Engineering · ফিচার ইঞ্জিনিয়ারিং
<step-7-feature-engineering-ফচর-ইঞজনযর>
Create domain-informed derived features (e.g., ratios, aggregates, coordinates) to help the model learn faster/better.

#bn[ডোমেইন জ্ঞান ব্যবহার করে নতুন ফিচার তৈরি করা (যেমন অনুপাত, যোগফল)।]

#strong[Ask while reading:] #emph[Are new features theoretically justified, not just “thrown in”?]

=== Step 8 · Train · Validation / Test Split / স্প্লিট
<step-8-train-validation-test-split-সপলট>
Partition data (commonly \~70/15/15 or via K-Fold); use stratified sampling if classes are skewed; chronological split for time-series.

#bn[ডেটাকে ৩ ভাগে ভাগ করা; ক্লাস স্কিউড হলে stratified sampling; time-series হলে chronological split।]

#strong[Ask while reading:] #emph[Is the split ratio & method (random/stratified/temporal) stated?]

== Phase 3 --- Modelling
<phase-3-modelling>
#bnsub(2)[ধাপ ৩ — মডেলিং]
=== Step 9 · Model Selection · মডেল সিলেকশন
<step-9-model-selection-মডল-সলকশন>
Shortlist a few candidate model families (simple baselines + 1-2 more complex options) before committing to one.

#bn[কয়েকটি candidate মডেল পরিবার (সরল বেসলাইন + জটিল মডেল) শর্টলিস্ট করা।]

#strong[Ask while reading:] #emph[Did they compare model families, not just tune one?]

=== Step 10 · Model Training · মডেল ট্রেনিং
<step-10-model-training-মডল-টরন>
Fit the chosen models on the training data to estimate parameters.

#bn[নির্বাচিত মডেল ট্রেনিং ডেটায় ফিট করা।]

#strong[Ask while reading:] #emph[Were training conditions (epochs, optimizer, hardware) reported?]

=== Step 11 · Hyperparameter Tuning · হাইপারপ্যারামিটার টিউনিং
<step-11-hyperparameter-tuning-হইপরপযরমটর-টউন>
Tune settings (learning rate, depth, etc.) using the #strong[validation] set only, via grid/random/Bayesian search.

validation সেট ব্যবহার করে (কখনও test set নয়) grid/random/Bayesian search দিয়ে সেটিংস টিউন করা।

#strong[Ask while reading:] #emph[Was tuning done on validation, not test, data?]

=== Step 12 · Cross-Validation · ক্রস-ভ্যালিডেশন
<step-12-cross-validation-করস-ভযলডশন>
K-Fold (or stratified/time-series variants) for a stable performance estimate + variance/standard deviation.

#bn[K-Fold (বা এর বিশেষ ভ্যারিয়েন্ট) দিয়ে স্থিতিশীল performance অনুমান + std deviation।]

#strong[Ask while reading:] #emph[Do they report mean ± std across folds/seeds?]

== Phase 4 --- Evaluation and Reporting
<phase-4-evaluation-and-reporting>
#bnsub(2)[ধাপ ৪ — মূল্যায়ন ও রিপোর্টিং]
=== Step 13 · Comprehensive Evaluation · সামগ্রিক মূল্যায়ন
<step-13-comprehensive-evaluation-সমগরক-মলযযন>
Use multiple metrics appropriate to the task (see Chapter 5), not just accuracy.

#bn[শুধু accuracy না দিয়ে টাস্ক-উপযোগী একাধিক মেট্রিক ব্যবহার করা (Chapter 5 দেখুন)।]

#strong[Ask while reading:] #emph[Are metrics appropriate for class balance/task type?]

=== Step 14 · Error Analysis · এরর অ্যানালিসিস
<step-14-error-analysis-এরর-অযনলসস>
Inspect #emph[specific] wrong predictions to find systematic failure patterns (which class, what kind of input).

#bn[মডেল কোথায় এবং কেন ভুল করছে তা নির্দিষ্ট উদাহরণসহ বিশ্লেষণ করা।]

#strong[Ask while reading:] #emph[Do they show/discuss actual failure cases?]

=== Step 15 · Baseline Comparison · বেসলাইন তুলনা
<step-15-baseline-comparison-বসলইন-তলন>
Confirm the proposed model beats simple/dummy baselines and recent SOTA by a meaningful, statistically justified margin.

#bn[প্রস্তাবিত মডেল সহজ বেসলাইন ও সাম্প্রতিক SOTA-কে অর্থপূর্ণভাবে হারাচ্ছে কিনা তা যাচাই করা।]

#strong[Ask while reading:] #emph[Are baselines fair, tuned, and recent?]

=== Step 16 · Model Interpretation · মডেল ব্যাখ্যা (XAI)
<step-16-model-interpretation-মডল-বযখয-xai>
Apply explainability tools (SHAP, LIME, Grad-CAM, attention maps) to justify #emph[why] predictions are made.

#bn[SHAP, LIME, Grad-CAM ইত্যাদি দিয়ে মডেল কেন এই সিদ্ধান্ত নিলো তা ব্যাখ্যা করা।]

#strong[Ask while reading:] #emph[Is there any explainability analysis at all?]

=== Step 17 · Final Conclusion & Reporting · চূড়ান্ত রিপোর্টিং
<step-17-final-conclusion-reporting-চডনত-রপরট>
State assumptions, limitations, and compile final tables/figures for readers/reviewers.

#bn[অনুমান ও সীমাবদ্ধতা স্পষ্টভাবে বলা এবং চূড়ান্ত টেবিল/চিত্র উপস্থাপন করা।]

#strong[Ask while reading:] #emph[Are limitations honestly and specifically stated?]

#recap[
- A real ML project has #strong[17 ordered steps] --- skipping one is a common source of weak papers.

  #bni[বাস্তব ML প্রজেক্টে ১৭টি ধাপ থাকে --- একটি বাদ দিলেই পেপার দুর্বল হয়ে যায়।]

- Preprocessing must be `fit()` only on the training split, never on the full dataset before splitting.

  Preprocessing শুধু training split-এ `fit()` করতে হবে, পুরো ডেটাসেটে নয়।

- Hyperparameter tuning belongs on the #strong[validation] set --- the test set is touched only once, at the very end.

  Hyperparameter tuning #strong[validation] সেটে হয় --- test সেট শুধু শেষে একবার ব্যবহৃত হয়।

]
