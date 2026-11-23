#import "../template.typ": *

= Machine Learning Foundations
<machine-learning-foundations>
#bnsub(1)[মেশিন লার্নিং ফাউন্ডেশন]
== Foundational Concepts in Plain Language (Beginner Bridge)
<foundational-concepts-in-plain-language-beginner-bridge>
#bnsub(2)[সহজ ভাষায় মৌলিক ধারণা]
=== Why this section exists · এই অংশটি কেন আছে
<why-this-section-exists-এই-অশট-কন-আছ>
Words like #emph[feature], #emph[parameter], #emph[hyperparameter], and #emph[epoch] get thrown around constantly in ML writing, but they're rarely explained in truly plain language before the formal definitions begin. This section is a short “bridge” --- read it once, and the rest of this handbook (and any ML paper you read afterward) becomes much easier to follow. Every term below is explained through #strong[one running example]: teaching a computer to detect spam emails.

#bn[#emph[Feature], #emph[parameter], #emph[hyperparameter], #emph[epoch] --- এই শব্দগুলো ML লেখায় বারবার আসে, কিন্তু আনুষ্ঠানিক সংজ্ঞা দেওয়ার আগে সহজ ভাষায় এগুলো কমই ব্যাখ্যা করা হয়। এই অংশটি একটি ছোট “সেতু” --- একবার পড়ে নিলে এই হ্যান্ডবুকের বাকি অংশ এবং পরে যেকোনো ML পেপার পড়া অনেক সহজ হয়ে যাবে। নিচের প্রতিটি টার্ম একটি একক চলমান উদাহরণ দিয়ে ব্যাখ্যা করা হয়েছে: একটি কম্পিউটারকে স্প্যাম ইমেইল চেনানো শেখানো।]

#strong[The running example / চলমান উদাহরণ:] Imagine we have 1,000 old emails. A human has already gone through each one and marked it “Spam” or “Not Spam.” We want to teach a computer to make this same decision automatically on brand-new emails it has never seen. Keep this picture in your head as you read each term below.

#bn[কল্পনা করুন আমাদের কাছে ১,০০০টি পুরনো ইমেইল আছে। একজন মানুষ প্রতিটি ইমেইল দেখে আগেই “Spam” বা “Not Spam” চিহ্নিত করে রেখেছেন। আমরা চাই কম্পিউটার নিজে থেকেই নতুন, আগে-না-দেখা ইমেইলের ক্ষেত্রে একই সিদ্ধান্ত নিতে শিখুক। নিচের প্রতিটি টার্ম পড়ার সময় এই ছবিটি মাথায় রাখুন।]

=== The term-by-term bridge · টার্ম-বাই-টার্ম সেতু
<the-term-by-term-bridge-টরম-বই-টরম-সত>
#strong[Sample / Instance / Row --- নমুনা:] One single data point --- here, #strong[one single email]. Like one row in a spreadsheet.

#bn[একটি একক ডেটা পয়েন্ট --- এখানে একটি মাত্র ইমেইল। যেমন একটি স্প্রেডশিটের একটি row।]

#strong[Feature --- ফিচার:] A measurable property of a sample, used as input to the model --- e.g., “number of exclamation marks in the email,” “does it contain the word ‘free'?”, “sender's domain name.” Think of a feature as #strong[one column in the spreadsheet] --- every email (row) gets a value for that column.

#bn[নমুনার একটি পরিমাপযোগ্য বৈশিষ্ট্য যা মডেলের ইনপুট হিসেবে ব্যবহৃত হয় --- যেমন “ইমেইলে কতগুলো বিস্ময়সূচক চিহ্ন (!) আছে,” “‘free' শব্দটি আছে কিনা,” “প্রেরকের ডোমেইন নাম।” ফিচারকে ভাবুন স্প্রেডশিটের একটি কলাম হিসেবে --- প্রতিটি ইমেইল (row) সেই কলামের একটি মান পায়।]

#strong[Label / Target --- লেবেল/টার্গেট:] The correct answer attached to a sample --- here, “Spam” or “Not Spam.” This is #strong[the last column], already filled in by a human (only exists in supervised learning --- see Section 1.4).

#bn[নমুনার সাথে যুক্ত সঠিক উত্তর --- এখানে “Spam” বা “Not Spam”। এটি স্প্রেডশিটের সবার শেষ কলাম, যা মানুষ আগেই পূরণ করে রেখেছেন (শুধু supervised learning-এ থাকে --- Section 1.4 দেখুন)।]

