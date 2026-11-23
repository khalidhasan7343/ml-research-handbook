#import "../template.typ": *

= Dataset Analysis and Data Quality
<dataset-analysis-and-data-quality>
#bnsub(1)[ডেটাসেট বিশ্লেষণ ও ডেটা কোয়ালিটি]
Real-world datasets are almost never clean. This chapter teaches you to critically interrogate #strong[any dataset used in a paper] --- this is one of the most common sources of red flags (see Chapter 11).

#bn[বাস্তব-জগতের ডেটাসেট প্রায় কখনোই পরিষ্কার হয় না। এই অংশটি শেখায় কীভাবে যেকোনো পেপারে ব্যবহৃত ডেটাসেটকে সমালোচনামূলকভাবে যাচাই করবেন --- এটি Red Flag (Chapter 11 দেখুন)-এর অন্যতম সাধারণ উৎস।]

== Dataset Description Basics
<dataset-description-basics>
#bnsub(2)[ডেটাসেট বর্ণনার মূল বিষয়]
#figure(
  align(center)[#table(
    columns: (16.08%, 45.45%, 38.48%),
    align: (left,left,left,),
    table.header([Question], [English], [বাংলা],),
    table.hline(),
    [Source], [Where did the data come from (public benchmark, scraped, collected in-house, survey)?], [ডেটা কোথা থেকে এসেছে (public benchmark, scraped, in-house, survey)?],
    [Size], [How many samples / rows / images / documents?], [কতগুলো নমুনা/সারি/ছবি/ডকুমেন্ট আছে?],
    [Features], [How many input features/columns, and what type (numeric, categorical, text, image)?], [কতগুলো ফিচার/কলাম আছে এবং তাদের ধরন কী?],
    [Classes], [How many target classes, and how are they distributed?], [কতগুলো টার্গেট ক্লাস আছে এবং তাদের বিন্যাস কেমন?],
    [Population], [Which real-world population does this data represent? Any demographic/geographic skew?], [এই ডেটা বাস্তবে কোন population প্রতিনিধিত্ব করে? কোনো demographic/geographic skew আছে কি?],
    [License/Access], [Is the dataset public, reproducible, and legally usable?], [ডেটাসেটটি পাবলিক, reproducible এবং legally ব্যবহারযোগ্য কি?],
  )]
  , kind: table
  )

== Missing Values
<missing-values>
#bnsub(2)[মিসিং ভ্যালু]
Missing values arise from collection errors, sensor failure, unanswered survey fields, or incomplete logs. Handling method depends heavily on #emph[why] data is missing and #emph[how much] is missing.

#figure(
  align(center)[#table(
    columns: (29.38%, 70.62%),
    align: (left,left,),
    table.header([Method], [When to use],),
    table.hline(),
    [Row deletion], [Very few missing rows, and deleting doesn't introduce bias],
    [Column deletion], [A column has an extremely high missing rate],
    [Mean imputation], [Numeric feature, roughly symmetric distribution],
    [Median imputation], [Numeric feature, skewed distribution or outliers present],
    [Mode imputation], [Categorical feature],
    [KNN imputation], [Want to estimate the missing value from similar samples],
    [MICE (multiple imputation)], [Want robust imputation using relationships across multiple features],
    [Missing indicator], [The #emph[fact that it's missing] is itself informative],
    [Domain-based imputation], [Expert knowledge can plausibly fill the value],
  )]
  , kind: table
  )

#strong[Critical rule:] Fit the imputer only on the training set, then transform validation/test --- fitting on the whole dataset before splitting is data leakage.

#bn[Missing value হয় ডেটা কালেকশনের ভুল, সেন্সর ব্যর্থতা, survey-তে উত্তর না দেওয়া, বা incomplete log-এর কারণে। কোন method ব্যবহার করবেন তা নির্ভর করে কেন এবং কতটা ডেটা missing তার ওপর।]

