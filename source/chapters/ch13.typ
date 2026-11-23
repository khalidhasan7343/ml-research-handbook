#import "../template.typ": *

= Sixteen Types of Research Gaps
<sixteen-types-of-research-gaps>
#bnsub(1)[১৬ ধরনের রিসার্চ গ্যাপ]
#strong[Definition / সংজ্ঞা:] A research gap is a missing piece of knowledge, tool, dataset, method, or validation in existing literature that must be resolved to meaningfully advance the field --- not simply “nobody has tried this exact combination yet” (see Chapter 15). This typology is adapted from gap-classification frameworks in the research-methodology literature #cite(<ref20>) #cite(<ref21>) #cite(<ref22>).

#bn[রিসার্চ গ্যাপ হলো বর্তমান সাহিত্যে জ্ঞান, টুল, ডেটাসেট, পদ্ধতি বা validation-এর এমন একটি অনুপস্থিত অংশ যা সমাধান করলে ক্ষেত্রটি সত্যিকারভাবে এগিয়ে যায় --- শুধু “এই সুনির্দিষ্ট combination আগে কেউ চেষ্টা করেনি” তা যথেষ্ট নয়। এই শ্রেণীবিভাগ গবেষণা-পদ্ধতি সাহিত্যের গ্যাপ-শ্রেণীকরণ কাঠামো থেকে অভিযোজিত #cite(<ref20>) #cite(<ref21>) #cite(<ref22>)।]

For each gap type below: #strong[Definition → Two real-world-style examples → How to detect it → A possible research direction.]

#bn[প্রতিটি গ্যাপের জন্য: #strong[সংজ্ঞা → দুটি বাস্তবসম্মত উদাহরণ → কীভাবে শনাক্ত করবেন → একটি সম্ভাব্য গবেষণা দিক।]]

== Knowledge Gap
<knowledge-gap>
#bnsub(2)[নলেজ গ্যাপ]
A key fact, relationship, or concept is completely undocumented in existing literature.

#bn[বর্তমান সাহিত্যে কোনো একটি সুনির্দিষ্ট তথ্য, সম্পর্ক বা ধারণা সম্পূর্ণ অজানা বা অনুপস্থিত।]

- #strong[Example 1:] No study has documented how a specific input feature relates to a specific outcome in a given domain.
- #strong[Example 2:] The relationship between social-media posting frequency and early symptoms of a specific mental-health condition has never been quantitatively studied.
- #strong[How to detect:] A systematic search returns zero papers connecting two concepts that are individually well studied.
- #strong[Possible direction:] Design a targeted observational or experimental study that measures the missing relationship directly.

== Methodological Gap
<methodological-gap>
#bnsub(2)[মেথডলজিক্যাল গ্যাপ]
Existing methods are flawed, outdated, or inappropriate for solving the problem.

#bn[প্রচলিত পদ্ধতি ত্রুটিপূর্ণ, সেকেলে, বা সমস্যা সমাধানের জন্য অনুপযুক্ত।]

- #strong[Example 1:] Standard K-Fold cross-validation is routinely applied to temporal data, silently allowing future information to leak into training.
- #strong[Example 2:] Sentiment-analysis pipelines built for formal English text are applied unmodified to code-mixed social-media text, where the tokenization assumptions break down.
- #strong[How to detect:] Multiple papers use the same method despite it violating a stated assumption of the data (e.g., independence, stationarity).
- #strong[Possible direction:] Propose and validate a method-appropriate alternative (e.g., TimeSeriesSplit, or a tokenizer designed for code-mixed text).

== Dataset Gap
<dataset-gap>
#bnsub(2)[ডেটাসেট গ্যাপ]
A lack of high-quality, standardized, or representative datasets to train or evaluate models.

#bn[মডেল ট্রেনিং বা মূল্যায়নের জন্য উচ্চ-মানের, প্রমিত বা প্রতিনিধিত্বমূলক ডেটাসেটের অভাব।]

- #strong[Example 1:] No large, public, standardized benchmark exists for hate-speech detection in a specific low-resource language.
- #strong[Example 2:] Publicly available medical-imaging datasets for a specific rare disease contain fewer than 200 labeled cases total.
- #strong[How to detect:] A literature review finds every paper on the topic using a private, small, or inconsistently labeled dataset.
- #strong[Possible direction:] Curate, annotate (with documented inter-annotator agreement), and publicly release a new benchmark dataset.