#strong[Feature Vector --- ফিচার ভেক্টর:] All of one sample's feature values written together as an ordered list of numbers, e.g., `[3, 1, 0, 27]` (3 exclamation marks, contains “free” = 1, not from a known domain = 0, 27 words long). This is simply #strong[one full row of numbers], minus the label.

#bn[একটি নমুনার সব ফিচার-মান একসাথে সাজানো সংখ্যার তালিকা, যেমন `[3, 1, 0, 27]`। এটি লেবেল বাদে একটি সম্পূর্ণ row-এর সংখ্যা।]

#strong[Dataset --- ডেটাসেট:] The entire collection of samples --- here, #strong[all 1,000 emails together]. The whole spreadsheet.

#bn[সব নমুনার সম্পূর্ণ সংগ্রহ --- এখানে সবগুলো ১,০০০ ইমেইল একসাথে। সম্পূর্ণ স্প্রেডশিটটি।]

#strong[Model --- মডেল:] The mathematical “recipe” that takes a feature vector as input and produces a prediction as output. Think of it as #strong[a recipe]: put in ingredients (features), get out a dish (a prediction: “Spam” or “Not Spam”).

#bn[ফিচার ভেক্টরকে ইনপুট হিসেবে নিয়ে প্রেডিকশন আউটপুট দেয় এমন একটি গাণিতিক “রেসিপি”। এটাকে ভাবুন একটি রেসিপি হিসেবে: উপকরণ (ফিচার) দিলে একটি পদ (প্রেডিকশন: “Spam” বা “Not Spam”) বের হয়।]

#strong[Parameter --- প্যারামিটার:] Numbers #emph[inside] the model/recipe that the model itself adjusts automatically while learning --- e.g., exactly how much the word “free” should push a prediction toward “Spam.” Like a chef quietly fine-tuning #strong[“use 2 tsp salt, not 1”] after tasting the dish many times.

#bn[মডেল/রেসিপির ভেতরের সংখ্যা যা মডেল নিজে শেখার সময় স্বয়ংক্রিয়ভাবে সমন্বয় করে --- যেমন “free” শব্দটি ঠিক কতটা prediction-কে “Spam”-এর দিকে ঠেলে দেবে। যেমন একজন শেফ বারবার স্বাদ দেখে নিজে থেকেই ঠিক করেন “১ চামচ না, ২ চামচ লবণ লাগবে।”]

#strong[Weight --- ওয়েইট:] The most common type of parameter --- a single number showing how strongly one specific feature pushes the prediction toward one class. A #strong[high weight] on “contains ‘free'” means that feature strongly influences the “Spam” decision.

#bn[সবচেয়ে সাধারণ ধরনের প্যারামিটার --- একটি নির্দিষ্ট ফিচার প্রেডিকশনকে কোনো এক ক্লাসের দিকে কতটা জোরে ঠেলে দেয় তার একটি সংখ্যা। “free” শব্দের ওপর উচ্চ weight মানে এই ফিচারটি “Spam” সিদ্ধান্তে জোরালো প্রভাব ফেলে।]

#strong[Hyperparameter --- হাইপারপ্যারামিটার:] Settings that #strong[you] (the researcher) fix #emph[before] training even starts --- e.g., how many times to re-read the whole dataset, or how big a “step” the model takes while adjusting itself. This is the #strong[oven temperature and cooking time] --- you set these before cooking begins; the recipe's own ingredient amounts (the parameters) then get tuned within that setting. #strong[Parameter vs Hyperparameter, one line:] parameters are learned #emph[by] the model; hyperparameters are chosen #emph[for] the model, by you.

#bn[আপনি (গবেষক) ট্রেনিং শুরুর আগেই যা নির্ধারণ করেন --- যেমন সম্পূর্ণ ডেটাসেট কতবার পড়ানো হবে, বা মডেল প্রতিবার কতটা “পা” ফেলে নিজেকে সমন্বয় করবে। এটি হলো #strong[ওভেনের তাপমাত্রা ও রান্নার সময়] --- রান্না শুরুর আগেই আপনি এগুলো ঠিক করেন; রেসিপির নিজস্ব উপকরণের পরিমাণ (প্যারামিটার) তখন এই সেটিংয়ের মধ্যে থেকে সমন্বিত হয়। #strong[এক লাইনে পার্থক্য:] প্যারামিটার মডেল নিজে শেখে; হাইপারপ্যারামিটার আপনি মডেলের জন্য বেছে দেন।]