#figure(
  align(center)[#table(
    columns: (30.02%, 69.98%),
    align: (left,left,),
    table.header([Method], [কখন ব্যবহার করবেন],),
    table.hline(),
    [Row deletion], [খুব কম row missing থাকলে এবং এতে bias তৈরি না হলে],
    [Column deletion], [কোনো কলামে অনেক বেশি missing value থাকলে],
    [Mean imputation], [Numeric ফিচার সমান্তরাল (symmetric) distribution হলে],
    [Median imputation], [Numeric ফিচার skewed বা outlier থাকলে],
    [Mode imputation], [Categorical ফিচার হলে],
    [KNN imputation], [কাছাকাছি নমুনা দেখে মান অনুমান করতে চাইলে],
    [MICE imputation], [একাধিক ফিচারের সম্পর্ক ব্যবহার করে robust imputation করতে চাইলে],
    [Missing indicator], [মান missing থাকাটাই একটি গুরুত্বপূর্ণ সংকেত হলে],
    [Domain-based imputation], [বিশেষজ্ঞ জ্ঞান দিয়ে মান পূরণ সম্ভব হলে],
  )]
  , kind: table
  )

#bn[গুরুত্বপূর্ণ নিয়ম: Imputer শুধু ট্রেনিং সেটে fit করুন, তারপর validation/test-এ transform করুন --- পুরো ডেটাসেটে fit করা data leakage।]

== Class Imbalance
<class-imbalance>
#bnsub(2)[ক্লাস ইমব্যালেন্স]
Occurs when one or more classes have far fewer samples than others (e.g., fraud detection, rare disease diagnosis).

#strong[Symptoms:] high overall accuracy but low minority-class recall; low macro-F1 but high weighted-F1; the model becomes biased toward predicting the majority class.

#strong[Handling methods:] | Method | Explanation | |---|---| | Stratified split | Preserves class ratio in train/test | | Class weighting | Penalizes misclassifying the minority class more heavily | | Random oversampling | Duplicates minority-class samples | | Random undersampling | Reduces majority-class samples | | SMOTE | Creates synthetic minority-class samples | | ADASYN | Creates more synthetic samples for #emph[hard-to-learn] minority instances | | Focal loss | Down-weights easy majority examples, focuses training on hard examples | | Threshold tuning | Moves the decision threshold away from the default 0.5 | | Data augmentation | Synthetically expands minority-class data (text/image/audio) | | Appropriate metrics | Use macro-F1, recall, PR-AUC instead of raw accuracy |

#bn[এক বা একাধিক ক্লাসের নমুনা সংখ্যা অন্যদের তুলনায় অনেক কম হলে ক্লাস ইমব্যালেন্স হয় (যেমন fraud detection, rare disease)।]

#bn[লক্ষণ: overall accuracy বেশি কিন্তু minority-class recall কম; macro-F1 কম কিন্তু weighted-F1 বেশি; মডেল majority class predict করতে বেশি স্বচ্ছন্দ হয়ে যায়।]

#bn[উপরের টেবিলের method-গুলো বাংলায়: #strong[Stratified split] (train/test-এ class ratio ঠিক রাখে), #strong[Class weighting] (minority class ভুল করলে বেশি penalty), #strong[Oversampling/Undersampling] (নমুনা বাড়ানো/কমানো), #strong[SMOTE/ADASYN] (synthetic নমুনা তৈরি), #strong[Focal loss] (কঠিন নমুনায় বেশি focus), #strong[Threshold tuning], #strong[Data augmentation], এবং সঠিক metric (macro-F1, recall, PR-AUC) ব্যবহার করা।]

== Noisy Data
<noisy-data>
#bnsub(2)[নয়েজি ডেটা]
Noise = errors, random distortions, or irrelevant information contaminating the data.

#figure(
  align(center)[#table(
    columns: (24.85%, 75.15%),
    align: (left,left,),
    table.header([Type], [Example],),
    table.hline(),
    [Feature noise], [Wrong/distorted sensor reading],
    [Label noise], [A hate-speech sentence mislabeled as neutral],
    [Text noise], [Typos, slang, emoji, repeated characters, mixed language],
    [Image noise], [Blur, low resolution, bad lighting, background clutter],
    [Outlier noise], [Extreme values that confuse the model],
  )]
  , kind: table
  )

#strong[Handling:] data cleaning, text normalization, label verification/relabeling, robust loss functions, outlier detection, smoothing/filtering, data augmentation, regularization, early stopping.

#bn[Noise মানে ডেটায় ভুল, random বিকৃতি বা অপ্রাসঙ্গিক তথ্য।]

#bn[উপরের টেবিলের ধরন: #strong[Feature noise] (সেন্সরের ভুল রিডিং), #strong[Label noise] (ভুল লেবেল), #strong[Text noise] (বানান ভুল, slang, emoji), #strong[Image noise] (blur, কম resolution), #strong[Outlier noise] (চরম মান)।]