== Performance Gap
<performance-gap>
#bnsub(2)[পারফরম্যান্স গ্যাপ]
Existing systems fail to reach the accuracy, speed, or precision levels required for high-stakes deployment.

#bn[বর্তমান সিস্টেমগুলোর নির্ভুলতা, গতি বা precision বাস্তব উচ্চ-ঝুঁকির প্রয়োগের জন্য যথেষ্ট নয়।]

- #strong[Example 1:] The best published model achieves 80% recall, but the clinical use case requires at least 95% recall to be safe to deploy.
- #strong[Example 2:] Real-time fraud detection requires sub-100ms inference, but the best-performing published model needs 800ms per prediction.
- #strong[How to detect:] Compare the SOTA number in recent papers against the documented deployment threshold in the target industry or domain.
- #strong[Possible direction:] Investigate architectural or ensembling changes that specifically target the metric that falls short (not overall accuracy).

== Context Gap
<context-gap>
#bnsub(2)[কনটেক্সট গ্যাপ]
A well-known algorithm has never been tested or applied within a specific new context or environment.

#bn[একটি প্রচলিত অ্যালগরিদম সম্পূর্ণ নতুন কোনো পরিবেশ বা প্রেক্ষাপটের অধীনে কখনো পরীক্ষা করা হয়নি।]

- #strong[Example 1:] Transformer-based fraud-detection models, well studied for card transactions, have never been tested on mobile-banking micro-transaction data.
- #strong[Example 2:] A crop-disease detection CNN trained and validated only in temperate-climate agriculture has never been tested on tropical crop varieties.
- #strong[How to detect:] The method is mature (5+ years of literature) in one domain but has zero citations applying it in your target domain.
- #strong[Possible direction:] Apply the method in the new context and document exactly which domain-specific adaptations were necessary.

== Population Gap
<population-gap>
#bnsub(2)[পপুলেশন গ্যাপ]
Models are trained on data skewed toward one specific demographic, ignoring other groups.

#bn[মডেলগুলো কেবল একটি নির্দিষ্ট শ্রেণীর ডেটা দিয়ে ট্রেইনড, ফলে অন্য শ্রেণীর ওপর কাজ করে না।]

- #strong[Example 1:] Skin-lesion classifiers are trained predominantly on light-skin-tone images, degrading accuracy on darker skin tones.
- #strong[Example 2:] Speech-recognition systems are trained mostly on adult voices, performing poorly on children's speech patterns.
- #strong[How to detect:] The dataset section reports demographic breakdown showing severe skew, or reports no demographic breakdown at all.
- #strong[Possible direction:] Collect a demographically balanced supplementary dataset and report group-wise (disaggregated) performance.

== Temporal Gap
<temporal-gap>
#bnsub(2)[টেম্পোরাল গ্যাপ]
Models fail to handle temporal shifts, seasonal changes, or concept drifts over time.

#bn[মডেল সময়ের সাথে ডেটার প্যাটার্ন পরিবর্তন বা পরিবর্তনশীল ডেটার সাথে খাপ খাইয়ে নিতে পারে না।]

- #strong[Example 1:] A spam classifier trained on 2018 spam patterns fails badly against 2026-style spam that uses different vocabulary and tactics.
- #strong[Example 2:] A retail demand-forecasting model trained on pre-pandemic purchasing data was never re-validated against post-pandemic consumer behaviour.
- #strong[How to detect:] The paper's test set is drawn from the same time window as the training set, with no forward-looking validation.
- #strong[Possible direction:] Evaluate the model on a strictly later time window and measure the performance decay rate over time.

== Geographic Gap
<geographic-gap>
#bnsub(2)[জিওগ্রাফিক গ্যাপ]
Existing works are limited to a specific region or country, failing to adapt globally.

#bn[গবেষণার ডেটা ও ফলাফল কেবল একটি নির্দিষ্ট দেশ বা অঞ্চলে সীমাবদ্ধ।]

- #strong[Example 1:] A crop-disease detection dataset and model were built entirely from farms in one country's specific climate and soil conditions.
- #strong[Example 2:] An urban traffic-prediction model trained on one megacity's road network has never been tested on smaller or differently structured cities.
- #strong[How to detect:] All cited datasets and validation sets originate from a single country or region, with no cross-region test.
- #strong[Possible direction:] Test the existing method on a geographically distinct dataset and quantify the transfer gap.