#strong[Epoch --- এপক:] One complete pass through the #emph[entire] training dataset --- reading all 1,000 emails once, cover to cover. Training usually needs many epochs (many full re-reads) before the model gets good.

#bn[সম্পূর্ণ ট্রেনিং ডেটাসেটের একবার সম্পূর্ণ পাস --- সবগুলো ১,০০০ ইমেইল একবার প্রথম থেকে শেষ পর্যন্ত পড়া। মডেল ভালো হওয়ার আগে সাধারণত অনেকগুলো epoch লাগে।]

#strong[Batch / Iteration --- ব্যাচ/ইটারেশন:] Data is often fed to the model in smaller chunks (“batches” --- e.g., 32 emails at a time) rather than all 1,000 at once. Processing one batch = one #emph[iteration]. Several iterations together make one full #emph[epoch]. Like reading the dataset #strong[one chapter at a time] instead of the whole book in one sitting.

#bn[ডেটা প্রায়ই ছোট ছোট অংশে (“batch” --- যেমন একবারে ৩২টি ইমেইল) মডেলে দেওয়া হয়, একসাথে সব ১,০০০টি নয়। একটি ব্যাচ প্রসেস করা = একটি #emph[iteration]। কয়েকটি iteration মিলে একটি সম্পূর্ণ #emph[epoch] হয়। যেমন পুরো বই একবারে না পড়ে #strong[একবারে এক অধ্যায় করে] পড়া।]

#strong[Loss Function --- লস ফাংশন:] A scorecard measuring exactly how wrong the model's current predictions are, on average. Like #strong[a judge scoring how bad today's dish tasted], so tomorrow's cooking (training step) can improve.

#bn[মডেলের বর্তমান প্রেডিকশন গড়ে ঠিক কতটা ভুল তা মাপার একটি স্কোরকার্ড। যেমন একজন বিচারক আজকের রান্নার স্বাদ কতটা খারাপ ছিল তা স্কোর করেন, যাতে আগামীকালের রান্না (ট্রেনিং ধাপ) উন্নত হয়।]

#strong[Gradient Descent --- গ্রেডিয়েন্ট ডিসেন্ট:] The step-by-step method the model uses to adjust its parameters in the direction that reduces the loss. Like #strong[walking downhill in thick fog], one small step at a time, always feeling for the direction that goes down.

#bn[লস কমানোর দিকে প্যারামিটার সমন্বয় করার ধাপে ধাপে পদ্ধতি। যেমন #strong[ঘন কুয়াশায় পাহাড় থেকে নামা] --- একবারে একটি ছোট পা, সবসময় নিচের দিকের পথ খুঁজে।]

#strong[Training vs Inference --- ট্রেনিং বনাম ইনফারেন্স:] #emph[Training] = the model is still learning, still adjusting its parameters. #emph[Inference] = the model is frozen and is now being used to predict on brand-new, real emails. Like the difference between #strong[practicing a recipe in the kitchen] (training) and #strong[actually serving it to a paying customer] (inference).

#bn[#emph[Training] = মডেল তখনও শিখছে, প্যারামিটার সমন্বয় করছে। #emph[Inference] = মডেল স্থির (frozen) এবং এখন নতুন, বাস্তব ইমেইলে প্রেডিকশন দিতে ব্যবহৃত হচ্ছে। যেমন রান্নাঘরে রেসিপি অনুশীলন করা (training) বনাম #strong[আসল কাস্টমারকে সেই খাবার পরিবেশন করা] (inference)।]

#quote(block: true)[
#strong[One-line summary / এক লাইনের সারাংশ:] A #strong[feature] is an input column, a #strong[label] is the answer column, a #strong[parameter] is a number the model tunes itself, a #strong[hyperparameter] is a setting you tune before training, an #strong[epoch] is one full read of the data, and #strong[training vs inference] is practicing vs performing. Everything else in this handbook builds on these ten words.

#bni[একটি #strong[feature] হলো ইনপুট কলাম, #strong[label] হলো উত্তরের কলাম, #strong[parameter] হলো মডেল নিজে সমন্বয় করা সংখ্যা, #strong[hyperparameter] হলো ট্রেনিংয়ের আগে আপনার ঠিক করা সেটিং, #strong[epoch] হলো ডেটার একবার সম্পূর্ণ পাঠ, এবং #strong[training vs inference] মানে অনুশীলন বনাম প্রকৃত ব্যবহার। এই হ্যান্ডবুকের বাকি সবকিছু এই দশটি শব্দের ওপর ভিত্তি করেই গড়ে উঠেছে।]
]