#bn[সমাধান: ডেটা ক্লিনিং, text normalization, label verification, robust loss function, outlier detection, smoothing, data augmentation, regularization, early stopping।]

== Outliers
<outliers>
#bnsub(2)[আউটলায়ার]
An outlier is a value far from the general pattern --- it may be a genuine rare event #emph[or] a data-entry error; domain knowledge decides how to treat it.

#strong[Detection:] Z-score, IQR method, boxplot visualization, Isolation Forest, DBSCAN. #strong[Handling:] correct/remove if it's an entry error; keep if it's a valid rare event; cap extreme values (winsorization); log-transform skewed data; or use outlier-robust models.

#bn[আউটলায়ার হলো সাধারণ প্যাটার্ন থেকে অনেক দূরের মান --- এটি সত্যিকারের rare event হতে পারে অথবা data-entry ভুলও হতে পারে; ডোমেইন জ্ঞান দিয়ে সিদ্ধান্ত নিতে হয়।]

#strong[Detection:] Z-score, IQR, boxplot, Isolation Forest, DBSCAN। #strong[Handling:] এন্ট্রি ভুল হলে ঠিক করা/বাদ দেওয়া; বৈধ rare event হলে রাখা; extreme value cap করা (winsorization); skewed data-তে log transformation; বা outlier-সহনশীল মডেল ব্যবহার করা।

== Data Leakage
<data-leakage>
#bnsub(2)[ডেটা লিকেজ]
Data leakage happens when information that would #emph[not] be available at real-world prediction time leaks into training --- producing artificially high but false performance.

#strong[Common leakage examples:]

- Using a feature that itself encodes the target (e.g., “final grade” feature when predicting pass/fail)

- Fitting a scaler/imputer/feature-selector on the #strong[entire] dataset before splitting

- The same user/patient appearing in both train and test sets

- Using future data to predict the past in time-series problems

#strong[Prevention:] Fit the whole preprocessing pipeline on training data only; use chronological splits for time-series; check for duplicate/overlapping entities across splits.

#bn[Data leakage হয় যখন বাস্তব predicion-এর সময় যে তথ্য পাওয়া যাবে না, তা ট্রেনিংয়ে ঢুকে যায় --- ফলে কৃত্রিমভাবে ভালো কিন্তু মিথ্যা performance দেখা যায়।]

#bn[সাধারণ উদাহরণ: টার্গেটকে নিজেই এনকোড করে এমন ফিচার ব্যবহার করা; পুরো ডেটাসেটে scaler/imputer fit করা; একই ব্যবহারকারী/রোগী train ও test দুই জায়গাতেই থাকা; time-series-এ future data দিয়ে past predict করা।]

#bn[প্রতিরোধ: পুরো preprocessing pipeline শুধু training data-তে fit করা; time-series-এ chronological split ব্যবহার করা; split-জুড়ে duplicate entity চেক করা।]