== Theoretical Gap
<theoretical-gap>
#bnsub(2)[থিওরিটিক্যাল গ্যাপ]
A lack of mathematical proofs, convergence guarantees, or statistical frameworks explaining why a model works.

#bn[মডেলটি কেন কাজ করছে তার কোনো গাণিতিক প্রমাণ, কনভার্জেন্স গ্যারান্টি বা তাত্ত্বিক ভিত্তি নেই।]

- #strong[Example 1:] A novel loss function shows strong empirical results across several papers, but no work has proven it converges under standard gradient-descent assumptions.
- #strong[Example 2:] An attention-based architecture variant works well in practice, but there is no theoretical analysis of what inductive bias it actually encodes.
- #strong[How to detect:] The method is cited primarily for its empirical performance table, never for a theoretical contribution.
- #strong[Possible direction:] Derive convergence bounds or a theoretical justification, even a partial one under simplifying assumptions.

== Practical/Application Gap
<practicalapplication-gap>
#bnsub(2)[প্র্যাক্টিক্যাল বা অ্যাপ্লিকেশন গ্যাপ]
Excellent performance in laboratory simulations fails when translated to real-world edge devices.

#bn[ল্যাবরেটরিতে মডেলটি দারুণ পারফর্ম করলেও বাস্তব বা edge ডিভাইসে তা প্রয়োগযোগ্য নয়।]

- #strong[Example 1:] A 99%-accurate defect-detection model is too large (500MB, 1.2s/inference) to run on a factory-floor IoT sensor with limited memory.
- #strong[Example 2:] A conversational AI model performs well in curated benchmark dialogues but degrades sharply on real, messy customer-support transcripts.
- #strong[How to detect:] The paper reports only benchmark accuracy, with no discussion of model size, latency, or deployment environment.
- #strong[Possible direction:] Apply model compression (quantization, distillation, pruning) and report the accuracy-vs-efficiency trade-off curve.

== Evaluation Gap
<evaluation-gap>
#bnsub(2)[ইভ্যালুয়েশন গ্যাপ]
Prevailing research uses weak, biased, or deceptive evaluation metrics (e.g., accuracy instead of macro-F1 on imbalanced sets).

#bn[প্রচলিত গবেষণায় দুর্বল বা একতরফা মূল্যায়ন প্যারামিটার ব্যবহার করা হয়েছে।]

- #strong[Example 1:] A whole sub-field reports only accuracy on a dataset that is 95:5 imbalanced, without ever reporting precision, recall, or PR-AUC.
- #strong[Example 2:] Image-captioning papers compare BLEU scores only, without any human evaluation of caption usefulness or factual correctness.
- #strong[How to detect:] Cross-check whether the same one or two metrics appear in every paper in the sub-field, regardless of data characteristics.
- #strong[Possible direction:] Re-evaluate leading published models using a more appropriate metric suite and report how the rankings change.

== Reproducibility Gap
<reproducibility-gap>
#bnsub(2)[রিপ্রোডিউসিবিলিটি গ্যাপ]
Missing code, raw data, or hyperparameters prevent other researchers from validating claims.

#bn[সোর্স কোড, হাইপারপ্যারামিটার বা আসল ডেটা না থাকার কারণে অন্য গবেষকরা কাজটি পুনরায় করতে পারছেন না।]

- #strong[Example 1:] A paper reports state-of-the-art results but provides no public code repository and no random seed.
- #strong[Example 2:] Three independent papers claim to beat the same baseline by similar margins, but no two of them use identical preprocessing, making the comparisons unverifiable.
- #strong[How to detect:] Search for a linked GitHub/GitLab repository in the paper or its supplementary material; check whether hyperparameters are tabulated.
- #strong[Possible direction:] Attempt a faithful re-implementation and publish a replication study reporting what did or did not reproduce.

== Generalization Gap
<generalization-gap>
#bnsub(2)[জেনারেলাইজেশন গ্যাপ]
Models suffer from severe performance drop when evaluated on out-of-distribution (OOD) scenarios.