== AI vs ML vs Deep Learning
<ai-vs-ml-vs-deep-learning>
#bnsub(2)[এআই বনাম এমএল বনাম ডীপ লার্নিং]
#strong[Artificial Intelligence (AI)] is the broad field of building machines that perform tasks normally requiring human intelligence (reasoning, planning, perception, language). #strong[Machine Learning (ML)] is a subfield of AI where systems learn patterns from data instead of being hand-coded with rules. #strong[Deep Learning (DL)] is a subfield of ML that uses multi-layered artificial neural networks to automatically learn hierarchical feature representations directly from raw data (pixels, audio waveforms, raw text), rather than requiring hand-engineered features.

Think of it as nested circles: AI ⊃ ML ⊃ Deep Learning. Every deep learning system is machine learning; every machine learning system is AI; but not all AI is ML (e.g., a hand-coded chess rule engine is AI but not ML), and not all ML is deep learning (e.g., Linear Regression, Random Forest are ML but not “deep”).

#bn[আর্টিফিশিয়াল ইন্টেলিজেন্স (AI) হলো এমন একটি বিশাল ক্ষেত্র যেখানে মানুষের বুদ্ধিমত্তা প্রয়োজন হয় এমন কাজ (যুক্তি, পরিকল্পনা, উপলব্ধি, ভাষা) মেশিন দিয়ে করানোর চেষ্টা করা হয়। মেশিন লার্নিং (ML) হলো AI-এর একটি উপক্ষেত্র, যেখানে সিস্টেমকে হাতে-লেখা নিয়মের বদলে ডেটা থেকে প্যাটার্ন শিখতে দেওয়া হয়। ডীপ লার্নিং (DL) হলো ML-এর একটি উপক্ষেত্র, যা বহু-স্তরবিশিষ্ট নিউরাল নেটওয়ার্ক ব্যবহার করে কাঁচা ডেটা (পিক্সেল, অডিও, টেক্সট) থেকে সরাসরি জটিল ফিচার নিজে থেকে শিখে নেয় --- হাতে ফিচার ইঞ্জিনিয়ারিং করার দরকার পড়ে না।]

#bn[এটাকে তিনটি বৃত্তের মতো কল্পনা করুন যেখানে একটি আরেকটির ভেতরে: AI ⊃ ML ⊃ Deep Learning।]

#bn[প্রতিটি ডীপ লার্নিং সিস্টেমই ML, প্রতিটি ML-ই AI, কিন্তু সব AI-ই ML নয় (যেমন হাতে-লেখা দাবা খেলার rule-based ইঞ্জিন AI কিন্তু ML নয়), এবং সব ML-ই ডীপ লার্নিং নয় (যেমন Linear Regression, Random Forest --- এগুলো ML কিন্তু “deep” না)।]

#strong[Research-paper context / গবেষণাপত্র প্রাসঙ্গিকতা:] Papers should clearly state which category their method belongs to and justify why (e.g., “we use deep learning because the raw signal has spatially-correlated structure that benefits from convolutional feature learning” rather than using DL simply because it is trendy).

== What is Machine Learning? (Samuel vs.~Mitchell)
<what-is-machine-learning-samuel-vs.-mitchell>
Machine learning is the science of programming computers so they can learn from data rather than being explicitly written with hardcoded rules. Arthur Samuel (1959) #cite(<ref2>) described it as giving computers “the ability to learn without being explicitly programmed.” Tom Mitchell (1997) gave the standard engineering definition #cite(<ref1>): #emph[“A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E.”]

#strong[Example:] For a spam filter, Task #emph[T] = flag spam in new emails, Experience #emph[E] = labeled training emails, Performance #emph[P] = classification accuracy.

#strong[Research pitfall:] A common mistake is claiming a system “learns” without ever specifying a measurable #emph[P] or a proper validation split --- this makes the claim unfalsifiable and non-reproducible.

