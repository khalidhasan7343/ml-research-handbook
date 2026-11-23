#import "../template.typ": *

= Modern and Advanced ML Concepts
<modern-and-advanced-ml-concepts>
#bnsub(1)[আধুনিক ও উন্নত ML ধারণা]
The concepts in this section appear constantly in papers published from roughly 2018 onward. If you plan to read current literature, these are no longer optional.

#bn[এই অংশের ধারণাগুলো ২০১৮ সালের পর প্রকাশিত পেপারে অনবরত আসে। সাম্প্রতিক সাহিত্য পড়তে চাইলে এগুলো আর ঐচ্ছিক নয়।]

== Transfer Learning & Fine-Tuning
<transfer-learning-fine-tuning>
#bnsub(2)[ট্রান্সফার লার্নিং ও ফাইন-টিউনিং]
Instead of training a model from scratch (which needs enormous data and compute), you take a model already trained on a huge general dataset and adapt it to your specific, smaller task. The early layers have already learned general-purpose features --- edges and textures for images, grammar and word relationships for text --- and those transfer well to new problems.

#strong[Three common strategies:]

#figure(
  align(center)[#table(
    columns: (18.62%, 41.13%, 40.25%),
    align: (auto,auto,auto,),
    table.header([Strategy], [What you do], [When to use],),
    table.hline(),
    [#strong[Feature extraction]], [Freeze all pretrained layers; train only a new output layer], [Very small dataset; target task similar to source],
    [#strong[Fine-tuning (partial)]], [Freeze early layers; retrain the later layers], [Moderate dataset; moderately different task],
    [#strong[Full fine-tuning]], [Retrain all layers with a small learning rate], [Larger dataset; task differs meaningfully from source],
  )]
  , kind: table
  )

#strong[Key pitfall --- catastrophic forgetting:] fine-tuning with too high a learning rate destroys the useful pretrained knowledge. Standard practice is a learning rate 10--100× smaller than used for training from scratch.

#bn[শূন্য থেকে মডেল ট্রেন করার বদলে (যার জন্য বিপুল ডেটা ও কম্পিউট লাগে), বিশাল সাধারণ ডেটাসেটে আগে থেকে ট্রেইন করা একটি মডেল নিয়ে সেটিকে আপনার নির্দিষ্ট, ছোট কাজের জন্য মানিয়ে নেওয়া হয়। প্রাথমিক স্তরগুলো ইতিমধ্যে সাধারণ ফিচার শিখে ফেলেছে --- ছবির ক্ষেত্রে edge ও texture, টেক্সটের ক্ষেত্রে ব্যাকরণ ও শব্দ-সম্পর্ক --- এবং সেগুলো নতুন সমস্যায় ভালোভাবে কাজে লাগে।]

#bn[তিনটি কৌশল: #emph[Feature extraction] (সব pretrained স্তর জমাট রেখে শুধু নতুন output স্তর ট্রেন করা --- খুব ছোট ডেটাসেটে), #emph[Partial fine-tuning] (প্রাথমিক স্তর জমাট, পরের স্তরগুলো পুনরায় ট্রেন), #emph[Full fine-tuning] (ছোট learning rate দিয়ে সব স্তর পুনরায় ট্রেন)।]

#bn[প্রধান বিপদ --- catastrophic forgetting: অতিরিক্ত বড় learning rate দিয়ে fine-tune করলে আগে শেখা দরকারি জ্ঞান নষ্ট হয়ে যায়। সাধারণত scratch থেকে ট্রেনিংয়ের চেয়ে ১০--১০০ গুণ ছোট learning rate ব্যবহার করা হয়।]

#strong[What to check in a paper / পেপারে যা যাচাই করবেন:] Which pretrained model and which exact checkpoint? Which layers were frozen? What learning rate? Was the pretraining data plausibly related to the target domain --- and could it have #emph[overlapped] with the test set (a subtle but serious form of leakage)?

== Foundation Models & Large Language Models (LLMs)
<foundation-models-large-language-models-llms>
#bnsub(2)[ফাউন্ডেশন মডেল ও LLM]
A #emph[foundation model] is a very large model pretrained on broad data at scale, designed to be adapted to many downstream tasks. Large Language Models are the best-known example: Transformer-based networks trained via self-supervision (predicting masked or next tokens) on enormous text corpora.

#strong[Key concepts you will meet in papers:]

- #strong[Pretraining vs.~post-training] --- the initial large-scale self-supervised phase, versus later alignment steps (instruction tuning, RLHF) that shape behaviour.

- #strong[Zero-shot / few-shot learning] --- solving a task with no task-specific training examples, or with only a handful provided in the prompt.

- #strong[In-context learning] --- the model adapts its behaviour from examples in the input prompt, without any weight updates. This is #emph[not] training.

- #strong[Prompt engineering] --- designing the input text to elicit better outputs; increasingly treated as an experimental variable that must be reported for reproducibility.

- #strong[Parameter-efficient fine-tuning (PEFT / LoRA)] --- adapting a huge model by training a small number of additional parameters instead of all of them, drastically cutting compute cost.

- #strong[Hallucination] --- fluent but factually incorrect generated output; a central evaluation challenge.

- #strong[Retrieval-Augmented Generation (RAG)] --- supplying the model with retrieved documents at inference time so its answers are grounded in a source rather than parametric memory alone.

#bn[#emph[Foundation model] হলো বিশাল পরিসরে pretrained একটি অত্যন্ত বড় মডেল, যা বহু ধরনের downstream কাজে মানিয়ে নেওয়ার জন্য তৈরি। LLM এর সবচেয়ে পরিচিত উদাহরণ: বিপুল টেক্সট কর্পাসে self-supervision দিয়ে ট্রেইন করা Transformer নেটওয়ার্ক।]

#bn[যেসব ধারণা পেপারে পাবেন: #emph[Zero-shot/few-shot] (কোনো task-specific ট্রেনিং উদাহরণ ছাড়াই বা প্রম্পটে মাত্র কয়েকটি উদাহরণ দিয়ে সমাধান), #emph[In-context learning] (প্রম্পটের উদাহরণ দেখে আচরণ বদলানো --- এটি ট্রেনিং নয়), #emph[Prompt engineering] (ইনপুট টেক্সট ডিজাইন করা --- reproducibility-র জন্য এখন এটি রিপোর্ট করা জরুরি), #emph[PEFT/LoRA] (সব parameter নয়, অল্প কিছু অতিরিক্ত parameter ট্রেন করে বিশাল মডেল মানিয়ে নেওয়া), #emph[Hallucination] (সাবলীল কিন্তু তথ্যগতভাবে ভুল আউটপুট), #emph[RAG] (inference-এর সময় প্রাসঙ্গিক ডকুমেন্ট সরবরাহ করে উত্তরকে উৎসভিত্তিক করা)।]

#strong[Critical reading note / সমালোচনামূলক পাঠ:] LLM papers have a distinctive reproducibility problem --- if the model is accessed through a commercial API, the underlying weights can change without notice, so results may not be reproducible even months later. Good papers report the #strong[exact model version, date of access, temperature/sampling settings, and full prompts]. Treat their absence as a serious red flag.

#bn[LLM পেপারে একটি স্বতন্ত্র reproducibility সমস্যা আছে --- বাণিজ্যিক API-র মাধ্যমে মডেল ব্যবহার করলে অন্তর্নিহিত weights যেকোনো সময় বদলে যেতে পারে। ভালো পেপার নির্দিষ্ট model version, ব্যবহারের তারিখ, temperature সেটিং ও সম্পূর্ণ প্রম্পট উল্লেখ করে; এগুলোর অনুপস্থিতি গুরুতর রেড ফ্ল্যাগ।]

== Model Calibration
<model-calibration>
#bnsub(2)[মডেল ক্যালিব্রেশন]
A model is #strong[well calibrated] if, among all the predictions where it says “80% confident,” roughly 80% actually turn out correct. Accuracy and calibration are #emph[different] properties: a model can be highly accurate yet badly overconfident.

This matters enormously in medicine, finance, and any setting where a human acts on the model's confidence. Deep neural networks are known to be systematically overconfident by default.

#strong[How it is measured:] reliability diagrams (plotting predicted confidence against observed accuracy), and #strong[Expected Calibration Error (ECE)] --- the average gap between confidence and accuracy across bins. #strong[How it is fixed:] temperature scaling, Platt scaling, or isotonic regression applied on a held-out validation set.

#bn[একটি মডেল #strong[well calibrated] তখনই, যখন সে যেসব প্রেডিকশনে “৮০% নিশ্চিত” বলে, তার প্রায় ৮০% বাস্তবে সঠিক হয়। Accuracy আর calibration ভিন্ন বৈশিষ্ট্য --- একটি মডেল অত্যন্ত নির্ভুল হয়েও মারাত্মক overconfident হতে পারে।]

#bn[চিকিৎসা, অর্থনীতি এবং যেখানে মানুষ মডেলের আত্মবিশ্বাসের ওপর ভিত্তি করে সিদ্ধান্ত নেয়, সেখানে এটি অত্যন্ত গুরুত্বপূর্ণ। ডীপ নিউরাল নেটওয়ার্ক সাধারণত overconfident হয়। পরিমাপ: reliability diagram ও #strong[Expected Calibration Error (ECE)]। সমাধান: temperature scaling, Platt scaling, বা isotonic regression।]

== Active Learning & Data-Centric AI
<active-learning-data-centric-ai>
#bnsub(2)[অ্যাক্টিভ লার্নিং ও ডেটা-কেন্দ্রিক এআই]
#strong[Active learning] flips the usual assumption that data comes first. The model itself identifies which unlabeled samples it is most uncertain about, and only #emph[those] are sent to a human expert for labelling. When expert labelling is expensive (radiologists, lawyers, linguists), this can reach target accuracy with a small fraction of the labelling budget.

#strong[Data-centric AI] is the broader movement arguing that, for most real problems, systematically improving data quality yields larger gains than architecture tweaking. Practically: fixing label noise, resolving annotator disagreement, removing duplicates, and covering edge cases often beats swapping in a fancier model.

#bn[#strong[Active learning] স্বাভাবিক ধারণাটি উল্টে দেয়। মডেল নিজেই চিহ্নিত করে কোন unlabeled নমুনা নিয়ে সে সবচেয়ে অনিশ্চিত, এবং শুধু সেগুলোই মানুষ বিশেষজ্ঞের কাছে লেবেলিংয়ের জন্য পাঠানো হয়। যেখানে বিশেষজ্ঞের লেবেলিং ব্যয়বহুল (রেডিওলজিস্ট, আইনজীবী, ভাষাবিদ), সেখানে অল্প বাজেটেই কাঙ্ক্ষিত accuracy পাওয়া যায়।]

#bn[#strong[Data-centric AI] হলো সেই বৃহত্তর ধারা যা বলে --- বেশিরভাগ বাস্তব সমস্যায় architecture বদলানোর চেয়ে ডেটার মান পদ্ধতিগতভাবে উন্নত করলে বেশি লাভ হয়: label noise ঠিক করা, annotator মতভেদ মেটানো, duplicate সরানো, edge case cover করা।]

== Ensemble Strategies Beyond Bagging & Boosting
<ensemble-strategies-beyond-bagging-boosting>
#bnsub(2)[উন্নত এনসেম্বল কৌশল]
#figure(
  align(center)[#table(
    columns: (10.5%, 54.48%, 35.02%),
    align: (auto,auto,auto,),
    table.header([Method], [How it works], [বাংলা],),
    table.hline(),
    [#strong[Stacking]], [Train several diverse base models, then train a #emph[meta-model] that learns how best to combine their predictions], [কয়েকটি ভিন্ন base মডেলের প্রেডিকশন একত্রিত করতে একটি meta-মডেল ট্রেন করা],
    [#strong[Blending]], [Like stacking, but the meta-model is trained on a held-out validation set rather than via cross-validation], [Stacking-এর মতো, তবে meta-মডেল আলাদা validation সেটে ট্রেন হয়],
    [#strong[Snapshot ensembles]], [Save model checkpoints at different training stages and ensemble them --- one training run, many models], [ট্রেনিংয়ের বিভিন্ন পর্যায়ের checkpoint একত্রিত করা],
    [#strong[Mixture of Experts (MoE)]], [A routing network sends each input to a small subset of specialized sub-networks, so only part of the model activates], [Routing নেটওয়ার্ক প্রতিটি ইনপুট কয়েকটি বিশেষায়িত sub-network-এ পাঠায়],
  )]
  , kind: table
  )

#strong[Pitfall in papers:] stacking can leak badly if the meta-model is trained on predictions the base models made on their #emph[own] training data. Correct practice is out-of-fold predictions.

#bn[পেপারে বিপদ: base মডেলগুলো নিজেদের ট্রেনিং ডেটায় যে প্রেডিকশন করেছে তার ওপর meta-মডেল ট্রেন করলে মারাত্মক leakage হয়। সঠিক পদ্ধতি হলো out-of-fold প্রেডিকশন ব্যবহার করা।]

== Hyperparameter Search Strategies Compared
<hyperparameter-search-strategies-compared>
#bnsub(2)[হাইপারপ্যারামিটার সার্চ কৌশলের তুলনা]
#figure(
  align(center)[#table(
    columns: (16.43%, 36.11%, 22.53%, 24.93%),
    align: (auto,auto,auto,auto,),
    table.header([Strategy], [How it works], [Strength], [Weakness],),
    table.hline(),
    [#strong[Grid Search]], [Try every combination on a predefined grid], [Exhaustive, reproducible], [Cost explodes exponentially with dimensions],
    [#strong[Random Search]], [Sample combinations randomly], [Often finds good values far faster than grid], [No learning from previous trials],
    [#strong[Bayesian Optimization]], [Build a probabilistic model of the objective; choose the next trial where improvement is most likely], [Very sample-efficient], [More complex; can be trapped in local optima],
    [#strong[Hyperband / Successive Halving]], [Start many configurations cheaply, aggressively kill the weak ones early], [Excellent under tight compute budgets], [Can prematurely cut slow-starting configurations],
    [#strong[Evolutionary / Population-based]], [Mutate and select configurations over generations], [Handles messy, non-differentiable spaces], [Computationally heavy],
  )]
  , kind: table
  )

#bn[#emph[Grid Search] (সব সম্ভাব্য combination --- নিখুঁত কিন্তু ডাইমেনশন বাড়লে খরচ বিস্ফোরিত হয়), #emph[Random Search] (এলোমেলো নমুনা --- প্রায়ই grid-এর চেয়ে দ্রুত ভালো মান খুঁজে পায়), #emph[Bayesian Optimization] (আগের ফলাফল থেকে শিখে পরবর্তী trial বেছে নেয় --- অত্যন্ত sample-efficient), #emph[Hyperband] (অনেক configuration সস্তায় শুরু করে দুর্বলগুলো দ্রুত বাদ দেয়), #emph[Evolutionary] (প্রজন্মের পর প্রজন্ম mutate ও select করে)।]

#strong[Reporting requirement:] a paper must state the #strong[search space, the search strategy, and the total trial budget]. “We tuned the hyperparameters” with no further detail is not reproducible.

#bn[রিপোর্টিং শর্ত: পেপারে search space, search strategy ও মোট trial বাজেট উল্লেখ থাকতে হবে। শুধু “আমরা হাইপারপ্যারামিটার টিউন করেছি” লেখা reproducible নয়।]

== Time-Series Specific Validation
<time-series-specific-validation>
#bnsub(2)[টাইম-সিরিজ ভ্যালিডেশন]
Standard K-Fold cross-validation is #strong[invalid] for time-series data because shuffling lets the model train on the future and test on the past --- a guaranteed leak that produces impossibly good results.

#strong[Correct approaches:]

- #strong[Rolling/expanding window (TimeSeriesSplit):] always train on earlier data, test on strictly later data.

- #strong[Purging:] remove samples immediately adjacent to the split boundary, since they may share information.

- #strong[Embargo:] additionally exclude a buffer period after the training window before the test window begins.

#bn[টাইম-সিরিজ ডেটায় সাধারণ K-Fold অবৈধ, কারণ shuffle করলে মডেল ভবিষ্যতের ডেটায় ট্রেন করে অতীত প্রেডিক্ট করে --- এটি নিশ্চিত leakage এবং অবাস্তব ভালো ফলাফল দেয়।]

#bn[সঠিক পদ্ধতি: #emph[Rolling/expanding window] (সবসময় আগের ডেটায় ট্রেন, কেবল পরের ডেটায় টেস্ট), #emph[Purging] (split সীমানার ঠিক পাশের নমুনা বাদ দেওয়া), #emph[Embargo] (ট্রেনিং উইন্ডোর পর একটি buffer সময় বাদ রাখা)।]

== Multicollinearity & VIF --- with numbers
<multicollinearity-vif-with-numbers>
#bnsub(2)[মাল্টিকোলিনিয়ারিটি ও VIF]
Multicollinearity occurs when input features are strongly correlated with each other. The model may still predict well overall, but individual coefficients become unstable and #strong[uninterpretable] --- a serious problem if your paper draws conclusions from feature importance.

#strong[Variance Inflation Factor (VIF)] quantifies it: regress feature #emph[i] on all other features, obtain `R²ᵢ`, then

#quote(block: true)[
$ V I F_i = frac(1, 1 - R_i^2) $
]

#strong[Worked example:] if feature “house area in sq-ft” is 95% predictable from the other features, $R^2 = 0.95$, so:

#quote(block: true)[
$ V I F = frac(1, 1 - 0.95) = 1 / 0.05 = 20 $
]

#strong[Common rules of thumb:] VIF \> 5 warrants attention; VIF \> 10 indicates serious multicollinearity. #strong[Treatment:] drop one of the correlated features, combine them into a single feature, or apply PCA/regularization (Ridge handles correlated predictors far better than ordinary least squares).

#bn[Multicollinearity তখন হয় যখন ইনপুট ফিচারগুলো পরস্পরের সাথে দৃঢ়ভাবে correlated। মডেল সামগ্রিকভাবে ভালো প্রেডিক্ট করলেও পৃথক coefficient অস্থির ও ব্যাখ্যার অযোগ্য হয়ে পড়ে --- feature importance থেকে সিদ্ধান্ত টানলে এটি গুরুতর সমস্যা। VIF \> ৫ হলে সতর্ক হন, VIF \> ১০ হলে গুরুতর। সমাধান: একটি correlated ফিচার বাদ দেওয়া, একত্র করা, বা PCA/Ridge regularization ব্যবহার করা।]

#recap[
- Transfer learning and foundation models dominate modern papers --- always check which checkpoint, which frozen layers, and whether pretraining data could overlap the test set.

  #bni[আধুনিক পেপারে transfer learning ও foundation model প্রাধান্য পায় --- কোন checkpoint, কোন স্তর frozen, এবং pretraining ডেটা টেস্ট সেটের সাথে overlap করতে পারে কিনা যাচাই করুন।]

- Accuracy and calibration are different properties; a confident model is not automatically a correct one.

  #bni[Accuracy ও calibration ভিন্ন জিনিস; আত্মবিশ্বাসী মডেল মানেই সঠিক মডেল নয়।]

- Standard K-Fold is invalid on time-series data --- look for TimeSeriesSplit, purging, and embargo instead.

  #bni[টাইম-সিরিজে সাধারণ K-Fold অবৈধ --- TimeSeriesSplit, purging ও embargo খুঁজুন।]

]