#bn[ট্রেনিং ডেটার বাইরের সামান্য ভিন্ন বৈশিষ্ট্যের ডেটা দিলে মডেলের পারফরম্যান্স ধসে পড়ে।]

- #strong[Example 1:] A skin-cancer classifier trained on one hospital's imaging equipment loses 15+ points of F1 when tested on a different hospital's differently calibrated scanners.
- #strong[Example 2:] A question-answering model trained on Wikipedia-style text performs far worse on informal forum text with the same underlying question types.
- #strong[How to detect:] The paper reports only in-distribution test results, drawn from the same source/collection process as training data.
- #strong[Possible direction:] Externally validate on a genuinely independent dataset and, if a gap is found, explore domain adaptation techniques.

== Scalability Gap
<scalability-gap>
#bnsub(2)[স্কেলেবিলিটি গ্যাপ]
Algorithms exhibit quadratic (or worse) computational or memory complexity, rendering them unscalable to massive datasets.

#bn[ডেটার পরিমাণ বাড়লে অ্যালগরিদমের মেমরি বা সিপিইউ প্রয়োজনীয়তা জ্যামিতিক হারে বেড়ে যায়, ফলে বড় স্কেলে চালানো যায় না।]

- #strong[Example 1:] Kernel SVM training becomes computationally infeasible beyond roughly one million samples due to its $O \( m^2 \)$--$O \( m^3 \)$ complexity.
- #strong[Example 2:] A graph-neural-network method requiring the full adjacency matrix in memory cannot scale to social-network graphs with hundreds of millions of nodes.
- #strong[How to detect:] The paper's largest reported experiment uses a suspiciously small dataset relative to real-world deployment scale, with no discussion of scaling behaviour.
- #strong[Possible direction:] Develop or apply an approximate/sparse variant of the method and measure the accuracy-vs-scale trade-off.

== Interpretability Gap
<interpretability-gap>
#bnsub(2)[ইন্টারপ্রেটেবিলিটি গ্যাপ]
Models operate as highly precise black boxes with zero transparency or explanation of decisions.

#bn[মডেলের সিদ্ধান্তগুলো সম্পূর্ণ অস্বচ্ছ এবং মানুষের পক্ষে বিশ্লেষণ করা অসম্ভব।]

- #strong[Example 1:] A deep model used in loan-approval decisions achieves high accuracy but has never been analyzed with any explainability method.
- #strong[Example 2:] A published clinical-risk-prediction model is deployed in a hospital pilot with no per-prediction explanation available to the treating physician.
- #strong[How to detect:] The paper reports performance metrics only, with no SHAP, LIME, attention visualization, or equivalent analysis (see Section 6.3).
- #strong[Possible direction:] Apply post-hoc explainability tools to the existing model and check whether the explanations reveal previously invisible biases.

== Robustness Gap
<robustness-gap>
#bnsub(2)[রবাস্টনেস গ্যাপ]
Models are highly vulnerable to adversarial attacks, minor noise, or sensor degradation.

#bn[সামান্য নয়েজ বা adversarial আক্রমণের মুখে মডেলটি সম্পূর্ণ ভেঙে পড়ে।]

- #strong[Example 1:] An image classifier's predictions flip with imperceptible pixel perturbations that are invisible to the human eye #cite(<ref53>) #cite(<ref54>).
- #strong[Example 2:] A network-intrusion-detection model's recall has never been measured against traffic deliberately crafted to evade detection.
- #strong[How to detect:] The paper reports performance on clean test data only, with no adversarial, noisy, or corrupted-input evaluation.
- #strong[Possible direction:] Apply a standard adversarial-attack or noise-injection benchmark and report the resulting performance degradation.

#recap[
- Always name which of the 16 gap types your gap belongs to --- an uncategorizable gap is usually an unverified one.

  #bni[আপনার গ্যাপ ১৬টির কোনটির অন্তর্ভুক্ত তা সবসময় নাম দিন --- শ্রেণীবিহীন গ্যাপ সাধারণত অযাচাইকৃত।]

- Every gap type has a matching detection method and a matching research direction --- use both, not just the definition.

  #bni[প্রতিটি গ্যাপ-ধরনের নিজস্ব শনাক্তকরণ পদ্ধতি ও গবেষণা দিক আছে --- শুধু সংজ্ঞা নয়, দুটোই ব্যবহার করুন।]

]