#bn[মেশিন লার্নিং হলো কম্পিউটারকে ডেটা থেকে নিজে নিজে শেখার উপযোগী করে গড়ে তোলার বিজ্ঞান, যেখানে সরাসরি নিয়ম কোড করে দেওয়া হয় না। আর্থার স্যামুয়েল (১৯৫৯) একে বলেছিলেন “সরাসরি প্রোগ্রাম না করে শেখার ক্ষমতা”। টম মিচেল (১৯৯৭) সংজ্ঞা দেন: একটি প্রোগ্রাম task #emph[T]-তে অভিজ্ঞতা #emph[E] থেকে শিখেছে বলা যাবে যদি performance measure #emph[P] অনুযায়ী তার পারফরম্যান্স #emph[E]-এর কারণে বৃদ্ধি পায়।]

#bn[উদাহরণ: স্প্যাম ফিল্টারে #emph[T] = নতুন ইমেইল স্প্যাম কিনা চেনা, #emph[E] = লেবেলযুক্ত ট্রেনিং ডেটা, #emph[P] = ক্লাসিফিকেশন অ্যাকুরেসি।]

#bn[গবেষণার ভুল: একটি সাধারণ ভুল হলো “মডেল শিখেছে” বলে দাবি করা অথচ কোনো measurable #emph[P] বা সঠিক validation split উল্লেখ না করা --- এতে দাবিটি যাচাই করা অসম্ভব হয়ে যায়।]