== Other Common Data Problems
<other-common-data-problems>
#bnsub(2)[অন্যান্য সাধারণ ডেটা সমস্যা]
#figure(
  align(center)[#table(
    columns: (11.76%, 43.91%, 44.33%),
    align: (left,left,left,),
    table.header([Problem], [English], [বাংলা],),
    table.hline(),
    [#strong[Duplicate Data]], [Repeated rows bias the model and can inflate test performance if duplicates span both splits.], [পুনরাবৃত্ত row মডেলে bias আনে, এবং train/test দুই জায়গায় থাকলে test performance কৃত্রিমভাবে বাড়ায়।],
    [#strong[Inconsistent Labels]], [Similar samples receiving different labels (annotator disagreement) --- check inter-annotator agreement.], [একই ধরনের নমুনা ভিন্ন লেবেল পাওয়া (annotator-দের মধ্যে মতভেদ) --- inter-annotator agreement চেক করা উচিত।],
    [#strong[High-Cardinality Categorical Features]], [Features like user ID/product ID with too many unique values --- one-hot encoding explodes dimensionality; use target/frequency encoding or embeddings instead.], [User ID-এর মতো অনেক unique value থাকা ফিচার --- one-hot করলে ডাইমেনশন বিস্ফোরিত হয়; target/frequency encoding বা embedding ব্যবহার করুন।],
    [#strong[Multicollinearity]], [Strongly correlated features destabilize linear model coefficients --- check via VIF or correlation matrix.], [শক্তিশালীভাবে correlated ফিচার linear মডেলের coefficient অস্থির করে --- VIF বা correlation matrix দিয়ে চেক করুন।],
    [#strong[Dimensionality Problem]], [Too many features relative to samples (curse of dimensionality) --- use PCA, feature selection, regularization.], [নমুনার তুলনায় অনেক বেশি ফিচার (curse of dimensionality) --- PCA, feature selection, regularization ব্যবহার করুন।],
    [#strong[Bias & Fairness]], [Underrepresented groups in data lead to unfair model decisions --- check group-wise performance and false positive/negative rates.], [ডেটাতে কোনো গ্রুপের কম প্রতিনিধিত্ব থাকলে মডেল অন্যায্য সিদ্ধান্ত নিতে পারে --- group-wise performance ও false positive/negative rate চেক করুন।],
  )]
  , kind: table
  )

== Preprocessing by Data Type
<preprocessing-by-data-type>
#bnsub(2)[ডেটার ধরন অনুযায়ী প্রিপ্রসেসিং]
#strong[Numerical / সাংখ্যিক:] missing-value imputation; standardization/normalization; outlier treatment; log/power transformation; feature interactions. Categorical / ক্যাটাগরিক্যাল: label encoding (ordinal); one-hot encoding (nominal); target encoding (high-cardinality); handling of unseen categories at deployment. #strong[Text / টেক্সট:] tokenization, stopword removal, stemming/lemmatization; URL/mention/hashtag/emoji handling; Bag-of-Words, TF-IDF, word/transformer embeddings; special normalization for mixed-language/romanized text. Image / ছবি: resize, normalization, denoising; augmentation (rotate/flip/crop/brightness); segmentation/ROI extraction; Grad-CAM for explaining decision regions.

== Dataset Analysis Checklist
<dataset-analysis-checklist>
#bnsub(2)[ডেটাসেট বিশ্লেষণ চেকলিস্ট]
#checklist[
- #cbox() #strong[Source & size] --- Where is the data from, and how large? / ডেটার উৎস ও আকার কী?

- #cbox() #strong[Representativeness] --- Does it represent the real target population?

  #bni[এটি বাস্তব population প্রতিনিধিত্ব করে কি?]

- #cbox() #strong[Class distribution] --- Is it balanced or skewed?

  #bni[ক্লাস বিন্যাস সুষম নাকি skewed?]

- #cbox() #strong[Missing values & duplicates] --- Audited and documented?

  #bni[চেক ও ডকুমেন্ট করা হয়েছে কি?]

- #cbox() #strong[Outliers] --- Detected and justified how they were treated?

  #bni[আউটলায়ার চিহ্নিত এবং তার সমাধান যুক্তিসঙ্গত কি?]

- #cbox() #strong[Train/val/test split] --- Stratified? Chronological (if time-series)? Ratio stated?

  #bni[সঠিক পদ্ধতিতে split করা হয়েছে কি?]

- #cbox() #strong[Data leakage risk] --- Was preprocessing fit only on train? Any overlapping entities?

  #bni[Leakage ঝুঁকি আছে কি?]

- #cbox() #strong[Reproducibility] --- Is the dataset public or otherwise obtainable? / ডেটাসেট reproducible কি?

- #cbox() #strong[Label quality] --- Any evidence of label noise/inconsistency, inter-annotator agreement reported?

  #bni[লেবেলের মান নিয়ে প্রমাণ আছে কি?]

- #cbox() #strong[Bias/fairness] --- Any demographic/geographic/temporal skew acknowledged?

  #bni[Bias/fairness নিয়ে আলোচনা আছে কি?]

]
#recap[
- Missing values, class imbalance, noise, outliers, and data leakage are the five most common dataset problems --- check all five in every paper.

  Missing value, class imbalance, noise, outlier, ও data leakage --- পাঁচটি সাধারণ সমস্যা, প্রতিটি পেপারে যাচাই করুন।

- #strong[Data leakage] (fitting on the whole dataset before splitting) is the single most common cause of “too good to be true” results.

  #bni[#strong[Data leakage] “অতিরিক্ত ভালো” ফলাফলের সবচেয়ে সাধারণ কারণ।]

- Run the Section 3.9 checklist on any dataset before trusting the numbers built on top of it.

  #bni[যেকোনো ডেটাসেটে বিশ্বাস করার আগে Section 3.9-এর চেকলিস্ট চালান।]

]