== Types of Machine Learning by Supervision
<types-of-machine-learning-by-supervision>
#bnsub(2)[সুপারভিশন অনুযায়ী ML-এর ধরন]
#figure(
  align(center)[#table(
    columns: (13.79%, 43.91%, 42.3%),
    align: (left,left,left,),
    table.header([Type], [English (short)], [বাংলা (সংক্ষেপে)],),
    table.hline(),
    [#strong[Supervised Learning]], [Training data includes labels/targets; model learns mapping X→Y. Like learning with a teacher.], [ট্রেনিং ডেটাতে লেবেল থাকে; মডেল ইনপুট থেকে আউটপুট ম্যাপিং শেখে। শিক্ষকের সাথে শেখার মতো।],
    [#strong[Unsupervised Learning]], [No labels; model finds hidden structure/clusters/patterns on its own.], [কোনো লেবেল নেই; মডেল নিজে নিজে গঠন বা ক্লাস্টার খুঁজে বের করে।],
    [#strong[Semi-supervised Learning]], [Small labeled set + large unlabeled set combined.], [অল্প লেবেলযুক্ত + অনেক লেবেলহীন ডেটা একসাথে ব্যবহার করা হয়।],
    [#strong[Self-supervised Learning]], [The data generates its own labels (e.g., predict a masked word/patch). Powers modern LLMs and vision pretraining.], [ডেটা নিজেই নিজের লেবেল তৈরি করে (যেমন মাস্ক করা শব্দ/অংশ প্রেডিক্ট করা)। আধুনিক LLM ও vision pretraining-এর ভিত্তি।],
    [#strong[Reinforcement Learning (RL)]], [An agent interacts with an environment, takes actions, gets rewards/penalties, learns a policy to maximize cumulative reward.], [এজেন্ট পরিবেশে কাজ করে, রিওয়ার্ড/পেনাল্টি পায়, এবং cumulative reward সর্বোচ্চ করার নীতি (policy) শেখে।],
  )]
  , kind: table
  )

#strong[Research pitfall / গবেষণার ভুল:] Papers must correctly justify #emph[why] a given paradigm fits the problem --- e.g., using supervised learning when true labels don't actually exist (proxy labels) is a common, under-reported source of bias.

#bn[গবেষণাপত্রে কেন একটি নির্দিষ্ট paradigm বেছে নেওয়া হলো তা যুক্তিসহ ব্যাখ্যা করা জরুরি --- যেমন আসল লেবেল ছাড়া proxy label দিয়ে supervised learning চালানো একটি প্রায়ই অগোপনীয় bias-এর উৎস।]

== Types of ML by Task
<types-of-ml-by-task>
#bnsub(2)[টাস্ক অনুযায়ী ML-এর ধরন]
=== Classification · ক্লাসিফিকেশন
<classification-কলসফকশন>
Predicts a discrete category/class label (e.g., spam vs.~not-spam, disease vs.~no-disease). Output is one of a finite set of classes.

#bn[একটি সীমিত সংখ্যক ক্যাটাগরির মধ্যে থেকে একটি discrete লেবেল প্রেডিক্ট করা (যেমন স্প্যাম/নন-স্প্যাম, রোগ/সুস্থ)।]

=== Regression · রিগ্রেশন
<regression-রগরশন>
Predicts a continuous numeric value (e.g., house price, temperature).

#bn[একটি ধারাবাহিক সংখ্যাসূচক মান প্রেডিক্ট করা (যেমন বাড়ির দাম, তাপমাত্রা)।]

=== Clustering · ক্লাস্টারিং
<clustering-কলসটর>
Unsupervised grouping of similar instances into clusters without predefined labels (e.g., k-Means, DBSCAN).

#bn[পূর্বনির্ধারিত লেবেল ছাড়াই একই রকম ডেটাকে দলে ভাগ করা (যেমন k-Means, DBSCAN)।]

=== Dimensionality Reduction · ডাইমেনশনালিটি রিডাকশন
<dimensionality-reduction-ডইমনশনলট-রডকশন>
Reducing the number of input features/variables while preserving as much useful information (variance/structure) as possible --- combats the #emph[curse of dimensionality] (e.g., PCA, t-SNE, UMAP, Autoencoders).

#bn[যতটা সম্ভব গুরুত্বপূর্ণ তথ্য রেখে ইনপুট ফিচারের সংখ্যা কমানো --- এটি #emph[curse of dimensionality] থেকে বাঁচায় (যেমন PCA, t-SNE, UMAP, Autoencoder)।]

=== Anomaly / Outlier Detection · অ্যানোমালি ডিটেকশন
<anomaly-outlier-detection-অযনমল-ডটকশন>
Identifying rare instances that deviate significantly from the majority pattern --- used in fraud detection, network intrusion detection, and manufacturing defect detection. Can be supervised (rare, requires labeled anomalies), semi-supervised (train only on “normal” data), or unsupervised (e.g., Isolation Forest, DBSCAN-based, autoencoder reconstruction error).

#bn[সংখ্যাগরিষ্ঠ প্যাটার্ন থেকে যেসব বিরল ডেটা অনেক আলাদা তা চিহ্নিত করা --- fraud detection, network intrusion detection, manufacturing defect detection-এ ব্যবহৃত হয়। এটি supervised, semi-supervised (শুধু “normal” ডেটায় ট্রেন করা), বা unsupervised (যেমন Isolation Forest, autoencoder reconstruction error) হতে পারে।]

=== Association Rule Mining · অ্যাসোসিয়েশন রুল মাইনিং
<association-rule-mining-অযসসযশন-রল-মইন>
Unsupervised discovery of frequent co-occurring relationships between items (e.g., “customers who buy bread also buy butter”) --- classic market-basket analysis (Apriori, FP-Growth).

#bn[কোন আইটেম একসাথে বারবার দেখা যায় তা খুঁজে বের করা (যেমন “যারা রুটি কেনে তারা মাখনও কেনে”) --- market-basket analysis-এর ক্লাসিক উদাহরণ।]

== Core Vocabulary
<core-vocabulary>
#bnsub(2)[মূল শব্দভাণ্ডার]
#figure(
  align(center)[#table(
    columns: (14.55%, 44.39%, 41.06%),
    align: (left,left,left,),
    table.header([Term], [English], [বাংলা],),
    table.hline(),
    [#strong[Dataset]], [The full collection of data instances used for a task.], [কোনো কাজের জন্য ব্যবহৃত ডেটার সম্পূর্ণ সংগ্রহ।],
    [#strong[Feature (Input variable)]], [A measurable property/column used as model input.], [মডেলের ইনপুট হিসেবে ব্যবহৃত পরিমাপযোগ্য property/কলাম।],
    [#strong[Label / Target]], [The “correct answer” the model tries to predict (supervised learning only).], [মডেল যা প্রেডিক্ট করার চেষ্টা করে সেই “সঠিক উত্তর” (শুধু supervised learning-এ)।],
    [#strong[Training data]], [Data used to fit/teach the model.], [মডেল শেখানোর জন্য ব্যবহৃত ডেটা।],
    [#strong[Validation data]], [Data used during development to tune hyperparameters/select models --- never used for final reporting.], [ডেভেলপমেন্টের সময় হাইপারপ্যারামিটার টিউন বা মডেল বাছাইয়ের জন্য ব্যবহৃত ডেটা --- চূড়ান্ত রিপোর্টিংয়ে ব্যবহার করা হয় না।],
    [#strong[Test data]], [Held-out data used only শ once\*, at the end, to estimate real-world (generalization) performance.], [ুধুমাত্র একবার\*, শেষে, বাস্তব-জগতের পারফরম্যান্স মাপার জন্য আলাদা রাখা ডেটা।],
    [#strong[Model]], [The mathematical function/structure that maps inputs to predictions.], [ইনপুট থেকে প্রেডিকশনে রূপান্তরকারী গাণিতিক ফাংশন/গঠন।],
    [#strong[Parameter]], [Internal values the model learns automatically during training (e.g., weights).], [ট্রেনিংয়ের সময় মডেল নিজে থেকে যা শেখে (যেমন ওয়েইট)।],
    [#strong[Hyperparameter]], [External settings chosen by the researcher #emph[before] training (e.g., learning rate, tree depth).], [ট্রেনিং শুরুর আগে গবেষক নিজে যা নির্ধারণ করেন (যেমন learning rate, tree depth)।],
    [#strong[Training]], [The process of adjusting parameters to minimize error on training data.], [ট্রেনিং ডেটায় error কমানোর জন্য প্যারামিটার সমন্বয় করার প্রক্রিয়া।],
    [#strong[Inference]], [Using a trained model to make predictions on new data.], [নতুন ডেটার ওপর ট্রেইনড মডেল দিয়ে প্রেডিকশন করা।],
    [#strong[Generalization]], [How well a model performs on unseen data, not just training data.], [ট্রেনিং ডেটার বাইরে নতুন ডেটাতে মডেল কতটা ভালো কাজ করে।],
  )]
  , kind: table
  )

== Overfitting, Underfitting & Bias-Variance
<overfitting-underfitting-bias-variance>
#bnsub(2)[ওভারফিটিং, আন্ডারফিটিং এবং বায়াস-ভ্যারিয়েন্স]
=== Overfitting · ওভারফিটিং
<overfitting-ওভরফট>
Occurs when a model performs excellently on training data but fails to generalize to new, unseen data --- it has “memorized” noise and quirks instead of the real underlying pattern. Example: a student who memorizes exact textbook answers but fails when questions are rephrased. #strong[Research pitfall:] If researchers tune hyperparameters directly on the test set, they are effectively overfitting the test set --- the reported generalization error becomes over-optimistic and invalid.

#bn[ওভারফিটিং তখন হয় যখন মডেল ট্রেনিং ডেটায় দুর্দান্ত করে কিন্তু নতুন ডেটায় ব্যর্থ হয় --- এটি আসল প্যাটার্নের বদলে ডেটার noise মুখস্থ করে ফেলে। উদাহরণ: যে ছাত্র বই থেকে হুবহু উত্তর মুখস্থ করেছে কিন্তু প্রশ্ন একটু ঘুরিয়ে দিলে পারে না। গবেষণার ভুল: যদি গবেষকরা সরাসরি টেস্ট সেটে হাইপারপ্যারামিটার টিউন করেন, তারা কার্যত টেস্ট সেটেই ওভারফিট করছেন --- এতে রিপোর্ট করা generalization error অতিরিক্ত-আশাবাদী ও অবৈধ হয়ে যায়।]

=== Underfitting · আন্ডারফিটিং
<underfitting-আনডরফট>
The opposite problem --- the model is too simple to capture the underlying structure of the data (e.g., fitting a straight line to strongly curved data). Both training and validation error stay high.

#bn[ঠিক উল্টো সমস্যা --- মডেল এতটাই সরল যে ডেটার আসল গঠন ধরতে পারে না (যেমন বাঁকা ডেটায় সরলরেখা ফিট করা)। ট্রেনিং ও ভ্যালিডেশন উভয় error-ই বেশি থাকে।]

=== Bias-Variance Tradeoff · বায়াস-ভ্যারিয়েন্স ট্রেডঅফ
<bias-variance-tradeoff-বযস-ভযরযনস-টরডঅফ>
Generalization error decomposes into #cite(<ref5>): #strong[Bias²] (error from overly simple assumptions → underfitting), #strong[Variance] (error from excess sensitivity to training-set fluctuations → overfitting), and #strong[Irreducible noise] (inherent randomness no model can remove).

#quote(block: true)[
$ upright("Generalization Error") = upright("Bias")^2 + upright("Variance") + upright("Irreducible Noise") $
]

Increasing model complexity typically lowers bias but raises variance --- you cannot minimize both simultaneously; you must find a balance (e.g., via regularization).

#bn[Generalization error তিনভাগে ভাগ করা যায়: #strong[Bias²] (অতিরিক্ত সরল অনুমানের কারণে ভুল → আন্ডারফিটিং), #strong[Variance] (ট্রেনিং ডেটার সামান্য পরিবর্তনে অতিরিক্ত সংবেদনশীলতা → ওভারফিটিং), এবং #strong[Irreducible noise] (যা কোনো মডেলই দূর করতে পারবে না)। মডেলের জটিলতা বাড়ালে bias কমে কিন্তু variance বাড়ে --- regularization-এর মাধ্যমে ভারসাম্য বজায় রাখতে হয়।]

== Generalization, No Free Lunch, and Data Pipelines
<generalization-no-free-lunch-and-data-pipelines>
=== Generalization Error · জেনারেলাইজেশন এরর
<generalization-error-জনরলইজশন-এরর>
How well the model performs on instances it has never seen, estimated strictly via a held-out test set. Data leakage (test information touching training) makes this estimate artificially --- and falsely --- low.

#bn[মডেল যেসব ডেটা আগে কখনো দেখেনি তাতে সে কেমন করবে তার পরিমাপ, যা কেবল আলাদা রাখা টেস্ট সেট দিয়ে মাপা হয়। Data leakage হলে এই পরিমাপ কৃত্রিমভাবে ভালো দেখায় --- যা মিথ্যা।]

=== No Free Lunch Theorem · নো ফ্রি লাঞ্চ থিওরেম
<no-free-lunch-theorem-ন-ফর-লঞচ-থওরম>
David Wolpert proved that, without assumptions about the data, no single algorithm is guaranteed best on every dataset. #cite(<ref9>) Researchers must therefore test multiple model families and never claim universal superiority without stating the exact conditions.

#bn[ডেভিড ওলপার্ট প্রমাণ করেন যে ডেটা সম্পর্কে কোনো পূর্বানুমান ছাড়া কোনো একক অ্যালগরিদম সব ডেটাসেটে সেরা হবে এমন গ্যারান্টি নেই। তাই গবেষকদের একাধিক মডেল টেস্ট করতে হয় এবং শর্ত ছাড়া “সার্বজনীন সেরা” দাবি করা যাবে না।]

=== Data Pipeline · ডেটা পাইপলাইন
<data-pipeline-ডট-পইপলইন>
A sequence of processing steps (cleaning → scaling → encoding → feature construction) that turns raw data into model-ready input. #strong[Critical rule:] any pipeline step that “learns” from data (e.g., a `StandardScaler` computing mean/std, or an imputer computing medians) must be `fit()` only on the training set, then only `transform()`-ed on validation/test --- fitting on the full dataset before splitting is data leakage.

#bn[কাঁচা ডেটাকে মডেলের উপযোগী করার ধাপগুলোর ধারাবাহিকতা (cleaning → scaling → encoding → feature তৈরি)। গুরুত্বপূর্ণ নিয়ম: যেসব ধাপ ডেটা থেকে কিছু “শেখে” (যেমন StandardScaler গড়/স্ট্যান্ডার্ড ডেভিয়েশন গণনা করে) সেগুলো শুধু ট্রেনিং সেটে `fit()` করতে হবে, এবং ভ্যালিডেশন/টেস্টে শুধু `transform()` করতে হবে --- পুরো ডেটাসেটে fit করা হলো data leakage।]

#recap[
- #strong[Feature] = an input column, #strong[Label] = the answer column, #strong[Parameter] = a number the model learns, #strong[Hyperparameter] = a number #emph[you] set before training.

  #bni[Feature = ইনপুট কলাম, Label = উত্তরের কলাম, Parameter = মডেলের শেখা সংখ্যা, Hyperparameter = ট্রেনিংয়ের আগে আপনার ঠিক করা সংখ্যা।]

- #strong[Overfitting] = memorizing noise; #strong[Underfitting] = model too simple; the #strong[Bias-Variance tradeoff] balances the two.

  Overfitting = noise মুখস্থ করা; Underfitting = অতিরিক্ত সরল মডেল; Bias-Variance tradeoff দুটোর ভারসাম্য রাখে।

- Five learning paradigms exist (Supervised, Unsupervised, Semi-, Self-, Reinforcement) --- always justify #emph[why] your problem fits one of them.

  #bni[পাঁচটি learning paradigm আছে --- কেন আপনার সমস্যা একটির সাথে মেলে তা সবসময় যুক্তিসহ বলুন।]

]
