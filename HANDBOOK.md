# THE MACHINE LEARNING + RESEARCH PAPER READING + CRITICAL ANALYSIS + RESEARCH GAP IDENTIFICATION HANDBOOK

# মেশিন লার্নিং + গবেষণাপত্র পাঠ + সমালোচনামূলক বিশ্লেষণ + রিসার্চ গ্যাপ আইডেন্টিফিকেশন হ্যান্ডবুক

A Bilingual (English + বাংলা) Guide · Beginner → Intermediate → Research Level

**Version 4.0** · 34 Sections · 61 Academic References · LaTeX-Typeset Throughout

------------------------------------------------------------------------

|               |                                                                                              |
|---------------|----------------------------------------------------------------------------------------------|
| **Author**    | *MD Khalid Hasan*                                                                              |
| **Version**   | 4.0                                                                                          |
| **License**   | Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International (CC BY-NC-ND 4.0) |
| **Copyright** | © 2026 *MD Khalid Hasan*. All rights reserved.                                                 |

You are free to **share** this handbook (copy and redistribute it in any medium) provided you give appropriate credit. You may **not** use it commercially, and you may **not** distribute modified versions. Full licence terms: https://creativecommons.org/licenses/by-nc-nd/4.0/

আপনি যথাযথ কৃতিত্ব দিয়ে এই হ্যান্ডবুক শেয়ার করতে পারবেন। তবে বাণিজ্যিকভাবে ব্যবহার করা বা পরিবর্তিত সংস্করণ বিতরণ করা যাবে না।

------------------------------------------------------------------------

## About This Handbook / এই হ্যান্ডবুক সম্পর্কে

**English:** This is a study and reference handbook for students and early-career researchers who want to move from *understanding machine learning* to *critically evaluating machine learning research*. It progresses from foundational vocabulary through algorithms and evaluation, into experimental design, paper reading, critical analysis, research-gap identification, and academic publishing. Every concept is presented in both English and Bangla, because the goal is comprehension, not translation.

**বাংলা:** এটি সেইসব শিক্ষার্থী ও নবীন গবেষকদের জন্য একটি অধ্যয়ন ও রেফারেন্স হ্যান্ডবুক, যারা মেশিন লার্নিং বোঝা থেকে মেশিন লার্নিং গবেষণাকে সমালোচনামূলকভাবে মূল্যায়ন করা পর্যন্ত এগোতে চান। এটি মৌলিক শব্দভাণ্ডার থেকে শুরু করে অ্যালগরিদম, মূল্যায়ন, এক্সপেরিমেন্টাল ডিজাইন, পেপার পড়া, সমালোচনামূলক বিশ্লেষণ, রিসার্চ গ্যাপ শনাক্তকরণ ও একাডেমিক প্রকাশনা পর্যন্ত বিস্তৃত। প্রতিটি ধারণা ইংরেজি ও বাংলা — উভয় ভাষাতেই ব্যাখ্যা করা হয়েছে, কারণ লক্ষ্য অনুবাদ নয়, বোঝা।

**After studying this handbook you should be able to** take an unfamiliar AI/ML research paper, systematically understand it, critically evaluate it, identify its limitations, determine whether a genuine research gap exists, and develop defensible research questions from that gap.

## A Note on Sources & Academic Integrity / সূত্র ও একাডেমিক সততা সম্পর্কে

> All **61 references** in Section 34 are real, verifiable published works. Specific factual claims drawn from them carry a reference tag (e.g. `[@ref13]`) at the point of use. Concepts that are standard textbook material are not individually cited, following normal academic practice.
>
> This handbook explains every concept **in its own words**. It does not reproduce text, figures, tables, or worked examples from any copyrighted textbook. Readers wanting a full treatment of any topic should consult the primary sources listed in Section 34 directly.
>
> No citations, statistics, or research findings have been fabricated anywhere in this document. Where a claim could not be supported by a verifiable source, the handbook says so explicitly rather than guessing.
>
> Section 34-এর ৬১টি তথ্যসূত্রই বাস্তব ও যাচাইযোগ্য প্রকাশিত কাজ। এই হ্যান্ডবুক প্রতিটি ধারণা নিজের ভাষায় ব্যাখ্যা করে এবং কোনো কপিরাইটযুক্ত পাঠ্যপুস্তকের লেখা, চিত্র বা উদাহরণ পুনরুৎপাদন করে না। কোথাও কোনো citation, পরিসংখ্যান বা গবেষণা-ফলাফল বানানো হয়নি।

## How to Use This Handbook / কীভাবে ব্যবহার করবেন

| If you want to…                            | Read these sections                                                        |
|--------------------------------------------|----------------------------------------------------------------------------|
| Learn ML from the beginning                | 1 → 6 (start with 1.1 if terms like *feature* or *hyperparameter* are new) |
| Understand a specific algorithm            | 4, then 28 for worked numbers                                              |
| Interpret a results table correctly        | 5, 28                                                                      |
| Judge whether an experiment is trustworthy | 6, 16, 17                                                                  |
| See the frameworks applied to a real paper | 26                                                                         |
| Read a paper efficiently                   | 8, 9, 10, 33                                                               |
| Find and verify a research gap             | 11 → 15, 25                                                                |
| Turn a gap into a research question        | 19, 20, 21                                                                 |
| Prepare your own paper for submission      | 7, 22, 23, 30, 31                                                          |

## সূচিপত্র / TABLE OF CONTENTS

1.  Machine Learning Foundations
2.  Complete ML Project Pipeline
3.  Dataset Analysis & Data Quality
4.  Core ML & Deep Learning Algorithms
5.  Model Evaluation
6.  Experimental Design
7.  Structure of an Academic ML Paper
8.  How to Read a Research Paper (Three-Pass Method)
9.  Abstract Analysis Template
10. Introduction Logical Flow
11. Literature Review Comparative Matrix
12. 16 Types of Research Gaps
13. 14-Step Research Gap Detection Framework
14. Gap vs Limitation vs Weakness vs Future Work vs Novelty
15. How to Verify a Research Gap
16. Critical Paper Analysis Framework (14 Dimensions)
17. 16 Research Paper Red Flags
18. Academic Paper Note-Taking Template
19. From Research Gap to Research Topic (Worked Examples)
20. Formulating Research Questions (SMART)
21. Novelty Analysis (12 Types)
22. Reproducibility (10 Pillars)
23. Critical Thinking Master Checklist
24. One-Page Paper Summary Template
25. Research Gap Verification Checklist
26. End-to-End Case Study: Applying the Frameworks to a Real Paper
27. Core Formulas & Research Mathematics
28. Worked Numerical Examples
29. Modern & Advanced ML Concepts
30. Fairness, Ethics & Responsible Research
31. The Academic Publishing Process
32. Glossary of Key Terms
33. Final Cheat Sheet — How to Read Any ML Research Paper
34. References & Further Reading

# 1. MACHINE LEARNING FOUNDATIONS / মেশিন লার্নিং ফাউন্ডেশনস

## 1.1 Foundational Concepts in Plain Language (Beginner Bridge) / সহজ ভাষায় মৌলিক ধারণা

### Why this section exists / এই অংশটি কেন আছে

**English:** Words like *feature*, *parameter*, *hyperparameter*, and *epoch* get thrown around constantly in ML writing, but they’re rarely explained in truly plain language before the formal definitions begin. This section is a short “bridge” — read it once, and the rest of this handbook (and any ML paper you read afterward) becomes much easier to follow. Every term below is explained through **one running example**: teaching a computer to detect spam emails.

**বাংলা:** *Feature*, *parameter*, *hyperparameter*, *epoch* — এই শব্দগুলো ML লেখায় বারবার আসে, কিন্তু আনুষ্ঠানিক সংজ্ঞা দেওয়ার আগে সহজ ভাষায় এগুলো কমই ব্যাখ্যা করা হয়। এই অংশটি একটি ছোট “সেতু” — একবার পড়ে নিলে এই হ্যান্ডবুকের বাকি অংশ এবং পরে যেকোনো ML পেপার পড়া অনেক সহজ হয়ে যাবে। নিচের প্রতিটি টার্ম একটি একক চলমান উদাহরণ দিয়ে ব্যাখ্যা করা হয়েছে: একটি কম্পিউটারকে স্প্যাম ইমেইল চেনানো শেখানো।

The running example / চলমান উদাহরণ: Imagine we have 1,000 old emails. A human has already gone through each one and marked it “Spam” or “Not Spam.” We want to teach a computer to make this same decision automatically on brand-new emails it has never seen. Keep this picture in your head as you read each term below. কল্পনা করুন আমাদের কাছে ১,০০০টি পুরনো ইমেইল আছে। একজন মানুষ প্রতিটি ইমেইল দেখে আগেই “Spam” বা “Not Spam” চিহ্নিত করে রেখেছেন। আমরা চাই কম্পিউটার নিজে থেকেই নতুন, আগে-না-দেখা ইমেইলের ক্ষেত্রে একই সিদ্ধান্ত নিতে শিখুক। নিচের প্রতিটি টার্ম পড়ার সময় এই ছবিটি মাথায় রাখুন।

### The term-by-term bridge / টার্ম-বাই-টার্ম সেতু

Sample / Instance / Row — নমুনা: One single data point — here, **one single email**. Like one row in a spreadsheet. একটি একক ডেটা পয়েন্ট — এখানে একটি মাত্র ইমেইল। যেমন একটি স্প্রেডশিটের একটি row।

Feature — ফিচার: A measurable property of a sample, used as input to the model — e.g., “number of exclamation marks in the email,” “does it contain the word ‘free’?”, “sender’s domain name.” Think of a feature as **one column in the spreadsheet** — every email (row) gets a value for that column. নমুনার একটি পরিমাপযোগ্য বৈশিষ্ট্য যা মডেলের ইনপুট হিসেবে ব্যবহৃত হয় — যেমন “ইমেইলে কতগুলো বিস্ময়সূচক চিহ্ন (!) আছে,” “‘free’ শব্দটি আছে কিনা,” “প্রেরকের ডোমেইন নাম।” ফিচারকে ভাবুন স্প্রেডশিটের একটি কলাম হিসেবে — প্রতিটি ইমেইল (row) সেই কলামের একটি মান পায়।

Label / Target — লেবেল/টার্গেট: The correct answer attached to a sample — here, “Spam” or “Not Spam.” This is **the last column**, already filled in by a human (only exists in supervised learning — see Section 1.4). নমুনার সাথে যুক্ত সঠিক উত্তর — এখানে “Spam” বা “Not Spam”। এটি স্প্রেডশিটের সবার শেষ কলাম, যা মানুষ আগেই পূরণ করে রেখেছেন (শুধু supervised learning-এ থাকে — Section 1.4 দেখুন)।

Feature Vector — ফিচার ভেক্টর: All of one sample’s feature values written together as an ordered list of numbers, e.g., `[3, 1, 0, 27]` (3 exclamation marks, contains “free” = 1, not from a known domain = 0, 27 words long). This is simply **one full row of numbers**, minus the label. একটি নমুনার সব ফিচার-মান একসাথে সাজানো সংখ্যার তালিকা, যেমন `[3, 1, 0, 27]`। এটি লেবেল বাদে একটি সম্পূর্ণ row-এর সংখ্যা।

Dataset — ডেটাসেট: The entire collection of samples — here, **all 1,000 emails together**. The whole spreadsheet. সব নমুনার সম্পূর্ণ সংগ্রহ — এখানে সবগুলো ১,০০০ ইমেইল একসাথে। সম্পূর্ণ স্প্রেডশিটটি।

Model — মডেল: The mathematical “recipe” that takes a feature vector as input and produces a prediction as output. Think of it as **a recipe**: put in ingredients (features), get out a dish (a prediction: “Spam” or “Not Spam”). ফিচার ভেক্টরকে ইনপুট হিসেবে নিয়ে প্রেডিকশন আউটপুট দেয় এমন একটি গাণিতিক “রেসিপি”। এটাকে ভাবুন একটি রেসিপি হিসেবে: উপকরণ (ফিচার) দিলে একটি পদ (প্রেডিকশন: “Spam” বা “Not Spam”) বের হয়।

Parameter — প্যারামিটার: Numbers *inside* the model/recipe that the model itself adjusts automatically while learning — e.g., exactly how much the word “free” should push a prediction toward “Spam.” Like a chef quietly fine-tuning **“use 2 tsp salt, not 1”** after tasting the dish many times. মডেল/রেসিপির ভেতরের সংখ্যা যা মডেল নিজে শেখার সময় স্বয়ংক্রিয়ভাবে সমন্বয় করে — যেমন “free” শব্দটি ঠিক কতটা predicit-কে “Spam”-এর দিকে ঠেলে দেবে। যেমন একজন শেফ বারবার স্বাদ দেখে নিজে থেকেই ঠিক করেন “১ চামচ না, ২ চামচ লবণ লাগবে।”

Weight — ওয়েইট: The most common type of parameter — a single number showing how strongly one specific feature pushes the prediction toward one class. A **high weight** on “contains ‘free’” means that feature strongly influences the “Spam” decision. সবচেয়ে সাধারণ ধরনের প্যারামিটার — একটি নির্দিষ্ট ফিচার প্রেডিকশনকে কোনো এক ক্লাসের দিকে কতটা জোরে ঠেলে দেয় তার একটি সংখ্যা। “free” শব্দের ওপর উচ্চ weight মানে এই ফিচারটি “Spam” সিদ্ধান্তে জোরালো প্রভাব ফেলে।

Hyperparameter — হাইপারপ্যারামিটার: Settings that **you** (the researcher) fix *before* training even starts — e.g., how many times to re-read the whole dataset, or how big a “step” the model takes while adjusting itself. This is the **oven temperature and cooking time** — you set these before cooking begins; the recipe’s own ingredient amounts (the parameters) then get tuned within that setting. **Parameter vs Hyperparameter, one line:** parameters are learned *by* the model; hyperparameters are chosen *for* the model, by you. আপনি (গবেষক) ট্রেনিং শুরুর আগেই যা নির্ধারণ করেন — যেমন সম্পূর্ণ ডেটাসেট কতবার পড়ানো হবে, বা মডেল প্রতিবার কতটা “পা” ফেলে নিজেকে সমন্বয় করবে। এটি হলো **ওভেনের তাপমাত্রা ও রান্নার সময়** — রান্না শুরুর আগেই আপনি এগুলো ঠিক করেন; রেসিপির নিজস্ব উপকরণের পরিমাণ (প্যারামিটার) তখন এই সেটিংয়ের মধ্যে থেকে সমন্বিত হয়। **এক লাইনে পার্থক্য:** প্যারামিটার মডেল নিজে শেখে; হাইপারপ্যারামিটার আপনি মডেলের জন্য বেছে দেন।

Epoch — এপক: One complete pass through the *entire* training dataset — reading all 1,000 emails once, cover to cover. Training usually needs many epochs (many full re-reads) before the model gets good. সম্পূর্ণ ট্রেনিং ডেটাসেটের একবার সম্পূর্ণ পাস — সবগুলো ১,০০০ ইমেইল একবার প্রথম থেকে শেষ পর্যন্ত পড়া। মডেল ভালো হওয়ার আগে সাধারণত অনেকগুলো epoch লাগে।

Batch / Iteration — ব্যাচ/ইটারেশন: Data is often fed to the model in smaller chunks (“batches” — e.g., 32 emails at a time) rather than all 1,000 at once. Processing one batch = one *iteration*. Several iterations together make one full *epoch*. Like reading the dataset **one chapter at a time** instead of the whole book in one sitting. ডেটা প্রায়ই ছোট ছোট অংশে (“batch” — যেমন একবারে ৩২টি ইমেইল) মডেলে দেওয়া হয়, একসাথে সব ১,০০০টি নয়। একটি ব্যাচ প্রসেস করা = একটি *iteration*। কয়েকটি iteration মিলে একটি সম্পূর্ণ *epoch* হয়। যেমন পুরো বই একবারে না পড়ে **একবারে এক অধ্যায় করে** পড়া।

Loss Function — লস ফাংশন: A scorecard measuring exactly how wrong the model’s current predictions are, on average. Like **a judge scoring how bad today’s dish tasted**, so tomorrow’s cooking (training step) can improve. মডেলের বর্তমান প্রেডিকশন গড়ে ঠিক কতটা ভুল তা মাপার একটি স্কোরকার্ড। যেমন একজন বিচারক আজকের রান্নার স্বাদ কতটা খারাপ ছিল তা স্কোর করেন, যাতে আগামীকালের রান্না (ট্রেনিং ধাপ) উন্নত হয়।

Gradient Descent — গ্রেডিয়েন্ট ডিসেন্ট: The step-by-step method the model uses to adjust its parameters in the direction that reduces the loss. Like **walking downhill in thick fog**, one small step at a time, always feeling for the direction that goes down. লস কমানোর দিকে প্যারামিটার সমন্বয় করার ধাপে ধাপে পদ্ধতি। যেমন **ঘন কুয়াশায় পাহাড় থেকে নামা** — একবারে একটি ছোট পা, সবসময় নিচের দিকের পথ খুঁজে।

Training vs Inference — ট্রেনিং বনাম ইনফারেন্স: *Training* = the model is still learning, still adjusting its parameters. *Inference* = the model is frozen and is now being used to predict on brand-new, real emails. Like the difference between **practicing a recipe in the kitchen** (training) and **actually serving it to a paying customer** (inference). *Training* = মডেল তখনও শিখছে, প্যারামিটার সমন্বয় করছে। *Inference* = মডেল স্থির (frozen) এবং এখন নতুন, বাস্তব ইমেইলে প্রেডিকশন দিতে ব্যবহৃত হচ্ছে। যেমন রান্নাঘরে রেসিপি অনুশীলন করা (training) বনাম **আসল কাস্টমারকে সেই খাবার পরিবেশন করা** (inference)।

> 🎯 One-line summary / এক লাইনের সারাংশ: A **feature** is an input column, a **label** is the answer column, a **parameter** is a number the model tunes itself, a **hyperparameter** is a setting you tune before training, an **epoch** is one full read of the data, and **training vs inference** is practicing vs performing. Everything else in this handbook builds on these ten words. একটি **feature** হলো ইনপুট কলাম, **label** হলো উত্তরের কলাম, **parameter** হলো মডেল নিজে সমন্বয় করা সংখ্যা, **hyperparameter** হলো ট্রেনিংয়ের আগে আপনার ঠিক করা সেটিং, **epoch** হলো ডেটার একবার সম্পূর্ণ পাঠ, এবং **training vs inference** মানে অনুশীলন বনাম প্রকৃত ব্যবহার। এই হ্যান্ডবুকের বাকি সবকিছু এই দশটি শব্দের ওপর ভিত্তি করেই গড়ে উঠেছে।

## 1.2 AI vs ML vs Deep Learning / এআই বনাম এমএল বনাম ডীপ লার্নিং

### English

**Artificial Intelligence (AI)** is the broad field of building machines that perform tasks normally requiring human intelligence (reasoning, planning, perception, language). **Machine Learning (ML)** is a subfield of AI where systems learn patterns from data instead of being hand-coded with rules. **Deep Learning (DL)** is a subfield of ML that uses multi-layered artificial neural networks to automatically learn hierarchical feature representations directly from raw data (pixels, audio waveforms, raw text), rather than requiring hand-engineered features.

Think of it as nested circles: AI ⊃ ML ⊃ Deep Learning. Every deep learning system is machine learning; every machine learning system is AI; but not all AI is ML (e.g., a hand-coded chess rule engine is AI but not ML), and not all ML is deep learning (e.g., Linear Regression, Random Forest are ML but not “deep”).

### বাংলা

আর্টিফিশিয়াল ইন্টেলিজেন্স (AI) হলো এমন একটি বিশাল ক্ষেত্র যেখানে মানুষের বুদ্ধিমত্তা প্রয়োজন হয় এমন কাজ (যুক্তি, পরিকল্পনা, উপলব্ধি, ভাষা) মেশিন দিয়ে করানোর চেষ্টা করা হয়। মেশিন লার্নিং (ML) হলো AI-এর একটি উপক্ষেত্র, যেখানে সিস্টেমকে হাতে-লেখা নিয়মের বদলে ডেটা থেকে প্যাটার্ন শিখতে দেওয়া হয়। ডীপ লার্নিং (DL) হলো ML-এর একটি উপক্ষেত্র, যা বহু-স্তরবিশিষ্ট নিউরাল নেটওয়ার্ক ব্যবহার করে কাঁচা ডেটা (পিক্সেল, অডিও, টেক্সট) থেকে সরাসরি জটিল ফিচার নিজে থেকে শিখে নেয় — হাতে ফিচার ইঞ্জিনিয়ারিং করার দরকার পড়ে না।

এটাকে তিনটি বৃত্তের মতো কল্পনা করুন যেখানে একটি আরেকটির ভেতরে: AI ⊃ ML ⊃ Deep Learning। প্রতিটি ডীপ লার্নিং সিস্টেমই ML, প্রতিটি ML-ই AI, কিন্তু সব AI-ই ML নয় (যেমন হাতে-লেখা দাবা খেলার rule-based ইঞ্জিন AI কিন্তু ML নয়), এবং সব ML-ই ডীপ লার্নিং নয় (যেমন Linear Regression, Random Forest — এগুলো ML কিন্তু “deep” না)।

Research-paper context / গবেষণাপত্র প্রাসঙ্গিকতা: Papers should clearly state which category their method belongs to and justify why (e.g., “we use deep learning because the raw signal has spatially-correlated structure that benefits from convolutional feature learning” rather than using DL simply because it is trendy).

## 1.3 What is Machine Learning? (Samuel vs. Mitchell)

### English

Machine learning is the science of programming computers so they can learn from data rather than being explicitly written with hardcoded rules. Arthur Samuel (1959) \[1\] described it as giving computers “the ability to learn without being explicitly programmed.” Tom Mitchell (1997) gave the standard engineering definition \[2\]: *“A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E.”*

**Example:** For a spam filter, Task *T* = flag spam in new emails, Experience *E* = labeled training emails, Performance *P* = classification accuracy.

**Research pitfall:** A common mistake is claiming a system “learns” without ever specifying a measurable *P* or a proper validation split — this makes the claim unfalsifiable and non-reproducible.

### বাংলা

মেশিন লার্নিং হলো কম্পিউটারকে ডেটা থেকে নিজে নিজে শেখার উপযোগী করে গড়ে তোলার বিজ্ঞান, যেখানে সরাসরি নিয়ম কোড করে দেওয়া হয় না। আর্থার স্যামুয়েল (১৯৫৯) একে বলেছিলেন “সরাসরি প্রোগ্রাম না করে শেখার ক্ষমতা”। টম মিচেল (১৯৯৭) সংজ্ঞা দেন: একটি প্রোগ্রাম task *T*-তে অভিজ্ঞতা *E* থেকে শিখেছে বলা যাবে যদি performance measure *P* অনুযায়ী তার পারফরম্যান্স *E*-এর কারণে বৃদ্ধি পায়।

উদাহরণ: স্প্যাম ফিল্টারে *T* = নতুন ইমেইল স্প্যাম কিনা চেনা, *E* = লেবেলযুক্ত ট্রেনিং ডেটা, *P* = ক্লাসিফিকেশন অ্যাকুরেসি।

গবেষণার ভুল: একটি সাধারণ ভুল হলো “মডেল শিখেছে” বলে দাবি করা অথচ কোনো measurable *P* বা সঠিক validation split উল্লেখ না করা — এতে দাবিটি যাচাই করা অসম্ভব হয়ে যায়।

## 1.4 Types of Machine Learning by Supervision / সুপারভিশন অনুযায়ী ML-এর ধরন

| Type                            | English (short)                                                                                                               | বাংলা (সংক্ষেপে)                                                                                               |
|:--------------------------------|:------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------|
| **Supervised Learning**         | Training data includes labels/targets; model learns mapping X→Y. Like learning with a teacher.                                | ট্রেনিং ডেটাতে লেবেল থাকে; মডেল ইনপুট থেকে আউটপুট ম্যাপিং শেখে। শিক্ষকের সাথে শেখার মতো।                           |
| **Unsupervised Learning**       | No labels; model finds hidden structure/clusters/patterns on its own.                                                         | কোনো লেবেল নেই; মডেল নিজে নিজে গঠন বা ক্লাস্টার খুঁজে বের করে।                                                    |
| **Semi-supervised Learning**    | Small labeled set + large unlabeled set combined.                                                                             | অল্প লেবেলযুক্ত + অনেক লেবেলহীন ডেটা একসাথে ব্যবহার করা হয়।                                                       |
| **Self-supervised Learning**    | The data generates its own labels (e.g., predict a masked word/patch). Powers modern LLMs and vision pretraining.             | ডেটা নিজেই নিজের লেবেল তৈরি করে (যেমন মাস্ক করা শব্দ/অংশ প্রেডিক্ট করা)। আধুনিক LLM ও vision pretraining-এর ভিত্তি। |
| **Reinforcement Learning (RL)** | An agent interacts with an environment, takes actions, gets rewards/penalties, learns a policy to maximize cumulative reward. | এজেন্ট পরিবেশে কাজ করে, রিওয়ার্ড/পেনাল্টি পায়, এবং cumulative reward সর্বোচ্চ করার নীতি (policy) শেখে।             |

Research pitfall / গবেষণার ভুল: Papers must correctly justify *why* a given paradigm fits the problem — e.g., using supervised learning when true labels don’t actually exist (proxy labels) is a common, under-reported source of bias. গবেষণাপত্রে কেন একটি নির্দিষ্ট paradigm বেছে নেওয়া হলো তা যুক্তিসহ ব্যাখ্যা করা জরুরি — যেমন আসল লেবেল ছাড়া proxy label দিয়ে supervised learning চালানো একটি প্রায়ই অগোপনীয় bias-এর উৎস।

## 1.5 Types of ML by Task / টাস্ক অনুযায়ী ML-এর ধরন

### Classification / ক্লাসিফিকেশন

**English:** Predicts a discrete category/class label (e.g., spam vs. not-spam, disease vs. no-disease). Output is one of a finite set of classes. বাংলা: একটি সীমিত সংখ্যক ক্যাটাগরির মধ্যে থেকে একটি discrete লেবেল প্রেডিক্ট করা (যেমন স্প্যাম/নন-স্প্যাম, রোগ/সুস্থ)।

### Regression / রিগ্রেশন

**English:** Predicts a continuous numeric value (e.g., house price, temperature). বাংলা: একটি ধারাবাহিক সংখ্যাসূচক মান প্রেডিক্ট করা (যেমন বাড়ির দাম, তাপমাত্রা)।

### Clustering / ক্লাস্টারিং

**English:** Unsupervised grouping of similar instances into clusters without predefined labels (e.g., k-Means, DBSCAN). বাংলা: পূর্বনির্ধারিত লেবেল ছাড়াই একই রকম ডেটাকে দলে ভাগ করা (যেমন k-Means, DBSCAN)।

### Dimensionality Reduction / ডাইমেনশনালিটি রিডাকশন

**English:** Reducing the number of input features/variables while preserving as much useful information (variance/structure) as possible — combats the *curse of dimensionality* (e.g., PCA, t-SNE, UMAP, Autoencoders). বাংলা: যতটা সম্ভব গুরুত্বপূর্ণ তথ্য রেখে ইনপুট ফিচারের সংখ্যা কমানো — এটি *curse of dimensionality* থেকে বাঁচায় (যেমন PCA, t-SNE, UMAP, Autoencoder)।

### Anomaly / Outlier Detection / অ্যানোমালি ডিটেকশন

**English:** Identifying rare instances that deviate significantly from the majority pattern — used in fraud detection, network intrusion detection, and manufacturing defect detection. Can be supervised (rare, requires labeled anomalies), semi-supervised (train only on “normal” data), or unsupervised (e.g., Isolation Forest, DBSCAN-based, autoencoder reconstruction error). বাংলা: সংখ্যাগরিষ্ঠ প্যাটার্ন থেকে যেসব বিরল ডেটা অনেক আলাদা তা চিহ্নিত করা — fraud detection, network intrusion detection, manufacturing defect detection-এ ব্যবহৃত হয়। এটি supervised, semi-supervised (শুধু “normal” ডেটায় ট্রেন করা), বা unsupervised (যেমন Isolation Forest, autoencoder reconstruction error) হতে পারে।

### Association Rule Mining / অ্যাসোসিয়েশন রুল মাইনিং

**English:** Unsupervised discovery of frequent co-occurring relationships between items (e.g., “customers who buy bread also buy butter”) — classic market-basket analysis (Apriori, FP-Growth). **বাংলা:** কোন আইটেম একসাথে বারবার দেখা যায় তা খুঁজে বের করা (যেমন “যারা রুটি কেনে তারা মাখনও কেনে”) — market-basket analysis-এর ক্লাসিক উদাহরণ।

## 1.6 Core Vocabulary / মূল শব্দভাণ্ডার

| Term                         | English                                                                                              | বাংলা                                                                                                       |
|:-----------------------------|:-----------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------|
| **Dataset**                  | The full collection of data instances used for a task.                                               | কোনো কাজের জন্য ব্যবহৃত ডেটার সম্পূর্ণ সংগ্রহ।                                                                     |
| **Feature (Input variable)** | A measurable property/column used as model input.                                                    | মডেলের ইনপুট হিসেবে ব্যবহৃত পরিমাপযোগ্য property/কলাম।                                                          |
| **Label / Target**           | The “correct answer” the model tries to predict (supervised learning only).                          | মডেল যা প্রেডিক্ট করার চেষ্টা করে সেই “সঠিক উত্তর” (শুধু supervised learning-এ)।                                  |
| **Training data**            | Data used to fit/teach the model.                                                                    | মডেল শেখানোর জন্য ব্যবহৃত ডেটা।                                                                                |
| **Validation data**          | Data used during development to tune hyperparameters/select models — never used for final reporting. | ডেভেলপমেন্টের সময় হাইপারপ্যারামিটার টিউন বা মডেল বাছাইয়ের জন্য ব্যবহৃত ডেটা — চূড়ান্ত রিপোর্টিংয়ে ব্যবহার করা হয় না। |
| **Test data**                | Held-out data used only শ once\*, at the end, to estimate real-world (generalization) performance.   | ুধুমাত্র একবার\*, শেষে, বাস্তব-জগতের পারফরম্যান্স মাপার জন্য আলাদা রাখা ডেটা।                                      |
| **Model**                    | The mathematical function/structure that maps inputs to predictions.                                 | ইনপুট থেকে প্রেডিকশনে রূপান্তরকারী গাণিতিক ফাংশন/গঠন।                                                           |
| **Parameter**                | Internal values the model learns automatically during training (e.g., weights).                      | ট্রেনিংয়ের সময় মডেল নিজে থেকে যা শেখে (যেমন ওয়েইট)।                                                          |
| **Hyperparameter**           | External settings chosen by the researcher *before* training (e.g., learning rate, tree depth).      | ট্রেনিং শুরুর আগে গবেষক নিজে যা নির্ধারণ করেন (যেমন learning rate, tree depth)।                                 |
| **Training**                 | The process of adjusting parameters to minimize error on training data.                              | ট্রেনিং ডেটায় error কমানোর জন্য প্যারামিটার সমন্বয় করার প্রক্রিয়া।                                                |
| **Inference**                | Using a trained model to make predictions on new data.                                               | নতুন ডেটার ওপর ট্রেইনড মডেল দিয়ে প্রেডিকশন করা।                                                                |
| **Generalization**           | How well a model performs on unseen data, not just training data.                                    | ট্রেনিং ডেটার বাইরে নতুন ডেটাতে মডেল কতটা ভালো কাজ করে।                                                       |

## 1.7 Overfitting, Underfitting & Bias-Variance / ওভারফিটিং, আন্ডারফিটিং এবং বায়াস-ভ্যারিয়েন্স

### Overfitting / ওভারফিটিং

**English:** Occurs when a model performs excellently on training data but fails to generalize to new, unseen data — it has “memorized” noise and quirks instead of the real underlying pattern. Example: a student who memorizes exact textbook answers but fails when questions are rephrased. **Research pitfall:** If researchers tune hyperparameters directly on the test set, they are effectively overfitting the test set — the reported generalization error becomes over-optimistic and invalid.

**বাংলা:** ওভারফিটিং তখন হয় যখন মডেল ট্রেনিং ডেটায় দুর্দান্ত করে কিন্তু নতুন ডেটায় ব্যর্থ হয় — এটি আসল প্যাটার্নের বদলে ডেটার noise মুখস্থ করে ফেলে। উদাহরণ: যে ছাত্র বই থেকে হুবহু উত্তর মুখস্থ করেছে কিন্তু প্রশ্ন একটু ঘুরিয়ে দিলে পারে না। গবেষণার ভুল: যদি গবেষকরা সরাসরি টেস্ট সেটে হাইপারপ্যারামিটার টিউন করেন, তারা কার্যত টেস্ট সেটেই ওভারফিট করছেন — এতে রিপোর্ট করা generalization error অতিরিক্ত-আশাবাদী ও অবৈধ হয়ে যায়।

### Underfitting / আন্ডারফিটিং

**English:** The opposite problem — the model is too simple to capture the underlying structure of the data (e.g., fitting a straight line to strongly curved data). Both training and validation error stay high. **বাংলা:** ঠিক উল্টো সমস্যা — মডেল এতটাই সরল যে ডেটার আসল গঠন ধরতে পারে না (যেমন বাঁকা ডেটায় সরলরেখা ফিট করা)। ট্রেনিং ও ভ্যালিডেশন উভয় error-ই বেশি থাকে।

### Bias-Variance Tradeoff / বায়াস-ভ্যারিয়েন্স ট্রেডঅফ

**English:** Generalization error decomposes into \[3\]: **Bias²** (error from overly simple assumptions → underfitting), **Variance** (error from excess sensitivity to training-set fluctuations → overfitting), and **Irreducible noise** (inherent randomness no model can remove).

> $$\text{Generalization Error} = \text{Bias}^2 + \text{Variance} + \text{Irreducible Noise}$$

Increasing model complexity typically lowers bias but raises variance — you cannot minimize both simultaneously; you must find a balance (e.g., via regularization).

**বাংলা:** Generalization error তিনভাগে ভাগ করা যায়: **Bias²** (অতিরিক্ত সরল অনুমানের কারণে ভুল → আন্ডারফিটিং), **Variance** (ট্রেনিং ডেটার সামান্য পরিবর্তনে অতিরিক্ত সংবেদনশীলতা → ওভারফিটিং), এবং **Irreducible noise** (যা কোনো মডেলই দূর করতে পারবে না)। মডেলের জটিলতা বাড়ালে bias কমে কিন্তু variance বাড়ে — regularization-এর মাধ্যমে ভারসাম্য বজায় রাখতে হয়।

## 1.8 Batch vs Online, Instance-based vs Model-based Learning

| Concept                           | English                                                                                                                                                               | বাংলা                                                                                                                          |
|:----------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------|
| **Batch (Offline) Learning**      | Trained once on all available data; cannot learn incrementally; must be fully retrained when new data arrives. Standard for most reproducible peer-reviewed research. | সব ডেটা দিয়ে একবারে ট্রেন করা হয়; নতুন ডেটা আসলে পুরো আবার ট্রেন করতে হয়। বেশিরভাগ reproducible গবেষণায় এটিই default।              |
| **Online (Incremental) Learning** | Trained incrementally on streaming data/mini-batches; useful for huge or continuously arriving data; risk of *catastrophic forgetting*.                               | ডেটা স্ট্রিমের সাথে ধাপে ধাপে ট্রেন হয়; বিশাল বা ক্রমাগত আসা ডেটার জন্য উপযোগী; *catastrophic forgetting*-এর ঝুঁকি থাকে।              |
| **Instance-based Learning**       | “Memorizes” training examples and generalizes via a similarity measure at prediction time (e.g., k-NN). Cheap to train, expensive to predict.                         | ট্রেনিং উদাহরণ “মুখস্থ” রাখে এবং প্রেডিকশনের সময় similarity মাপে (যেমন k-NN)। ট্রেনিং সস্তা, প্রেডিকশন ব্যয়বহুল।                        |
| **Model-based Learning**          | Builds a compact mathematical model (parameters) from training data and uses that model, not raw data, for prediction (e.g., Linear Regression, Neural Nets).         | ট্রেনিং ডেটা থেকে একটি সংক্ষিপ্ত গাণিতিক মডেল তৈরি করে এবং প্রেডিকশনে সেই মডেলটাই ব্যবহার করে (যেমন Linear Regression, নিউরাল নেট)। |

## 1.9 Generalization, No Free Lunch, and Data Pipelines

### Generalization Error / জেনারেলাইজেশন এরর

**English:** How well the model performs on instances it has never seen, estimated strictly via a held-out test set. Data leakage (test information touching training) makes this estimate artificially — and falsely — low. বাংলা: মডেল যেসব ডেটা আগে কখনো দেখেনি তাতে সে কেমন করবে তার পরিমাপ, যা কেবল আলাদা রাখা টেস্ট সেট দিয়ে মাপা হয়। Data leakage হলে এই পরিমাপ কৃত্রিমভাবে ভালো দেখায় — যা মিথ্যা।

### No Free Lunch Theorem / নো ফ্রি লাঞ্চ থিওরেম

**English:** David Wolpert proved that, without assumptions about the data, no single algorithm is guaranteed best on every dataset. \[4\] Researchers must therefore test multiple model families and never claim universal superiority without stating the exact conditions. বাংলা: ডেভিড ওলপার্ট প্রমাণ করেন যে ডেটা সম্পর্কে কোনো পূর্বানুমান ছাড়া কোনো একক অ্যালগরিদম সব ডেটাসেটে সেরা হবে এমন গ্যারান্টি নেই। তাই গবেষকদের একাধিক মডেল টেস্ট করতে হয় এবং শর্ত ছাড়া “সার্বজনীন সেরা” দাবি করা যাবে না।

### Data Pipeline / ডেটা পাইপলাইন

**English:** A sequence of processing steps (cleaning → scaling → encoding → feature construction) that turns raw data into model-ready input. **Critical rule:** any pipeline step that “learns” from data (e.g., a `StandardScaler` computing mean/std, or an imputer computing medians) must be `fit()` only on the training set, then only `transform()`-ed on validation/test — fitting on the full dataset before splitting is data leakage. বাংলা: কাঁচা ডেটাকে মডেলের উপযোগী করার ধাপগুলোর ধারাবাহিকতা (cleaning → scaling → encoding → feature তৈরি)। গুরুত্বপূর্ণ নিয়ম: যেসব ধাপ ডেটা থেকে কিছু “শেখে” (যেমন StandardScaler গড়/স্ট্যান্ডার্ড ডেভিয়েশন গণনা করে) সেগুলো শুধু ট্রেনিং সেটে `fit()` করতে হবে, এবং ভ্যালিডেশন/টেস্টে শুধু `transform()` করতে হবে — পুরো ডেটাসেটে fit করা হলো data leakage।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - **Feature** = an input column, **Label** = the answer column, **Parameter** = a number the model learns, **Hyperparameter** = a number *you* set before training. / Feature = ইনপুট কলাম, Label = উত্তরের কলাম, Parameter = মডেলের শেখা সংখ্যা, Hyperparameter = ট্রেনিংয়ের আগে আপনার ঠিক করা সংখ্যা। - **Overfitting** = memorizing noise; **Underfitting** = model too simple; the **Bias-Variance tradeoff** balances the two. / Overfitting = noise মুখস্থ করা; Underfitting = অতিরিক্ত সরল মডেল; Bias-Variance tradeoff দুটোর ভারসাম্য রাখে। - Five learning paradigms exist (Supervised, Unsupervised, Semi-, Self-, Reinforcement) — always justify *why* your problem fits one of them. / পাঁচটি learning paradigm আছে — কেন আপনার সমস্যা একটির সাথে মেলে তা সবসময় যুক্তিসহ বলুন।

# 2. COMPLETE ML PROJECT PIPELINE / সম্পূর্ণ মেশিন লার্নিং প্রজেক্ট পাইপলাইন

An end-to-end ML project has **17 systematic steps**. For every step below: **What it is → Why necessary → What goes wrong if skipped → What to report in a paper → What to ask while reading a paper.**

একটি সম্পূর্ণ ML প্রজেক্টে ১৭টি ধাপ থাকে। প্রতিটি ধাপে দেখুন: **এটি কী → কেন দরকার → না করলে কী ভুল হয় → পেপারে কী রিপোর্ট করা উচিত → পেপার পড়ার সময় কী প্রশ্ন করবেন।**

| \#  | Step / ধাপ                                                        | What & Why (English)                                                                                                                                            | কী ও কেন (বাংলা)                                                                                                              | Reading Question                                                 |
|:----|:------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------|
| 1   | **Problem Definition / সমস্যা নির্ধারণ**                            | Formulate the business/scientific objective; decide supervised/unsupervised/RL; define success criteria. Skipping this leads to solving the wrong problem well. | ব্যবসায়িক/বৈজ্ঞানিক উদ্দেশ্য নির্ধারণ করা এবং কোন ধরনের লার্নিং দরকার তা ঠিক করা। এটা না করলে “ভুল সমস্যা”-কে ভালোভাবে সমাধান করা হয়। | Is the problem clearly, measurably defined?                      |
| 2   | **Data Collection / ডেটা সংগ্রহ**                                  | Gather data from APIs, databases, files, sensors, web. Report exact source, collection period, consent/ethics.                                                  | API, ডেটাবেস, ফাইল, সেন্সর ইত্যাদি থেকে ডেটা সংগ্রহ করা। ডেটার উৎস, সংগ্রহকাল স্পষ্টভাবে লিখতে হবে।                                 | Where exactly did the data come from?                            |
| 3   | **Data Understanding / ডেটা অনুধাবন**                              | Inspect shape, dtypes, nulls, basic stats, class distribution before touching the data.                                                                         | কলাম, ডেটা টাইপ, missing value, class distribution বোঝা — ডেটাতে হাত দেওয়ার আগে।                                              | Did they show summary statistics / class counts?                 |
| 4   | **Data Cleaning / ডেটা ক্লিনিং**                                   | Fix missing values, duplicates, wrong types, inconsistent labels. Undocumented cleaning is a reproducibility gap.                                               | Missing value, ডুপ্লিকেট, ভুল টাইপ, ভুল লেবেল ঠিক করা। ডকুমেন্ট না করলে reproducibility gap তৈরি হয়।                                | Is the exact cleaning procedure documented?                      |
| 5   | **Exploratory Data Analysis (EDA) / এক্সপ্লোরেটরি ডেটা অ্যানালিসিস** | Visualize distributions, correlations, anomalies to guide feature/model choices.                                                                                | চার্ট/গ্রাফের সাহায্যে distribution, correlation, anomaly দেখা — এটি ফিচার ও মডেল নির্বাচনে সাহায্য করে।                           | Does EDA justify later modeling decisions?                       |
| 6   | **Data Preprocessing / ডেটা প্রিপ্রসেসিং**                          | Scaling, encoding, normalization — fit only on train split (see A.7).                                                                                           | স্কেলিং, এনকোডিং — শুধু ট্রেনিং সেটে fit করতে হবে (A.7 দেখুন)।                                                                     | Was preprocessing fit only on training data?                     |
| 7   | **Feature Engineering / ফিচার ইঞ্জিনিয়ারিং**                       | Create domain-informed derived features (e.g., ratios, aggregates, coordinates) to help the model learn faster/better.                                          | ডোমেইন জ্ঞান ব্যবহার করে নতুন ফিচার তৈরি করা (যেমন অনুপাত, যোগফল)।                                                                | Are new features theoretically justified, not just “thrown in”?  |
| 8   | **Train / Validation / Test Split / স্প্লিট**                       | Partition data (commonly ~70/15/15 or via K-Fold); use stratified sampling if classes are skewed; chronological split for time-series.                          | ডেটাকে ৩ ভাগে ভাগ করা; ক্লাস স্কিউড হলে stratified sampling; time-series হলে chronological split।                               | Is the split ratio & method (random/stratified/temporal) stated? |
| 9   | **Model Selection / মডেল সিলেকশন**                                | Shortlist a few candidate model families (simple baselines + 1-2 more complex options) before committing to one.                                                | কয়েকটি candidate মডেল পরিবার (সরল বেসলাইন + জটিল মডেল) শর্টলিস্ট করা।                                                           | Did they compare model families, not just tune one?              |
| 10  | **Model Training / মডেল ট্রেনিং**                                  | Fit the chosen models on the training data to estimate parameters.                                                                                              | নির্বাচিত মডেল ট্রেনিং ডেটায় ফিট করা।                                                                                           | Were training conditions (epochs, optimizer, hardware) reported? |
| 11  | **Hyperparameter Tuning / হাইপারপ্যারামিটার টিউনিং**               | Tune settings (learning rate, depth, etc.) using the **validation** set only, via grid/random/Bayesian search.                                                  | validation সেট ব্যবহার করে (কখনও test set নয়) grid/random/Bayesian search দিয়ে সেটিংস টিউন করা।                                | Was tuning done on validation, not test, data?                   |
| 12  | **Cross-Validation / ক্রস-ভ্যালিডেশন**                              | K-Fold (or stratified/time-series variants) for a stable performance estimate + variance/standard deviation.                                                    | K-Fold (বা এর বিশেষ ভ্যারিয়েন্ট) দিয়ে স্থিতিশীল performance অনুমান + std deviation।                                               | Do they report mean ± std across folds/seeds?                    |
| 13  | **Comprehensive Evaluation / সামগ্রিক মূল্যায়ন**                     | Use multiple metrics appropriate to the task (see Section 5), not just accuracy.                                                                                | শুধু accuracy না দিয়ে টাস্ক-উপযোগী একাধিক মেট্রিক ব্যবহার করা (Section 5 দেখুন)।                                                    | Are metrics appropriate for class balance/task type?             |
| 14  | **Error Analysis / এরর অ্যানালিসিস**                               | Inspect *specific* wrong predictions to find systematic failure patterns (which class, what kind of input).                                                     | মডেল কোথায় এবং কেন ভুল করছে তা নির্দিষ্ট উদাহরণসহ বিশ্লেষণ করা।                                                                   | Do they show/discuss actual failure cases?                       |
| 15  | **Baseline Comparison / বেসলাইন তুলনা**                            | Confirm the proposed model beats simple/dummy baselines and recent SOTA by a meaningful, statistically justified margin.                                        | প্রস্তাবিত মডেল সহজ বেসলাইন ও সাম্প্রতিক SOTA-কে অর্থপূর্ণভাবে হারাচ্ছে কিনা তা যাচাই করা।                                            | Are baselines fair, tuned, and recent?                           |
| 16  | **Model Interpretation / মডেল ব্যাখ্যা (XAI)**                      | Apply explainability tools (SHAP, LIME, Grad-CAM, attention maps) to justify *why* predictions are made.                                                        | SHAP, LIME, Grad-CAM ইত্যাদি দিয়ে মডেল কেন এই সিদ্ধান্ত নিলো তা ব্যাখ্যা করা।                                                      | Is there any explainability analysis at all?                     |
| 17  | **Final Conclusion & Reporting / চূড়ান্ত রিপোর্টিং**                 | State assumptions, limitations, and compile final tables/figures for readers/reviewers.                                                                         | অনুমান ও সীমাবদ্ধতা স্পষ্টভাবে বলা এবং চূড়ান্ত টেবিল/চিত্র উপস্থাপন করা।                                                              | Are limitations honestly and specifically stated?                |

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A real ML project has **17 ordered steps** — skipping one is a common source of weak papers. / বাস্তব ML প্রজেক্টে ১৭টি ধাপ থাকে — একটি বাদ দিলেই পেপার দুর্বল হয়ে যায়। - Preprocessing must be `fit()` only on the training split, never on the full dataset before splitting. / Preprocessing শুধু training split-এ `fit()` করতে হবে, পুরো ডেটাসেটে নয়। - Hyperparameter tuning belongs on the **validation** set — the test set is touched only once, at the very end. / Hyperparameter tuning **validation** সেটে হয় — test সেট শুধু শেষে একবার ব্যবহৃত হয়।

# 3. DATASET ANALYSIS & DATA QUALITY / ডেটাসেট বিশ্লেষণ ও ডেটা কোয়ালিটি

Real-world datasets are almost never clean. This Part teaches you to critically interrogate **any dataset used in a paper** — this is one of the most common sources of red flags (see Section 17).

বাস্তব-জগতের ডেটাসেট প্রায় কখনোই পরিষ্কার হয় না। এই অংশটি শেখায় কীভাবে যেকোনো পেপারে ব্যবহৃত ডেটাসেটকে সমালোচনামূলকভাবে যাচাই করবেন — এটি Red Flag (Section 17 দেখুন)-এর অন্যতম সাধারণ উৎস।

## 3.1 Dataset Description Basics / ডেটাসেট বর্ণনার মূল বিষয়

| Question       | English                                                                                | বাংলা                                                                                  |
|:---------------|:---------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------|
| Source         | Where did the data come from (public benchmark, scraped, collected in-house, survey)?  | ডেটা কোথা থেকে এসেছে (public benchmark, scraped, in-house, survey)?                    |
| Size           | How many samples / rows / images / documents?                                          | কতগুলো নমুনা/সারি/ছবি/ডকুমেন্ট আছে?                                                        |
| Features       | How many input features/columns, and what type (numeric, categorical, text, image)?    | কতগুলো ফিচার/কলাম আছে এবং তাদের ধরন কী?                                                 |
| Classes        | How many target classes, and how are they distributed?                                 | কতগুলো টার্গেট ক্লাস আছে এবং তাদের বিন্যাস কেমন?                                           |
| Population     | Which real-world population does this data represent? Any demographic/geographic skew? | এই ডেটা বাস্তবে কোন population প্রতিনিধিত্ব করে? কোনো demographic/geographic skew আছে কি? |
| License/Access | Is the dataset public, reproducible, and legally usable?                               | ডেটাসেটটি পাবলিক, reproducible এবং legally ব্যবহারযোগ্য কি?                              |

## 3.2 Missing Values / মিসিং ভ্যালু

### English

Missing values arise from collection errors, sensor failure, unanswered survey fields, or incomplete logs. Handling method depends heavily on *why* data is missing and *how much* is missing.

| Method                     | When to use                                                         |
|:---------------------------|:--------------------------------------------------------------------|
| Row deletion               | Very few missing rows, and deleting doesn’t introduce bias          |
| Column deletion            | A column has an extremely high missing rate                         |
| Mean imputation            | Numeric feature, roughly symmetric distribution                     |
| Median imputation          | Numeric feature, skewed distribution or outliers present            |
| Mode imputation            | Categorical feature                                                 |
| KNN imputation             | Want to estimate the missing value from similar samples             |
| MICE (multiple imputation) | Want robust imputation using relationships across multiple features |
| Missing indicator          | The *fact that it’s missing* is itself informative                  |
| Domain-based imputation    | Expert knowledge can plausibly fill the value                       |

**Critical rule:** Fit the imputer only on the training set, then transform validation/test — fitting on the whole dataset before splitting is data leakage.

### বাংলা

Missing value হয় ডেটা কালেকশনের ভুল, সেন্সর ব্যর্থতা, survey-তে উত্তর না দেওয়া, বা incomplete log-এর কারণে। কোন method ব্যবহার করবেন তা নির্ভর করে কেন এবং কতটা ডেটা missing তার ওপর।

| Method                  | কখন ব্যবহার করবেন                                             |
|:------------------------|:-------------------------------------------------------------|
| Row deletion            | খুব কম row missing থাকলে এবং এতে bias তৈরি না হলে             |
| Column deletion         | কোনো কলামে অনেক বেশি missing value থাকলে                     |
| Mean imputation         | Numeric ফিচার সমান্তরাল (symmetric) distribution হলে          |
| Median imputation       | Numeric ফিচার skewed বা outlier থাকলে                        |
| Mode imputation         | Categorical ফিচার হলে                                        |
| KNN imputation          | কাছাকাছি নমুনা দেখে মান অনুমান করতে চাইলে                      |
| MICE imputation         | একাধিক ফিচারের সম্পর্ক ব্যবহার করে robust imputation করতে চাইলে |
| Missing indicator       | মান missing থাকাটাই একটি গুরুত্বপূর্ণ সংকেত হলে                   |
| Domain-based imputation | বিশেষজ্ঞ জ্ঞান দিয়ে মান পূরণ সম্ভব হলে                           |

গুরুত্বপূর্ণ নিয়ম: Imputer শুধু ট্রেনিং সেটে fit করুন, তারপর validation/test-এ transform করুন — পুরো ডেটাসেটে fit করা data leakage।

## 3.3 Class Imbalance / ক্লাস ইমব্যালেন্স

### English

Occurs when one or more classes have far fewer samples than others (e.g., fraud detection, rare disease diagnosis).

**Symptoms:** high overall accuracy but low minority-class recall; low macro-F1 but high weighted-F1; the model becomes biased toward predicting the majority class.

**Handling methods:** \| Method \| Explanation \| \|—\|—\| \| Stratified split \| Preserves class ratio in train/test \| \| Class weighting \| Penalizes misclassifying the minority class more heavily \| \| Random oversampling \| Duplicates minority-class samples \| \| Random undersampling \| Reduces majority-class samples \| \| SMOTE \| Creates synthetic minority-class samples \| \| ADASYN \| Creates more synthetic samples for *hard-to-learn* minority instances \| \| Focal loss \| Down-weights easy majority examples, focuses training on hard examples \| \| Threshold tuning \| Moves the decision threshold away from the default 0.5 \| \| Data augmentation \| Synthetically expands minority-class data (text/image/audio) \| \| Appropriate metrics \| Use macro-F1, recall, PR-AUC instead of raw accuracy \|

### বাংলা

এক বা একাধিক ক্লাসের নমুনা সংখ্যা অন্যদের তুলনায় অনেক কম হলে ক্লাস ইমব্যালেন্স হয় (যেমন fraud detection, rare disease)।

লক্ষণ: overall accuracy বেশি কিন্তু minority-class recall কম; macro-F1 কম কিন্তু weighted-F1 বেশি; মডেল majority class predict করতে বেশি স্বচ্ছন্দ হয়ে যায়।

উপরের টেবিলের method-গুলো বাংলায়: **Stratified split** (train/test-এ class ratio ঠিক রাখে), **Class weighting** (minority class ভুল করলে বেশি penalty), **Oversampling/Undersampling** (নমুনা বাড়ানো/কমানো), **SMOTE/ADASYN** (synthetic নমুনা তৈরি), **Focal loss** (কঠিন নমুনায় বেশি focus), **Threshold tuning**, **Data augmentation**, এবং সঠিক metric (macro-F1, recall, PR-AUC) ব্যবহার করা।

## 3.4 Noisy Data / নয়েজি ডেটা

### English

Noise = errors, random distortions, or irrelevant information contaminating the data.

| Type          | Example                                                  |
|:--------------|:---------------------------------------------------------|
| Feature noise | Wrong/distorted sensor reading                           |
| Label noise   | A hate-speech sentence mislabeled as neutral             |
| Text noise    | Typos, slang, emoji, repeated characters, mixed language |
| Image noise   | Blur, low resolution, bad lighting, background clutter   |
| Outlier noise | Extreme values that confuse the model                    |

**Handling:** data cleaning, text normalization, label verification/relabeling, robust loss functions, outlier detection, smoothing/filtering, data augmentation, regularization, early stopping.

### বাংলা

Noise মানে ডেটায় ভুল, random বিকৃতি বা অপ্রাসঙ্গিক তথ্য।

উপরের টেবিলের ধরন: **Feature noise** (সেন্সরের ভুল রিডিং), **Label noise** (ভুল লেবেল), **Text noise** (বানান ভুল, slang, emoji), **Image noise** (blur, কম resolution), **Outlier noise** (চরম মান)।

সমাধান: ডেটা ক্লিনিং, text normalization, label verification, robust loss function, outlier detection, smoothing, data augmentation, regularization, early stopping।

## 3.5 Outliers / আউটলায়ার

### English

An outlier is a value far from the general pattern — it may be a genuine rare event *or* a data-entry error; domain knowledge decides how to treat it.

**Detection:** Z-score, IQR method, boxplot visualization, Isolation Forest, DBSCAN. **Handling:** correct/remove if it’s an entry error; keep if it’s a valid rare event; cap extreme values (winsorization); log-transform skewed data; or use outlier-robust models.

### বাংলা

আউটলায়ার হলো সাধারণ প্যাটার্ন থেকে অনেক দূরের মান — এটি সত্যিকারের rare event হতে পারে অথবা data-entry ভুলও হতে পারে; ডোমেইন জ্ঞান দিয়ে সিদ্ধান্ত নিতে হয়।

**Detection:** Z-score, IQR, boxplot, Isolation Forest, DBSCAN। **Handling:** এন্ট্রি ভুল হলে ঠিক করা/বাদ দেওয়া; বৈধ rare event হলে রাখা; extreme value cap করা (winsorization); skewed data-তে log transformation; বা outlier-সহনশীল মডেল ব্যবহার করা।

## 3.6 Data Leakage / ডেটা লিকেজ

### English

Data leakage happens when information that would *not* be available at real-world prediction time leaks into training — producing artificially high but false performance.

**Common leakage examples:** - Using a feature that itself encodes the target (e.g., “final grade” feature when predicting pass/fail) - Fitting a scaler/imputer/feature-selector on the **entire** dataset before splitting - The same user/patient appearing in both train and test sets - Using future data to predict the past in time-series problems

**Prevention:** Fit the whole preprocessing pipeline on training data only; use chronological splits for time-series; check for duplicate/overlapping entities across splits.

### বাংলা

Data leakage হয় যখন বাস্তব predicion-এর সময় যে তথ্য পাওয়া যাবে না, তা ট্রেনিংয়ে ঢুকে যায় — ফলে কৃত্রিমভাবে ভালো কিন্তু মিথ্যা performance দেখা যায়।

সাধারণ উদাহরণ: টার্গেটকে নিজেই এনকোড করে এমন ফিচার ব্যবহার করা; পুরো ডেটাসেটে scaler/imputer fit করা; একই ব্যবহারকারী/রোগী train ও test দুই জায়গাতেই থাকা; time-series-এ future data দিয়ে past predict করা।

প্রতিরোধ: পুরো preprocessing pipeline শুধু training data-তে fit করা; time-series-এ chronological split ব্যবহার করা; split-জুড়ে duplicate entity চেক করা।

## 3.7 Other Common Data Problems / অন্যান্য সাধারণ ডেটা সমস্যা

| Problem                                   | English                                                                                                                                                       | বাংলা                                                                                                                                |
|:------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
| **Duplicate Data**                        | Repeated rows bias the model and can inflate test performance if duplicates span both splits.                                                                 | পুনরাবৃত্ত row মডেলে bias আনে, এবং train/test দুই জায়গায় থাকলে test performance কৃত্রিমভাবে বাড়ায়।                                         |
| **Inconsistent Labels**                   | Similar samples receiving different labels (annotator disagreement) — check inter-annotator agreement.                                                        | একই ধরনের নমুনা ভিন্ন লেবেল পাওয়া (annotator-দের মধ্যে মতভেদ) — inter-annotator agreement চেক করা উচিত।                                 |
| **High-Cardinality Categorical Features** | Features like user ID/product ID with too many unique values — one-hot encoding explodes dimensionality; use target/frequency encoding or embeddings instead. | User ID-এর মতো অনেক unique value থাকা ফিচার — one-hot করলে ডাইমেনশন বিস্ফোরিত হয়; target/frequency encoding বা embedding ব্যবহার করুন।  |
| **Multicollinearity**                     | Strongly correlated features destabilize linear model coefficients — check via VIF or correlation matrix.                                                     | শক্তিশালীভাবে correlated ফিচার linear মডেলের coefficient অস্থির করে — VIF বা correlation matrix দিয়ে চেক করুন।                          |
| **Dimensionality Problem**                | Too many features relative to samples (curse of dimensionality) — use PCA, feature selection, regularization.                                                 | নমুনার তুলনায় অনেক বেশি ফিচার (curse of dimensionality) — PCA, feature selection, regularization ব্যবহার করুন।                           |
| **Bias & Fairness**                       | Underrepresented groups in data lead to unfair model decisions — check group-wise performance and false positive/negative rates.                              | ডেটাতে কোনো গ্রুপের কম প্রতিনিধিত্ব থাকলে মডেল অন্যায্য সিদ্ধান্ত নিতে পারে — group-wise performance ও false positive/negative rate চেক করুন। |

## 3.8 Preprocessing by Data Type / ডেটার ধরন অনুযায়ী প্রিপ্রসেসিং

Numerical / সাংখ্যিক: missing-value imputation; standardization/normalization; outlier treatment; log/power transformation; feature interactions. Categorical / ক্যাটাগরিক্যাল: label encoding (ordinal); one-hot encoding (nominal); target encoding (high-cardinality); handling of unseen categories at deployment. **Text / টেক্সট:** tokenization, stopword removal, stemming/lemmatization; URL/mention/hashtag/emoji handling; Bag-of-Words, TF-IDF, word/transformer embeddings; special normalization for mixed-language/romanized text. Image / ছবি: resize, normalization, denoising; augmentation (rotate/flip/crop/brightness); segmentation/ROI extraction; Grad-CAM for explaining decision regions.

## 3.9 DATASET ANALYSIS CHECKLIST / ডেটাসেট বিশ্লেষণ চেকলিস্ট

- [ ] **Source & size** — Where is the data from, and how large? / ডেটার উৎস ও আকার কী?
- [ ] **Representativeness** — Does it represent the real target population? / এটি বাস্তব population প্রতিনিধিত্ব করে কি?
- [ ] **Class distribution** — Is it balanced or skewed? / ক্লাস বিন্যাস সুষম নাকি skewed?
- [ ] **Missing values & duplicates** — Audited and documented? / চেক ও ডকুমেন্ট করা হয়েছে কি?
- [ ] **Outliers** — Detected and justified how they were treated? / আউটলায়ার চিহ্নিত এবং তার সমাধান যুক্তিসঙ্গত কি?
- [ ] **Train/val/test split** — Stratified? Chronological (if time-series)? Ratio stated? / সঠিক পদ্ধতিতে split করা হয়েছে কি?
- [ ] **Data leakage risk** — Was preprocessing fit only on train? Any overlapping entities? / Leakage ঝুঁকি আছে কি?
- [ ] **Reproducibility** — Is the dataset public or otherwise obtainable? / ডেটাসেট reproducible কি?
- [ ] **Label quality** — Any evidence of label noise/inconsistency, inter-annotator agreement reported? / লেবেলের মান নিয়ে প্রমাণ আছে কি?
- [ ] **Bias/fairness** — Any demographic/geographic/temporal skew acknowledged? / Bias/fairness নিয়ে আলোচনা আছে কি?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Missing values, class imbalance, noise, outliers, and data leakage are the five most common dataset problems — check all five in every paper. / Missing value, class imbalance, noise, outlier, ও data leakage — পাঁচটি সাধারণ সমস্যা, প্রতিটি পেপারে যাচাই করুন। - **Data leakage** (fitting on the whole dataset before splitting) is the single most common cause of “too good to be true” results. / **Data leakage** “অতিরিক্ত ভালো” ফলাফলের সবচেয়ে সাধারণ কারণ। - Run the Section 3.9 checklist on any dataset before trusting the numbers built on top of it. / যেকোনো ডেটাসেটে বিশ্বাস করার আগে Section 3.9-এর চেকলিস্ট চালান।

# 4. CORE ML & DEEP LEARNING ALGORITHMS / মূল ML ও ডীপ লার্নিং অ্যালগরিদম

For every algorithm: **core idea → how it works → assumptions → strengths → weaknesses → key hyperparameters → failure cases → what to check when a paper uses it.**

## 4.1 Classical Regression & Linear Models

### Linear Regression / লিনিয়ার রিগ্রেশন

**English:** Fits $\hat y = \theta^T x$ by minimizing Mean Squared Error. Assumes a linear relationship between features and target. Strengths: interpretable, fast, good baseline. Weaknesses: sensitive to outliers and multicollinearity; cannot capture non-linear patterns. **Check in a paper:** was it used purely as a baseline, and were residuals/assumptions checked? বাংলা: MSE কমিয়ে `ŷ = θ^T x` ফিট করে। ফিচার ও টার্গেটের মধ্যে linear সম্পর্ক অনুমান করে। শক্তি: ব্যাখ্যাযোগ্য, দ্রুত, ভালো বেসলাইন। দুর্বলতা: আউটলায়ার ও multicollinearity-তে সংবেদনশীল; non-linear প্যাটার্ন ধরতে পারে না।

### Polynomial Regression / পলিনোমিয়াল রিগ্রেশন

**English:** Extends linear regression by adding powers of features ($x,\ x^2,\ \dots$), letting a linear model fit curves. High degree → severe overfitting unless regularized. বাংলা: ফিচারের ঘাত (`x²`, ইত্যাদি) যোগ করে বাঁকা ডেটার সাথে ফিট করানো যায়। উচ্চ ডিগ্রি হলে regularization ছাড়া মারাত্মক ওভারফিটিং হয়।

### Logistic Regression / লজিস্টিক রিগ্রেশন

**English:** A binary classifier that applies the sigmoid function to a weighted sum of inputs to estimate class probability, optimized via log-loss (cross-entropy). Linear decision boundary — struggles on non-linear problems. বাংলা: ইনপুটের ওয়েইটেড যোগফলে sigmoid ফাংশন প্রয়োগ করে ক্লাস probability অনুমান করে (binary classification)। শুধু সরলরৈখিক boundary আঁকতে পারে।

### Softmax (Multinomial Logistic) Regression / সফটম্যাক্স রিগ্রেশন

**English:** Generalizes logistic regression to multi-class problems directly via the softmax function; standard output layer for deep classification networks. Note: softmax outputs are *not* true probabilities unless calibrated — they can be overconfident. **বাংলা:** softmax ফাংশন দিয়ে সরাসরি multi-class সমস্যা সমাধান করে; ডীপ লার্নিং ক্লাসিফায়ারের স্ট্যান্ডার্ড আউটপুট লেয়ার। এই আউটপুট calibrate না করলে overconfident হতে পারে।

## 4.2 Support Vector Machines

### Linear / Soft-Margin SVM / এসভিএম

**English:** Finds the widest possible separating “street” (margin) between classes. Soft-margin SVM introduces hyperparameter `C` to balance margin width against violations. **Extremely sensitive to feature scaling** — always scale features first. **বাংলা:** ক্লাসগুলোর মধ্যে সবচেয়ে চওড়া “রাস্তা” (margin) খোঁজে। Soft-margin SVM-এ `C` হাইপারপ্যারামিটার দিয়ে margin প্রশস্ততা ও ভুলের মধ্যে ভারসাম্য রাখা হয়। ফিচার স্কেলিং না করলে খুব খারাপ ফল দেয়।

### Kernel SVM (Polynomial / RBF) / কার্নেল এসভিএম

**English:** Uses the “kernel trick” to implicitly map data to higher dimensions and fit non-linear boundaries without literally expanding features. RBF kernel’s `γ` controls how “local” each instance’s influence is — high `γ` → overfitting, low `γ` → underfitting. Scales poorly (`O(m²)`–`O(m³)`) to very large datasets. বাংলা: “কার্নেল ট্রিক” ব্যবহার করে non-linear boundary আঁকে, বাস্তবে ফিচার না বাড়িয়েই। RBF-এর `γ` বেশি হলে ওভারফিট, কম হলে আন্ডারফিট হয়। বড় ডেটাসেটে ধীরগতির।

### Support Vector Regression (SVR) / সাপোর্ট ভেক্টর রিগ্রেশন

**English:** Reverses SVM’s objective — fits as many points as possible *inside* a margin of width `ε`. Robust to outliers because in-margin points don’t affect the model. বাংলা: যতটা সম্ভব বেশি পয়েন্টকে margin-এর ভেতরে রাখার চেষ্টা করে। আউটলায়ার-সহনশীল কারণ margin-এর ভেতরের পয়েন্ট মডেলকে প্রভাবিত করে না।

## 4.3 Tree-Based & Ensemble Methods

### Decision Tree (CART) / ডেসিশন ট্রি

**English:** Makes predictions via a hierarchy of yes/no feature-based questions; splits chosen by minimizing Gini impurity or entropy. Requires almost no data preparation (no scaling needed). **Major weakness: high variance / instability** — small data changes can produce a very different tree. বাংলা: ফিচার-ভিত্তিক হ্যাঁ/না প্রশ্নের ক্রম দিয়ে সিদ্ধান্ত নেয়; Gini impurity/entropy কমিয়ে split করে। স্কেলিং লাগে না। বড় দুর্বলতা: high variance — ডেটায় সামান্য পরিবর্তনেই গাছের গঠন পাল্টে যায়।

### Random Forest / র‍্যান্ডম ফরেস্ট

**English:** Bagging ensemble of decision trees with random feature subsets at each split — trades a little bias for much lower variance; excellent for tabular data with built-in feature importance. Harder to interpret than a single tree. বাংলা: অনেক ডেসিশন ট্রি-র bagging ensemble, প্রতিটি split-এ random ফিচার সাবসেট ব্যবহার করে; variance অনেক কমায়। Feature importance পাওয়া যায়, কিন্তু interpretation কঠিন।

### AdaBoost / অ্যাডাবুস্ট

**English:** Sequentially combines weak learners, each one focusing more on the previous model’s misclassified instances (by reweighting them). Very sensitive to noisy data/outliers. বাংলা: ধারাবাহিকভাবে দুর্বল মডেল যোগ করে, প্রতিটি আগেরটির ভুলের ওপর বেশি ফোকাস করে (weight বাড়িয়ে)। নয়েজ/আউটলায়ারের প্রতি অতি-সংবেদনশীল।

### Gradient Boosting (GBRT) / গ্রেডিয়েন্ট বুস্টিং

**English:** Sequentially fits new trees to the **residual errors** of previous trees rather than reweighting instances. Powerful on tabular benchmarks; prone to overfitting without early stopping / low learning rate (shrinkage). বাংলা: প্রতিটি নতুন গাছ আগেরটার **অবশিষ্ট ভুল (residual)**-এর ওপর ট্রেন হয়। ট্যাবুলার ডেটায় খুব শক্তিশালী; early stopping ছাড়া ওভারফিট হতে পারে।

### XGBoost / LightGBM / CatBoost

**English:** Highly optimized, regularized gradient-boosting implementations widely used in ML competitions and tabular research — add features like built-in regularization, missing-value handling, and faster tree construction. Still needs careful tuning (`max_depth`, `learning_rate`, `n_estimators`, regularization terms) and early stopping to avoid overfitting. বাংলা: অত্যন্ত optimized ও regularized gradient boosting বাস্তবায়ন যা ML প্রতিযোগিতা ও ট্যাবুলার গবেষণায় ব্যাপক ব্যবহৃত হয়। তবুও যত্ন সহকারে হাইপারপ্যারামিটার টিউনিং ও early stopping দরকার।

### Voting Ensembles (Hard/Soft) / ভোটিং এনসেম্বল

**English:** Combines multiple diverse classifiers’ predictions via majority vote (hard) or averaged probabilities (soft — usually better, but requires well-calibrated base models). বাংলা: একাধিক ভিন্ন classifier-এর প্রেডিকশনকে majority vote (hard) বা গড় probability (soft) দিয়ে একত্রিত করে।

## 4.4 Instance-Based & Probabilistic Methods

### k-Nearest Neighbors (k-NN) / কে-নিয়ারেস্ট নেইবার

**English:** Predicts by finding the `k` closest training instances and averaging/voting their labels. Zero training cost, high inference cost (must compute distance to all training points); scales poorly. **বাংলা:** `k`টি নিকটতম ট্রেনিং নমুনা খুঁজে তাদের গড়/ভোট নিয়ে প্রেডিক্ট করে। ট্রেনিং সস্তা, প্রেডিকশন ব্যয়বহুল; বড় ডেটায় স্কেল করে না।

### Naive Bayes / নেইভ বেইজ

**English:** A probabilistic classifier applying Bayes’ theorem with the (naive) assumption that features are conditionally independent given the class. Extremely fast, works well on high-dimensional sparse data (e.g., text classification), but the independence assumption is often unrealistic. বাংলা: Bayes’ theorem ব্যবহার করে এমন একটি probabilistic classifier যা ধরে নেয় ফিচারগুলো ক্লাসের শর্তে independent (যা প্রায়ই বাস্তবসম্মত নয়)। খুব দ্রুত, high-dimensional sparse ডেটায় (যেমন টেক্সট ক্লাসিফিকেশন) ভালো কাজ করে।

## 4.5 Unsupervised: Clustering & Dimensionality Reduction

### k-Means Clustering / কে-মিন্স ক্লাস্টারিং

**English:** Partitions unlabeled data into `k` clusters by iteratively assigning points to the nearest centroid and recomputing centroids, minimizing inertia (within-cluster sum of squares). Sensitive to bad initialization (mitigated with `k-means++`); struggles with non-spherical or unevenly sized/dense clusters. বাংলা: ডেটাকে `k`টি ক্লাস্টারে ভাগ করে, বারবার নিকটতম centroid-এ পয়েন্ট বসিয়ে এবং centroid নতুন করে হিসাব করে। খারাপ initialization-এ ভুল স্থানীয় সমাধানে আটকে যেতে পারে (`k-means++` দিয়ে কমানো যায়); অসম আকার/ঘনত্বের ক্লাস্টারে খারাপ কাজ করে।

### DBSCAN / ডিবিস্ক্যান

**English:** Density-based clustering that groups high-density regions and automatically flags outliers as noise; doesn’t need the number of clusters specified in advance; can find arbitrary-shaped clusters but struggles when cluster densities vary widely. বাংলা: ঘনত্ব-ভিত্তিক ক্লাস্টারিং যা ঘন এলাকাকে ক্লাস্টার এবং ফাঁকা এলাকাকে নয়েজ ধরে; ক্লাস্টার সংখ্যা আগে থেকে বলতে হয় না; তবে ভিন্ন ঘনত্বের ক্লাস্টারে দুর্বল।

### PCA (Principal Component Analysis) / প্রিন্সিপাল কম্পোনেন্ট অ্যানালিসিস

**English:** Linear dimensionality reduction that projects data onto the directions of maximum variance (via SVD). Standard preprocessing step against the curse of dimensionality; fails on non-linear manifolds (e.g., Swiss roll — use t-SNE/UMAP/Autoencoders instead for visualization/non-linear structure). বাংলা: ডেটাকে সর্বোচ্চ variance-এর দিকে প্রজেক্ট করে ডাইমেনশন কমায় (SVD ব্যবহার করে)। Curse of dimensionality মোকাবেলার স্ট্যান্ডার্ড পদ্ধতি; non-linear গঠনে ব্যর্থ হয় (তখন t-SNE/UMAP/Autoencoder ব্যবহার করা হয়)।

## 4.6 Deep Learning Architectures / ডীপ লার্নিং আর্কিটেকচার

### Artificial Neural Network (ANN / MLP) / নিউরাল নেটওয়ার্ক

**English:** Layers of interconnected “neurons” (weighted sums + non-linear activation functions like ReLU/sigmoid/tanh) trained via **backpropagation** (computing gradients backwards through layers) and gradient descent. Universal function approximator, but needs large data and careful regularization (dropout, weight decay, batch normalization) to avoid overfitting. বাংলা: একাধিক স্তরের আন্তঃসংযুক্ত “নিউরন” (ওয়েইটেড যোগফল + non-linear activation) যা **backpropagation** ও gradient descent দিয়ে ট্রেন হয়। যেকোনো ফাংশন approximate করতে পারে, তবে বড় ডেটা এবং regularization (dropout, weight decay) দরকার।

### CNN (Convolutional Neural Network) / সিএনএন

**English:** Uses learnable convolutional filters that slide across an input (typically an image) to detect local spatial patterns (edges → textures → shapes → objects) hierarchically, followed by pooling layers to reduce spatial size. Dominant architecture for image classification, object detection, and segmentation. Weakness: fixed filter size can miss very long-range/global relationships without deep stacking. বাংলা: শেখানো যায় এমন convolutional filter ইনপুট (সাধারণত ছবি)-এর ওপর স্লাইড করে স্থানীয় প্যাটার্ন (edge → texture → shape → object) ধাপে ধাপে চিনে নেয়, এরপর pooling দিয়ে আকার কমায়। Image classification, object detection, segmentation-এ প্রধান আর্কিটেকচার।

### RNN (Recurrent Neural Network) / আরএনএন

**English:** Processes sequential data (text, time-series, audio) by maintaining a hidden state that is updated at each time step, allowing information from earlier steps to influence later predictions. Suffers from **vanishing/exploding gradients** on long sequences, making it hard to learn long-range dependencies. বাংলা: ক্রমিক ডেটা (টেক্সট, টাইম-সিরিজ, অডিও) প্রসেস করার সময় একটি hidden state বজায় রাখে যা প্রতি ধাপে আপডেট হয়। দীর্ঘ sequence-এ **vanishing/exploding gradient** সমস্যা হয়, ফলে long-range নির্ভরতা শেখা কঠিন হয়।

### LSTM / GRU / এলএসটিএম / জিআরইউ

**English:** Gated variants of RNNs (Long Short-Term Memory / Gated Recurrent Unit) that use learned “gates” to control what information to keep, forget, or output — substantially mitigates the vanishing-gradient problem and captures longer dependencies than a vanilla RNN. Still processes sequences step-by-step (slow to parallelize) compared to Transformers. বাংলা: RNN-এর “gated” সংস্করণ (LSTM/GRU) যা শেখা “gate” দিয়ে নিয়ন্ত্রণ করে কোন তথ্য রাখবে, ভুলবে বা আউটপুট দেবে — vanishing gradient সমস্যা অনেকটা কমায়। তবে ধাপে ধাপে প্রসেস করে বলে Transformer-এর তুলনায় parallelize করা কঠিন।

### Transformer / ট্রান্সফরমার

**English:** Replaces recurrence with a **self-attention** mechanism that lets every position in a sequence directly attend to every other position, capturing long-range dependencies and enabling massive parallelization during training. Foundation of modern LLMs (BERT, GPT family) and increasingly used in vision (Vision Transformer / ViT). Requires large data/compute and quadratic attention cost with sequence length (an active research area — “efficient attention”). বাংলা: recurrence-এর বদলে **self-attention** ব্যবহার করে, যেখানে sequence-এর প্রতিটি position সরাসরি অন্য সব position-কে “দেখতে” পারে — এতে long-range নির্ভরতা সহজে ধরা যায় এবং ট্রেনিং সমান্তরালভাবে (parallel) করা যায়। আধুনিক LLM (BERT, GPT)-এর ভিত্তি। বড় ডেটা/কম্পিউট দরকার, এবং sequence দৈর্ঘ্যের সাথে attention-এর খরচ quadratic হারে বাড়ে।

### Autoencoder / অটোএনকোডার

**English:** A neural network trained to compress input into a low-dimensional latent representation (encoder) and then reconstruct the original input from it (decoder), typically by minimizing reconstruction error. Used for dimensionality reduction, denoising, anomaly detection (high reconstruction error = anomaly), and as a self-supervised pretraining technique. বাংলা: একটি নিউরাল নেটওয়ার্ক যা ইনপুটকে ছোট latent representation-এ সংকুচিত করে (encoder) এবং সেখান থেকে আবার পুনর্গঠন করে (decoder), reconstruction error কমিয়ে। Dimensionality reduction, denoising, anomaly detection (বেশি reconstruction error = অ্যানোমালি), এবং self-supervised pretraining-এ ব্যবহৃত হয়।

### GAN (Generative Adversarial Network) / জিএএন

**English:** Two networks compete: a **Generator** tries to create realistic fake data, a **Discriminator** tries to distinguish real from fake; both improve through this adversarial game. Used for image synthesis, data augmentation, style transfer. Notoriously unstable to train (mode collapse, non-convergence) and requires careful hyperparameter/architecture tuning. বাংলা: দুটি নেটওয়ার্ক প্রতিযোগিতা করে: **Generator** বাস্তবসদৃশ fake ডেটা তৈরি করার চেষ্টা করে, **Discriminator** real/fake আলাদা করার চেষ্টা করে; উভয়ে এই প্রতিযোগিতার মধ্য দিয়ে উন্নত হয়। Image synthesis, data augmentation, style transfer-এ ব্যবহৃত হয়। ট্রেনিং করা অস্থির ও কঠিন (mode collapse ইত্যাদি)।

### Diffusion Models / ডিফিউশন মডেল

**English:** Generative models that learn to reverse a gradual noising process — trained to progressively denoise a random-noise input back into realistic data (images, audio). Currently state-of-the-art for high-quality image generation (e.g., text-to-image systems), generally more stable to train than GANs but slower at inference (many denoising steps). বাংলা: এমন generative মডেল যা ধাপে ধাপে noise যোগ করার প্রক্রিয়া উল্টে দিতে শেখে — random noise থেকে ধীরে ধীরে বাস্তবসদৃশ ডেটা তৈরি করে। বর্তমানে উচ্চমানের image generation-এ state-of-the-art, GAN-এর চেয়ে ট্রেনিং স্থিতিশীল কিন্তু inference-এ ধীর।

### Reinforcement Learning (Deep RL) / ডীপ রিইনফোর্সমেন্ট লার্নিং

**English:** An agent learns a policy $\pi(a \mid s)$ by interacting with an environment, receiving rewards, using deep neural networks to approximate value functions or policies (e.g., DQN, PPO, A3C). Heavily used in robotics, games (AlphaGo), and increasingly in LLM fine-tuning (RLHF). Weakness: sample inefficiency and extreme sensitivity to reward design (“reward hacking”). বাংলা: এজেন্ট পরিবেশের সাথে কাজ করে পলিসি `π(a|s)` শেখে, reward পায়, এবং deep neural network দিয়ে value function/policy approximate করে (যেমন DQN, PPO)। রোবটিক্স, গেম (AlphaGo), এবং LLM fine-tuning (RLHF)-এ ব্যবহৃত। দুর্বলতা: প্রচুর স্যাম্পল দরকার এবং reward design-এর প্রতি অতি-সংবেদনশীলতা।

## 4.7 Algorithm Selection Quick-Reference / দ্রুত রেফারেন্স টেবিল

| Data type / situation                     | Commonly suitable algorithms                                      |
|:------------------------------------------|:------------------------------------------------------------------|
| Small tabular data, need interpretability | Linear/Logistic Regression, Decision Tree                         |
| Medium tabular data, best raw accuracy    | Random Forest, Gradient Boosting (XGBoost/LightGBM)               |
| Images                                    | CNN (or Vision Transformer for large data)                        |
| Sequential/text data (older, smaller)     | LSTM/GRU                                                          |
| Sequential/text data (large, modern)      | Transformer-based models                                          |
| No labels, want groups                    | k-Means, DBSCAN                                                   |
| No labels, want to compress/visualize     | PCA, Autoencoder, t-SNE/UMAP                                      |
| Rare-event detection                      | Isolation Forest, Autoencoder reconstruction error, One-Class SVM |
| Need to generate realistic new data       | GAN, Diffusion Model                                              |
| Sequential decision-making with rewards   | Deep RL (DQN/PPO)                                                 |

**Research-paper checklist for any algorithm claim / যেকোনো অ্যালগরিদম দাবির জন্য চেকলিস্ট:** - \[ \] Is the choice justified by the data’s structure, not just popularity? - \[ \] Were key hyperparameters reported (and how were they tuned)? - \[ \] Was the algorithm compared against at least one simpler baseline? - \[ \] Are known failure modes of this algorithm addressed or acknowledged?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - No algorithm is universally “best” (No Free Lunch, Section 1.9) — the right choice depends on data size, structure, and interpretability needs. / কোনো অ্যালগরিদমই সার্বজনীন সেরা নয় — ডেটার আকার, গঠন ও ব্যাখ্যাযোগ্যতার প্রয়োজন অনুযায়ী বেছে নিতে হয়। - Tree ensembles dominate tabular data; CNNs dominate images; Transformers dominate large-scale text (and increasingly vision). / Tree ensemble ট্যাবুলার ডেটায়, CNN ছবিতে, এবং Transformer বড় টেক্সট/vision-এ প্রাধান্য পায়। - Always ask: was this algorithm chosen because it fits the data, or just because it’s popular? / সবসময় প্রশ্ন করুন: অ্যালগরিদমটি কি ডেটার জন্য উপযুক্ত, নাকি শুধু জনপ্রিয় বলে বেছে নেওয়া?

# 5. MODEL EVALUATION / মডেল মূল্যায়ন

## 5.1 The Confusion Matrix / কনফিউশন ম্যাট্রিক্স

### English

The foundation of classification evaluation. For binary classification:

|                        | Actual Positive     | Actual Negative     |
|------------------------|:--------------------|:--------------------|
| **Predicted Positive** | True Positive (TP)  | False Positive (FP) |
| **Predicted Negative** | False Negative (FN) | True Negative (TN)  |

- **TP:** Model says positive, truly positive (e.g., correctly flags a sick patient).
- **TN:** Model says negative, truly negative (correctly flags a healthy patient).
- **FP:** Model says positive, actually negative (a healthy person wrongly flagged sick — a “false alarm”).
- **FN:** Model says negative, actually positive (a sick patient wrongly cleared — a “miss”).

In medical diagnosis, fraud detection, hate-speech detection, and security systems, **False Negatives are often far more dangerous** than False Positives, because a real problem slips through undetected.

### বাংলা

ক্লাসিফিকেশন মূল্যায়নের ভিত্তি। **TP** = মডেল positive বলেছে ও সত্যিই positive। **TN** = negative বলেছে ও সত্যিই negative। **FP** = positive বলেছে কিন্তু আসলে negative (“false alarm”)। **FN** = negative বলেছে কিন্তু আসলে positive (“miss”)।

চিকিৎসা নির্ণয়, fraud detection, hate-speech detection ও security system-এ False Negative প্রায়ই অনেক বেশি বিপজ্জনক, কারণ আসল সমস্যা ধরা পড়ে না।

## 5.2 Classification Metrics / ক্লাসিফিকেশন মেট্রিক

| Metric                   | Formula                           | English intuition                                                   | বাংলা ধারণা                                    | When to prefer                                             |
|--------------------------|-----------------------------------|---------------------------------------------------------------------|------------------------------------------------|------------------------------------------------------------|
| **Accuracy**             | $\dfrac{TP+TN}{TP+TN+FP+FN}$      | Fraction of all predictions that are correct.                       | সব প্রেডিকশনের মধ্যে সঠিকের অনুপাত।               | Balanced classes only                                      |
| **Precision**            | $\dfrac{TP}{TP+FP}$               | Of everything predicted positive, how much was truly positive.      | Positive বলা সবগুলোর মধ্যে কতগুলো সত্যিই positive। | False positives are costly (spam filters, legal filtering) |
| **Recall (Sensitivity)** | $\dfrac{TP}{TP+FN}$               | Of everything actually positive, how much was caught.               | আসল positive-এর কতটা ধরা পড়লো।                 | False negatives are dangerous (cancer detection, fraud)    |
| **Specificity**          | $\dfrac{TN}{TN+FP}$               | Of everything actually negative, how much was correctly identified. | আসল negative-এর কতটা সঠিকভাবে চিহ্নিত হলো।      | Complements recall in medical screening                    |
| **F1-Score**             | $2 \cdot \dfrac{P \times R}{P+R}$ | Harmonic mean of precision and recall.                              | Precision ও Recall-এর সামঞ্জস্যপূর্ণ গড়।           | Imbalanced data                                            |
| **Log Loss**             | $-\dfrac{1}{m}\sum y\log(\hat p)$ | Penalizes confident wrong predictions heavily.                      | ভুল হলেও আত্মবিশ্বাসী প্রেডিকশনকে কড়া শাস্তি দেয়।   | Probabilistic classifiers                                  |

**Macro vs Micro vs Weighted averaging (multi-class) / মাল্টি-ক্লাস গড় করার পদ্ধতি:** - **Macro average:** computes the metric per class then takes an unweighted mean — treats every class equally, so it is the best choice when the minority class matters just as much as the majority. / প্রতিটি ক্লাসের মেট্রিক আলাদাভাবে হিসাব করে unweighted গড় নেয় — প্রতিটি ক্লাসকে সমান গুরুত্ব দেয়, তাই minority class গুরুত্বপূর্ণ হলে এটাই সেরা। - **Micro average:** pools all TP/FP/FN across classes first, then computes the metric — dominated by the largest class(es). / সব ক্লাসের TP/FP/FN একত্রে হিসাব করে — সবচেয়ে বড় ক্লাসের প্রভাব বেশি থাকে। - **Weighted average:** averages per-class metrics weighted by each class’s support (sample count) — can still be dominated by the majority class in imbalanced data. / প্রতিটি ক্লাসের নমুনা সংখ্যা অনুযায়ী weight দিয়ে গড় করে — imbalanced ডেটায় majority class দ্বারা dominated হতে পারে।

## 5.3 ROC-AUC vs PR-AUC / আরওসি-এইউসি বনাম পিআর-এইউসি

### English

- **ROC-AUC** plots Recall (Sensitivity) vs. (1 − Specificity) across thresholds. AUC = 0.5 means random guessing; \> 0.8 is generally good; \> 0.9 is strong. Excellent for roughly balanced binary classification, but **overly optimistic on highly imbalanced data**.
- **PR-AUC** plots Precision against Recall across thresholds. Far more honest for rare-event/minority-class retrieval on imbalanced datasets \[5\] — use PR-AUC whenever the positive class is rare.

### বাংলা

**ROC-AUC** বিভিন্ন threshold-এ Recall বনাম (1 − Specificity) প্লট করে। AUC = 0.5 মানে random guessing; 0.8+ ভালো; 0.9+ শক্তিশালী। মোটামুটি সুষম binary classification-এ চমৎকার, কিন্তু **highly imbalanced ডেটায় বিভ্রান্তিকরভাবে ভালো দেখায়**। **PR-AUC** Precision বনাম Recall প্লট করে এবং rare-event/minority-class retrieval-এর জন্য অনেক বেশি সৎ পরিমাপক — positive class বিরল হলে PR-AUC ব্যবহার করুন।

## 5.4 Regression Metrics / রিগ্রেশন মেট্রিক

| Metric        | Formula                                                                 | English intuition                                    | বাংলা ধারণা                              |
|---------------|-------------------------------------------------------------------------|------------------------------------------------------|------------------------------------------|
| **MAE**       | $\dfrac{1}{m}\sum \vert y-\hat y\vert$                                  | Average absolute error; robust to outliers.          | গড় পরম ত্রুটি; আউটলায়ার-সহনশীল।            |
| **MSE**       | $\dfrac{1}{m}\sum (y-\hat y)^2$                                         | Squares errors, heavily penalizes large errors.      | বর্গ নেওয়ায় বড় ভুলকে বেশি শাস্তি দেয়।       |
| **RMSE**      | $\sqrt{\text{MSE}}$                                                     | Error in the same unit as the target.                | টার্গেটের এককে ত্রুটি প্রকাশ করে।            |
| **R squared** | $1-\dfrac{\sum(y-\hat y)^2}{\sum(y-\bar y)^2}$                          | Fraction of variance explained (0 to 1).             | মডেল কতটুকু variance ব্যাখ্যা করলো (০-১)।    |
| **MAPE**      | $\dfrac{1}{m}\sum \left\vert\dfrac{y-\hat y}{y}\right\vert\times 100\%$ | Average percentage error; unstable when y is near 0. | গড় শতাংশ ভুল; y শূন্যের কাছাকাছি হলে অস্থির। |

## 5.5 Evaluation Method Quick Table (from the Methods Guide)

| Method           | Purpose (English)                        | কাজ (বাংলা)                     | Use when                         |
|:-----------------|:-----------------------------------------|:--------------------------------|:---------------------------------|
| Confusion Matrix | Shows exactly which classes are confused | মডেল কোন ক্লাসে কত ভুল করছে দেখায় | Any classification problem       |
| Accuracy         | Fraction correct overall                 | সামগ্রিক সঠিক অনুপাত              | Balanced dataset                 |
| Precision        | Correctness of positive predictions      | Positive প্রেডিকশনের সঠিকতা      | Reducing false positives matters |
| Recall           | Coverage of actual positives             | আসল positive কতটা ধরা গেলো      | Reducing false negatives matters |
| F1-score         | Balance of precision & recall            | Precision-Recall ভারসাম্য        | Imbalanced dataset               |
| ROC-AUC          | Class-separation ability                 | ক্লাস আলাদা করার সক্ষমতা          | Binary classification            |
| PR-AUC           | Precision-recall trade-off               | Precision-Recall trade-off      | Highly imbalanced data           |
| Cross-validation | Reliability of the result                | ফলাফলের নির্ভরযোগ্যতা যাচাই       | Small/medium datasets            |

## 5.6 Validation Techniques / ভ্যালিডেশন টেকনিক

### English

| Split          | Purpose                                                |
|:---------------|:-------------------------------------------------------|
| Training set   | Teaches the model                                      |
| Validation set | Hyperparameter tuning, model selection, early stopping |
| Test set       | Final, unbiased performance check — used only **once** |

**K-Fold Cross-Validation** \[6\]**:** split data into `K` folds; train on `K-1`, test on the remaining fold; repeat `K` times and average — gives a much more stable estimate than a single split, plus a standard deviation to show reliability. Use **stratified K-Fold** for classification (keeps class ratio consistent per fold) and **TimeSeriesSplit** for temporal data (never shuffle time-ordered data).

**External Validation:** testing the model on a dataset collected from a different source/environment than training data — a strong way to demonstrate real generalization (crucial in medical AI, NLP, cybersecurity, and finance).

### বাংলা

**Train/Validation/Test:** ট্রেনিং সেট মডেলকে শেখায়; validation সেট হাইপারপ্যারামিটার টিউনিং ও early stopping-এর জন্য; test সেট শুধু একবার ব্যবহার করে চূড়ান্ত unbiased performance মাপা হয়।

**K-Fold Cross-Validation:** \[6\] ডেটাকে `K` ভাগে ভাগ করে, প্রতিবার `K-1` ভাগে ট্রেন ও ১ ভাগে টেস্ট করে, `K` বার পুনরাবৃত্তি করে গড় নেওয়া হয় — এতে একটি std deviation-ও পাওয়া যায় যা নির্ভরযোগ্যতা প্রকাশ করে। Classification-এ **stratified K-Fold** এবং time-series-এ **TimeSeriesSplit** ব্যবহার করুন (কখনো সময়ক্রম এলোমেলো করবেন না)।

**External Validation:** ট্রেনিং ডেটার থেকে ভিন্ন উৎস/পরিবেশ থেকে সংগৃহীত ডেটায় মডেল টেস্ট করা — বাস্তব generalization প্রমাণের শক্তিশালী উপায় (medical AI, NLP, cybersecurity, finance-এ অত্যন্ত গুরুত্বপূর্ণ)।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Never report Accuracy alone on imbalanced data — pair it with Precision, Recall, F1, and PR-AUC. / Imbalanced ডেটায় শুধু Accuracy নয় — Precision, Recall, F1, PR-AUC-ও দেখান। - ROC-AUC can look great even on imbalanced data — PR-AUC is the more honest metric when the positive class is rare. / Imbalanced ডেটায় ROC-AUC ভালো দেখাতে পারে — positive class বিরল হলে PR-AUC বেশি সৎ। - Macro-average protects the minority class; micro/weighted averages can quietly hide poor minority-class performance. / Macro-average minority class-কে সুরক্ষা দেয়; micro/weighted average দুর্বল minority পারফরম্যান্স লুকিয়ে ফেলতে পারে।

# 6. EXPERIMENTAL DESIGN / এক্সপেরিমেন্টাল ডিজাইন

## 6.1 What Makes an ML Experiment Convincing vs Weak?

### English — Convincing

- Clear hypothesis and a properly justified baseline comparison
- Fair, tuned baselines using identical data splits, seeds, and preprocessing
- Multiple metrics appropriate to class balance
- Cross-validation or multiple random seeds with reported mean ± standard deviation
- Statistical significance testing when comparing close results
- An ablation study showing each proposed component’s individual contribution
- Robustness/external validation on shifted or noisy data
- Full hyperparameters, code, and environment shared

### English — Weak

- Single train/test split with no repetition
- Only one metric (often just accuracy) reported
- Weak/untuned baselines
- No statistical test for “improvement” of 0.1–0.5%
- No ablation for a complex proposed architecture
- No error analysis or robustness check
- Missing implementation details, preventing reproduction

### বাংলা — বিশ্বাসযোগ্য এক্সপেরিমেন্ট

স্পষ্ট hypothesis ও যুক্তিসঙ্গত বেসলাইন তুলনা; একই split/seed/preprocessing দিয়ে fair ও tuned বেসলাইন; class balance অনুযায়ী একাধিক মেট্রিক; cross-validation বা একাধিক seed-এর mean ± std; কাছাকাছি ফলাফলের জন্য statistical significance test; প্রতিটি component-এর অবদান দেখানো ablation study; robustness/external validation; সম্পূর্ণ হাইপারপ্যারামিটার ও কোড শেয়ার করা।

### বাংলা — দুর্বল এক্সপেরিমেন্ট

একটিমাত্র train/test split, পুনরাবৃত্তি ছাড়া; শুধু একটি মেট্রিক (প্রায়ই কেবল accuracy); দুর্বল/অপ্রস্তুত বেসলাইন; সামান্য উন্নতির (০.১–০.৫%) জন্য কোনো statistical test নেই; জটিল আর্কিটেকচারের জন্য ablation study নেই; error analysis বা robustness check নেই; implementation ডিটেইলস অনুপস্থিত।

## 6.2 Ablation Study / অ্যাবলেশন স্টাডি

### English

An ablation study systematically removes or modifies specific components of a proposed model to prove exactly how much each one contributes — proving the design is not arbitrary.

**Why needed:** proves the architecture isn’t random; shows which module matters most; convinces reviewers there’s a real rationale; reduces overclaiming.

**Example:** Model = CNN + BiLSTM + Attention + Preprocessing pipeline:

| Model Variant         | Accuracy | F1-score |
|:----------------------|:---------|:---------|
| Full Model            | 94.20%   | 93.80%   |
| Without Attention     | 91.60%   | 91.10%   |
| Without BiLSTM        | 90.80%   | 90.20%   |
| Without CNN           | 89.40%   | 88.90%   |
| Without Preprocessing | 87.50%   | 86.90%   |

**Types of ablation:** component ablation (remove a module); feature-group ablation (remove a group of input features); preprocessing ablation (remove stemming/augmentation/etc.); loss-function ablation (compare cross-entropy vs. focal loss vs. weighted loss); data ablation (train on 25%/50%/75%/100% of data to study data efficiency).

### বাংলা

Ablation study হলো প্রস্তাবিত মডেলের নির্দিষ্ট অংশ পদ্ধতিগতভাবে সরিয়ে বা বদলে দেখা, যাতে প্রমাণ হয় প্রতিটি অংশ ঠিক কতটা অবদান রাখছে — এটি প্রমাণ করে ডিজাইনটি এলোমেলো নয়।

কেন দরকার: আর্কিটেকচার random নয় তা প্রমাণ করে; কোন module সবচেয়ে গুরুত্বপূর্ণ তা দেখায়; reviewer-কে বিশ্বাস করায় যে যুক্তিসঙ্গত কারণ আছে; overclaiming কমায়।

Ablation-এর ধরন: component ablation, feature-group ablation, preprocessing ablation, loss-function ablation, data ablation (২৫%/৫০%/৭৫%/১০০% ডেটা দিয়ে data efficiency দেখা)।

## 6.3 XAI (Explainable AI) Methods / এক্সপ্লেইনেবল এআই মেথড

### English

XAI methods explain *why* a model made a prediction — turning a “black box” into something humans can trust and audit.

| Method                      | What it shows                                                   | Best for             |
|:----------------------------|:----------------------------------------------------------------|:---------------------|
| **SHAP** \[7\]              | How much each feature/token increased or decreased a prediction | Tabular, text        |
| **LIME** \[8\]              | A local, per-instance explanation of one prediction             | Tabular, text, image |
| **Grad-CAM** \[9\]          | Heatmap of which image region most influenced a CNN’s decision  | CNN, medical imaging |
| **Integrated Gradients**    | Attribution of the prediction to each input feature/token       | Neural networks, NLP |
| **Attention Visualization** | Which words/tokens the model focused on most                    | Transformers, NLP    |
| **Permutation Importance**  | How much performance drops when a feature is shuffled           | Tabular models       |

**Caution:** XAI explanations describe learned patterns, not proven real-world causation — always interpret XAI output alongside domain knowledge.

### বাংলা

XAI মেথড ব্যাখ্যা করে মডেল কেন একটি নির্দিষ্ট প্রেডিকশন করলো — “black box”-কে মানুষের বিশ্বাসযোগ্য ও যাচাইযোগ্য করে তোলে।

উপরের টেবিলের মেথডগুলো: **SHAP** (কোন ফিচার প্রেডিকশন কতটা বাড়ালো/কমালো), **LIME** (একটি নির্দিষ্ট প্রেডিকশনের local ব্যাখ্যা), **Grad-CAM** (ছবির কোন অংশ সিদ্ধান্তে সবচেয়ে বেশি প্রভাব ফেলেছে তার heatmap), **Integrated Gradients (ইনপুট ফিচার/টোকেনের অবদান), Attention Visualization** (মডেল কোন শব্দে সবচেয়ে বেশি focus করেছে), **Permutation Importance** (একটি ফিচার এলোমেলো করলে performance কতটা কমে)।

**সতর্কতা:** XAI-এর ব্যাখ্যা শেখা প্যাটার্ন বর্ণনা করে, বাস্তব cause-effect প্রমাণ করে না — ডোমেইন জ্ঞানের সাথে মিলিয়ে XAI ফলাফল বুঝতে হবে।

## 6.4 Error Analysis / এরর অ্যানালিসিস

### English

Systematically examining *specific* wrong predictions rather than just reporting a score. Ask: Which class is confused most? Are false positives or false negatives more common? Is the minority class being missed? Does the model fail on noisy/edge-case inputs (typos, sarcasm, low-quality images, missing data)? Is there evidence of bias in the training data? A short error-analysis section with 2-3 concrete failure examples makes a paper look far more mature and trustworthy.

### বাংলা

শুধু score না দিয়ে নির্দিষ্ট ভুল প্রেডিকশন পদ্ধতিগতভাবে বিশ্লেষণ করা। প্রশ্ন করুন: কোন ক্লাসে সবচেয়ে বেশি ভুল হচ্ছে? False positive না false negative বেশি? Minority class miss হচ্ছে কিনা? Noisy/edge-case ইনপুটে (বানান ভুল, sarcasm, নিম্নমানের ছবি) মডেল ব্যর্থ হচ্ছে কিনা? ট্রেনিং ডেটায় bias আছে কিনা? পেপারে ২-৩টি concrete ভুল উদাহরণসহ একটি ছোট error-analysis section কাজটিকে অনেক বেশি পরিণত ও বিশ্বাসযোগ্য দেখায়।

## 6.5 Robustness & Generalization Testing / রোবাস্টনেস ও জেনারেলাইজেশন টেস্ট

### English

**Robustness** = does the model stay stable under noisy/incomplete/slightly changed input? **Generalization** = does it perform well on genuinely new, unseen data/distributions?

**Example robustness tests:** inject typos/emoji/slang into text; blur/rotate/change brightness of images; inject missing values/outliers into tabular data; test on adversarial or abnormal patterns in security data.

### বাংলা

**Robustness** = noisy/incomplete/সামান্য পরিবর্তিত ইনপুটেও মডেল স্থিতিশীল থাকে কিনা। **Generalization** = সত্যিকারের নতুন, আগে না-দেখা ডেটাতে ভালো কাজ করে কিনা।

উদাহরণ: টেক্সটে বানান ভুল/emoji/slang যোগ করা; ছবিতে blur/rotation/brightness পরিবর্তন করা; ট্যাবুলার ডেটায় missing value/outlier inject করা; security ডেটায় adversarial প্যাটার্ন টেস্ট করা।

## 6.6 Computational Complexity Analysis / কম্পিউটেশনাল জটিলতা বিশ্লেষণ

### English

If a paper claims a model is “lightweight,” “efficient,” or “deployment-friendly,” it must report: training time, inference time (per sample), number of parameters, memory/GPU usage, FLOPs, saved model size, and energy cost. In practice, a slightly lower-accuracy but fast, lightweight model is often more useful than a marginally more accurate but very heavy one.

### বাংলা

কোনো মডেলকে “lightweight” বা “efficient” বলা হলে অবশ্যই রিপোর্ট করতে হবে: training time, inference time, parameter সংখ্যা, memory/GPU usage, FLOPs, model size, energy cost। বাস্তবে, সামান্য কম accuracy কিন্তু দ্রুত ও হালকা মডেল প্রায়ই সামান্য বেশি accuracy কিন্তু অনেক ভারী মডেলের চেয়ে বেশি কার্যকর।

## 6.7 Statistical Significance & Confidence Intervals / স্ট্যাটিসটিক্যাল সিগনিফিকেন্স ও কনফিডেন্স ইন্টারভাল

### English

When two models’ performance is close, simply showing a raw accuracy difference is not enough — you must show the difference is statistically meaningful, not random chance.

**Common tests:** paired t-test, Wilcoxon signed-rank test, McNemar’s test, Friedman test with post-hoc analysis. \[10\], \[11\]

**Confidence interval** expresses uncertainty in a result, e.g., “Accuracy = 92.4% ± 1.2%” means the true performance likely lies in that range.

### বাংলা

দুটি মডেলের performance কাছাকাছি হলে শুধু raw accuracy পার্থক্য দেখানো যথেষ্ট নয় — পার্থক্যটি পরিসংখ্যানগতভাবে অর্থপূর্ণ, নাকি নিছক দৈব ঘটনা, তা প্রমাণ করতে হবে।

সাধারণ টেস্ট: paired t-test, Wilcoxon signed-rank test, McNemar’s test, Friedman test। **Confidence interval** ফলাফলের অনিশ্চয়তা প্রকাশ করে — যেমন “Accuracy = 92.4% ± 1.2%” মানে প্রকৃত performance এই পরিসরের মধ্যে থাকতে পারে।

## 6.8 Data Mining Context / ডেটা মাইনিং প্রেক্ষাপট

### English

Data Mining is the broader process of extracting hidden patterns, relationships, and useful knowledge from large datasets; ML is one of its core tools, but data mining also includes data understanding, cleaning, transformation, pattern discovery, and interpretation. Common tasks: Classification, Regression, Clustering, Association Rule Mining, Anomaly Detection, Sequential Pattern Mining, Text Mining.

**CRISP-DM framework** (common project structure): Business Understanding → Data Understanding → Data Preparation → Modeling → Evaluation → Deployment.

### বাংলা

Data Mining হলো বড় ডেটাসেট থেকে hidden pattern, সম্পর্ক ও দরকারি জ্ঞান বের করার বিস্তৃত প্রক্রিয়া; ML এর একটি মূল টুল, কিন্তু data mining-এ ডেটা বোঝা, ক্লিনিং, রূপান্তর, pattern discovery ও ব্যাখ্যাও অন্তর্ভুক্ত। সাধারণ টাস্ক: Classification, Regression, Clustering, Association Rule Mining, Anomaly Detection, Sequential Pattern Mining, Text Mining।

CRISP-DM ফ্রেমওয়ার্ক: Business Understanding → Data Understanding → Data Preparation → Modeling → Evaluation → Deployment।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A convincing experiment has tuned fair baselines, multiple seeds/folds, significance testing, and an ablation study. / বিশ্বাসযোগ্য experiment-এ fair বেসলাইন, একাধিক seed/fold, significance test ও ablation study থাকে। - Ablation studies prove which component of a complex model actually matters — never trust a hybrid model without one. / Ablation study প্রমাণ করে কোন component আসলে গুরুত্বপূর্ণ — এটি ছাড়া hybrid মডেল বিশ্বাস করবেন না। - “Lightweight”/“efficient” claims need real numbers: parameters, FLOPs, training/inference time. / “Lightweight”/“efficient” দাবির জন্য আসল সংখ্যা লাগবে: parameter, FLOPs, সময়।

# 7. STRUCTURE OF AN ACADEMIC ML PAPER / একাডেমিক ML পেপারের গঠন

For every section: **Purpose → What it contains → What to extract → Questions to ask → Common mistakes / red flags.**

| Section                              | Purpose (English)                                                    | উদ্দেশ্য (বাংলা)                                  | Questions to ask while reading                    |
|:-------------------------------------|:---------------------------------------------------------------------|:------------------------------------------------|:--------------------------------------------------|
| **Title**                            | Summarizes the contribution in one line                              | একলাইনে অবদান বোঝায়                             | Does it overclaim relative to the actual results? |
| **Abstract**                         | Compresses problem, method, result, contribution into ~150-250 words | সমস্যা, method, result, contribution সংক্ষেপে বলে | Use the template in Section 9                     |
| **Keywords**                         | Helps indexing/search                                                | সার্চ/ইনডেক্সিং-এ সাহায্য করে                      | Are they specific or generic?                     |
| **Introduction**                     | Builds the case for why this work matters (see Section 10 flow)      | কাজের গুরুত্ব প্রতিষ্ঠা করে                          | Can you trace Problem→Gap→Contribution?           |
| **Related Work / Literature Review** | Surveys prior work, sets up the gap                                  | পূর্ববর্তী কাজ পর্যালোচনা করে গ্যাপ প্রতিষ্ঠা করে      | Are recent (last 2-3 yrs) works included?         |
| **Problem Statement**                | Precise, often mathematical, formulation of the problem              | সমস্যার সুনির্দিষ্ট (প্রায়ই গাণিতিক) সংজ্ঞা           | Is it measurable?                                 |
| **Research Question(s)**             | The specific testable question(s)                                    | নির্দিষ্ট পরীক্ষাযোগ্য প্রশ্ন                         | Does it meet SMART criteria (Section 20)?         |
| **Methodology**                      | Detailed architecture/algorithm/pipeline                             | বিস্তারিত আর্কিটেকচার/অ্যালগরিদম                   | Is it reproducible from this description alone?   |
| **Dataset**                          | Source, size, class distribution, splits                             | উৎস, আকার, class distribution, split            | Any of the Section 3 red flags present?           |
| **Experimental Setup**               | Hardware, hyperparameters, training details                          | হার্ডওয়্যার, হাইপারপ্যারামিটার, ট্রেনিং ডিটেইলস     | Enough detail to replicate?                       |
| **Results**                          | Main comparison tables/figures                                       | প্রধান ফলাফল টেবিল/চিত্র                          | Fair comparison? Statistical significance?        |
| **Discussion**                       | Interprets results in context                                        | ফলাফলের প্রেক্ষাপটভিত্তিক ব্যাখ্যা                   | Does discussion match the actual numbers?         |
| **Limitations**                      | Honest boundaries of the work                                        | কাজের সৎ সীমাবদ্ধতা                              | Are they specific, or vague/generic?              |
| **Conclusion**                       | Summary + future work                                                | সারাংশ + ভবিষ্যৎ কাজ                             | Consistent with the abstract’s claims?            |
| **References**                       | Citation list                                                        | সাইটেশন তালিকা                                  | Are recent SOTA works cited?                      |
| **Supplementary Material**           | Extra experiments, code, extended tables                             | অতিরিক্ত পরীক্ষা, কোড                             | Is code/data actually shared?                     |

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Every paper section has a specific job — read “Related Work” as gap-hunting, not just background. / প্রতিটি section-এর নির্দিষ্ট কাজ আছে — “Related Work” গ্যাপ খোঁজার জন্য পড়ুন, শুধু background হিসেবে নয়। - Vague, generic “limitations” are themselves a red flag (see Section 17) — good limitations are specific. / অস্পষ্ট, generic “limitation” নিজেই একটি red flag — ভালো limitation নির্দিষ্ট হয়।

# 8. HOW TO READ A RESEARCH PAPER (THREE-PASS METHOD) \[12\] / গবেষণাপত্র পড়ার তিন-ধাপ পদ্ধতি

### First Pass (5–15 minutes) / প্রথম পাস

**English:** Read Title, Abstract, Introduction, section headings, Conclusion, and skim reference titles. **Goal:** decide whether the paper is worth reading further at all. বাংলা: Title, Abstract, Introduction, section heading, Conclusion পড়ুন এবং reference-এর title দেখে নিন। লক্ষ্য: পেপারটি আরও গভীরভাবে পড়া দরকার কিনা তা সিদ্ধান্ত নেওয়া।

### Second Pass (30–60 minutes) / দ্বিতীয় পাস

**English:** Inspect key figures, tables, and main results carefully; skip deep mathematical proofs for now. **Goal:** understand the core contribution and whether the results are believable at a glance. **বাংলা:** গুরুত্বপূর্ণ চিত্র, টেবিল ও প্রধান ফলাফল মনোযোগ দিয়ে দেখুন; গভীর গাণিতিক প্রমাণ এখনো বাদ দিন। লক্ষ্য: মূল অবদান বোঝা এবং ফলাফল বিশ্বাসযোগ্য মনে হচ্ছে কিনা যাচাই করা।

### Third Pass (Deep, critical reading) / তৃতীয় পাস

**English:** Reconstruct exact mathematical formulations, algorithms, hyperparameters, ablation studies, statistical tests, and reproducibility details. **Goal:** be able to reproduce the paper’s argument yourself and spot hidden flaws (use Sections 16 and 17). **বাংলা:** সঠিক গাণিতিক সূত্র, অ্যালগরিদম, হাইপারপ্যারামিটার, ablation study, statistical test ও reproducibility ডিটেইলস পুনর্গঠন করুন। লক্ষ্য: পেপারের যুক্তি নিজে reproduce করতে পারা এবং লুকানো ত্রুটি খুঁজে পাওয়া (Section 16 ও Q ব্যবহার করুন)।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Pass 1 (5-15 min) decides if a paper is worth reading; Pass 2 extracts the contribution; Pass 3 is deep, reproducibility-level scrutiny. / Pass 1 পড়া দরকার কিনা ঠিক করে; Pass 2 অবদান বোঝায়; Pass 3 গভীর যাচাই করে। - Most papers you skim only deserve Pass 1 — don’t over-invest time before deciding relevance. / বেশিরভাগ পেপার শুধু Pass 1-এর যোগ্য — প্রাসঙ্গিকতা না বুঝে বেশি সময় দেবেন না।

# 9. ABSTRACT ANALYSIS TEMPLATE / অ্যাবস্ট্রাক্ট বিশ্লেষণ টেমপ্লেট

Use this template to instantly extract critical facts from any abstract. যেকোনো abstract থেকে দ্রুত গুরুত্বপূর্ণ তথ্য বের করতে এই টেমপ্লেট ব্যবহার করুন:

    - Problem (সমস্যা): What is the core challenge addressed?
    - Motivation (অনুপ্রেরণা): Why does solving this matter?
    - Research Gap (রিসার্চ গ্যাপ): What limitation in existing work did they find?
    - Objective (উদ্দেশ্য): What is the exact goal of the study?
    - Method (পদ্ধতি): What approach/architecture do they introduce?
    - Dataset (ডেটাসেট): What dataset(s) did they use?
    - Main Result (প্রধান ফলাফল): What is the headline score/improvement?
    - Contribution (অবদান): What is the scientific/practical novelty?
    - Limitation (সীমাবদ্ধতা): What weak point is declared (if any)?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A well-written abstract answers all 9 template questions in miniature — if it can’t, the paper’s structure is likely weak too. / ভালো abstract ৯টি প্রশ্নেরই সংক্ষিপ্ত উত্তর দেয় — না দিলে পেপারের গঠনও দুর্বল হতে পারে।

# 10. INTRODUCTION LOGICAL FLOW / ইন্ট্রোডাকশনের যৌক্তিক গঠন

### English

Researchers build introductions like an inverted funnel — starting broad, narrowing to their specific contribution:

> `General Problem → Existing Situation → Existing Methods → Limitations → Research Gap`
>
> `→ Motivation → Proposed Approach → Objective → Contributions`

Learning to spot this flow lets you read an introduction in minutes and immediately locate the paper’s actual gap claim (usually near the end of the introduction, right before “In this paper, we propose…”).

### বাংলা

গবেষকরা ইন্ট্রোডাকশন তৈরি করেন উল্টানো ফানেলের মতো — বিস্তৃত থেকে শুরু করে নিজেদের নির্দিষ্ট অবদানে সংকুচিত হয়:

সাধারণ সমস্যা → বর্তমান পরিস্থিতি → প্রচলিত পদ্ধতি → সীমাবদ্ধতা → রিসার্চ গ্যাপ → অনুপ্রেরণা → প্রস্তাবিত পদ্ধতি → উদ্দেশ্য → অবদান।

এই গঠন চিনতে পারলে আপনি মিনিটেই introduction পড়ে পেপারের আসল গ্যাপ-দাবিটি খুঁজে পাবেন (সাধারণত introduction-এর শেষে, “In this paper, we propose…” এর ঠিক আগে থাকে)।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Introductions are an inverted funnel — the actual gap claim usually sits right before “In this paper, we propose…”. / Introduction উল্টানো ফানেলের মতো — আসল গ্যাপ দাবি সাধারণত “In this paper, we propose…”-এর ঠিক আগে থাকে।

# 11. LITERATURE REVIEW COMPARATIVE MATRIX / লিটারেচার রিভিউ তুলনামূলক ম্যাট্রিক্স

### English

Use this table to systematically cross-compare multiple papers during a literature survey — patterns and contradictions across rows reveal genuine gaps.

### বাংলা

সাহিত্য সমীক্ষার সময় একাধিক পেপার পদ্ধতিগতভাবে তুলনা করতে এই টেবিল ব্যবহার করুন — সারিজুড়ে প্যাটার্ন ও বৈপরীত্য দেখলে আসল গ্যাপ ধরা পড়ে।

| Paper       | Year | Problem | Dataset | Method | Metric | Result | Limitation | Gap | Possible Extension |
|:------------|:-----|:--------|:--------|:-------|:-------|:-------|:-----------|:----|:-------------------|
| *(fill in)* |      |         |         |        |        |        |            |     |                    |
| *(fill in)* |      |         |         |        |        |        |            |     |                    |

How to fill each column / প্রতিটি কলাম কীভাবে পূরণ করবেন: - **Problem:** the exact task solved, in one line. - **Dataset:** name, size, and whether public. - **Method:** the core algorithm/architecture, named specifically (not just “deep learning”). - **Metric:** which evaluation metric(s) were used — flag if only accuracy was reported on imbalanced data. - **Result:** the headline number(s). - **Limitation:** the paper’s own stated weakness, or one you observe. - **Gap:** what remains unaddressed even after this paper. - **Possible Extension:** a concrete next step this row’s gap suggests.

**Pattern-spotting tip:** if 3+ rows share the same limitation (e.g., “no external validation” or “only tested on English text”), that repeated pattern is much stronger evidence of a genuine research gap than any single paper’s stated limitation. প্যাটার্ন খোঁজার পরামর্শ: যদি ৩+ সারিতে একই সীমাবদ্ধতা দেখা যায় (যেমন “কোনো external validation নেই” বা “শুধু ইংরেজি টেক্সটে টেস্ট করা”), তাহলে এই পুনরাবৃত্ত প্যাটার্নই একটি একক পেপারের দাবির চেয়ে অনেক বেশি শক্তিশালী প্রমাণ যে সেটি একটি আসল রিসার্চ গ্যাপ।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Fill the matrix across several papers — a limitation repeating across 3+ papers is stronger gap evidence than any single paper’s claim. / একাধিক পেপার জুড়ে matrix পূরণ করুন — ৩+ পেপারে পুনরাবৃত্ত সীমাবদ্ধতা একটি পেপারের দাবির চেয়ে শক্তিশালী প্রমাণ।

# 12. 16 TYPES OF RESEARCH GAPS / ১৬ ধরনের রিসার্চ গ্যাপ

**Definition / সংজ্ঞা:** A research gap is a missing piece of knowledge, tool, dataset, method, or validation in existing literature that must be resolved to meaningfully advance the field — not simply “nobody has tried this exact combination yet” (see Section 15). This typology is adapted from gap-classification frameworks in the research-methodology literature \[13\]–\[15\]. রিসার্চ গ্যাপ হলো বর্তমান সাহিত্যে জ্ঞান, টুল, ডেটাসেট, পদ্ধতি বা validation-এর এমন একটি অনুপস্থিত অংশ যা সমাধান করলে ক্ষেত্রটি সত্যিকারভাবে এগিয়ে যায় — শুধু “এই সুনির্দিষ্ট combination আগে কেউ চেষ্টা করেনি” তা যথেষ্ট নয়। এই শ্রেণীবিভাগ গবেষণা-পদ্ধতি সাহিত্যের গ্যাপ-শ্রেণীকরণ কাঠামো থেকে অভিযোজিত \[13\]–\[15\]।

For each gap type below: **Definition → Two real-world-style examples → How to detect it → A possible research direction.** প্রতিটি গ্যাপের জন্য: **সংজ্ঞা → দুটি বাস্তবসম্মত উদাহরণ → কীভাবে শনাক্ত করবেন → একটি সম্ভাব্য গবেষণা দিক।**

## 12.1 Knowledge Gap / নলেজ গ্যাপ

**English:** A key fact, relationship, or concept is completely undocumented in existing literature. **বাংলা:** বর্তমান সাহিত্যে কোনো একটি সুনির্দিষ্ট তথ্য, সম্পর্ক বা ধারণা সম্পূর্ণ অজানা বা অনুপস্থিত।

- **Example 1:** No study has documented how a specific input feature relates to a specific outcome in a given domain.
- **Example 2:** The relationship between social-media posting frequency and early symptoms of a specific mental-health condition has never been quantitatively studied.
- **How to detect:** A systematic search returns zero papers connecting two concepts that are individually well studied.
- **Possible direction:** Design a targeted observational or experimental study that measures the missing relationship directly.

## 12.2 Methodological Gap / মেথডলজিক্যাল গ্যাপ

**English:** Existing methods are flawed, outdated, or inappropriate for solving the problem. **বাংলা:** প্রচলিত পদ্ধতি ত্রুটিপূর্ণ, সেকেলে, বা সমস্যা সমাধানের জন্য অনুপযুক্ত।

- **Example 1:** Standard K-Fold cross-validation is routinely applied to temporal data, silently allowing future information to leak into training.
- **Example 2:** Sentiment-analysis pipelines built for formal English text are applied unmodified to code-mixed social-media text, where the tokenization assumptions break down.
- **How to detect:** Multiple papers use the same method despite it violating a stated assumption of the data (e.g., independence, stationarity).
- **Possible direction:** Propose and validate a method-appropriate alternative (e.g., TimeSeriesSplit, or a tokenizer designed for code-mixed text).

## 12.3 Dataset Gap / ডেটাসেট গ্যাপ

**English:** A lack of high-quality, standardized, or representative datasets to train or evaluate models. **বাংলা:** মডেল ট্রেনিং বা মূল্যায়নের জন্য উচ্চ-মানের, প্রমিত বা প্রতিনিধিত্বমূলক ডেটাসেটের অভাব।

- **Example 1:** No large, public, standardized benchmark exists for hate-speech detection in a specific low-resource language.
- **Example 2:** Publicly available medical-imaging datasets for a specific rare disease contain fewer than 200 labeled cases total.
- **How to detect:** A literature review finds every paper on the topic using a private, small, or inconsistently labeled dataset.
- **Possible direction:** Curate, annotate (with documented inter-annotator agreement), and publicly release a new benchmark dataset.

## 12.4 Performance Gap / পারফরম্যান্স গ্যাপ

**English:** Existing systems fail to reach the accuracy, speed, or precision levels required for high-stakes deployment. **বাংলা:** বর্তমান সিস্টেমগুলোর নির্ভুলতা, গতি বা precision বাস্তব উচ্চ-ঝুঁকির প্রয়োগের জন্য যথেষ্ট নয়।

- **Example 1:** The best published model achieves 80% recall, but the clinical use case requires at least 95% recall to be safe to deploy.
- **Example 2:** Real-time fraud detection requires sub-100ms inference, but the best-performing published model needs 800ms per prediction.
- **How to detect:** Compare the SOTA number in recent papers against the documented deployment threshold in the target industry or domain.
- **Possible direction:** Investigate architectural or ensembling changes that specifically target the metric that falls short (not overall accuracy).

## 12.5 Context Gap / কনটেক্সট গ্যাপ

**English:** A well-known algorithm has never been tested or applied within a specific new context or environment. **বাংলা:** একটি প্রচলিত অ্যালগরিদম সম্পূর্ণ নতুন কোনো পরিবেশ বা প্রেক্ষাপটের অধীনে কখনো পরীক্ষা করা হয়নি।

- **Example 1:** Transformer-based fraud-detection models, well studied for card transactions, have never been tested on mobile-banking micro-transaction data.
- **Example 2:** A crop-disease detection CNN trained and validated only in temperate-climate agriculture has never been tested on tropical crop varieties.
- **How to detect:** The method is mature (5+ years of literature) in one domain but has zero citations applying it in your target domain.
- **Possible direction:** Apply the method in the new context and document exactly which domain-specific adaptations were necessary.

## 12.6 Population Gap / পপুলেশন গ্যাপ

**English:** Models are trained on data skewed toward one specific demographic, ignoring other groups. **বাংলা:** মডেলগুলো কেবল একটি নির্দিষ্ট শ্রেণীর ডেটা দিয়ে ট্রেইনড, ফলে অন্য শ্রেণীর ওপর কাজ করে না।

- **Example 1:** Skin-lesion classifiers are trained predominantly on light-skin-tone images, degrading accuracy on darker skin tones.
- **Example 2:** Speech-recognition systems are trained mostly on adult voices, performing poorly on children’s speech patterns.
- **How to detect:** The dataset section reports demographic breakdown showing severe skew, or reports no demographic breakdown at all.
- **Possible direction:** Collect a demographically balanced supplementary dataset and report group-wise (disaggregated) performance.

## 12.7 Temporal Gap / টেম্পোরাল গ্যাপ

**English:** Models fail to handle temporal shifts, seasonal changes, or concept drifts over time. **বাংলা:** মডেল সময়ের সাথে ডেটার প্যাটার্ন পরিবর্তন বা পরিবর্তনশীল ডেটার সাথে খাপ খাইয়ে নিতে পারে না।

- **Example 1:** A spam classifier trained on 2018 spam patterns fails badly against 2026-style spam that uses different vocabulary and tactics.
- **Example 2:** A retail demand-forecasting model trained on pre-pandemic purchasing data was never re-validated against post-pandemic consumer behaviour.
- **How to detect:** The paper’s test set is drawn from the same time window as the training set, with no forward-looking validation.
- **Possible direction:** Evaluate the model on a strictly later time window and measure the performance decay rate over time.

## 12.8 Geographic Gap / জিওগ্রাফিক গ্যাপ

**English:** Existing works are limited to a specific region or country, failing to adapt globally. **বাংলা:** গবেষণার ডেটা ও ফলাফল কেবল একটি নির্দিষ্ট দেশ বা অঞ্চলে সীমাবদ্ধ।

- **Example 1:** A crop-disease detection dataset and model were built entirely from farms in one country’s specific climate and soil conditions.
- **Example 2:** An urban traffic-prediction model trained on one megacity’s road network has never been tested on smaller or differently structured cities.
- **How to detect:** All cited datasets and validation sets originate from a single country or region, with no cross-region test.
- **Possible direction:** Test the existing method on a geographically distinct dataset and quantify the transfer gap.

## 12.9 Theoretical Gap / থিওরিটিক্যাল গ্যাপ

**English:** A lack of mathematical proofs, convergence guarantees, or statistical frameworks explaining why a model works. **বাংলা:** মডেলটি কেন কাজ করছে তার কোনো গাণিতিক প্রমাণ, কনভার্জেন্স গ্যারান্টি বা তাত্ত্বিক ভিত্তি নেই।

- **Example 1:** A novel loss function shows strong empirical results across several papers, but no work has proven it converges under standard gradient-descent assumptions.
- **Example 2:** An attention-based architecture variant works well in practice, but there is no theoretical analysis of what inductive bias it actually encodes.
- **How to detect:** The method is cited primarily for its empirical performance table, never for a theoretical contribution.
- **Possible direction:** Derive convergence bounds or a theoretical justification, even a partial one under simplifying assumptions.

## 12.10 Practical/Application Gap / প্র্যাক্টিক্যাল বা অ্যাপ্লিকেশন গ্যাপ

**English:** Excellent performance in laboratory simulations fails when translated to real-world edge devices. **বাংলা:** ল্যাবরেটরিতে মডেলটি দারুণ পারফর্ম করলেও বাস্তব বা edge ডিভাইসে তা প্রয়োগযোগ্য নয়।

- **Example 1:** A 99%-accurate defect-detection model is too large (500MB, 1.2s/inference) to run on a factory-floor IoT sensor with limited memory.
- **Example 2:** A conversational AI model performs well in curated benchmark dialogues but degrades sharply on real, messy customer-support transcripts.
- **How to detect:** The paper reports only benchmark accuracy, with no discussion of model size, latency, or deployment environment.
- **Possible direction:** Apply model compression (quantization, distillation, pruning) and report the accuracy-vs-efficiency trade-off curve.

## 12.11 Evaluation Gap / ইভ্যালুয়েশন গ্যাপ

**English:** Prevailing research uses weak, biased, or deceptive evaluation metrics (e.g., accuracy instead of macro-F1 on imbalanced sets). **বাংলা:** প্রচলিত গবেষণায় দুর্বল বা একতরফা মূল্যায়ন প্যারামিটার ব্যবহার করা হয়েছে।

- **Example 1:** A whole sub-field reports only accuracy on a dataset that is 95:5 imbalanced, without ever reporting precision, recall, or PR-AUC.
- **Example 2:** Image-captioning papers compare BLEU scores only, without any human evaluation of caption usefulness or factual correctness.
- **How to detect:** Cross-check whether the same one or two metrics appear in every paper in the sub-field, regardless of data characteristics.
- **Possible direction:** Re-evaluate leading published models using a more appropriate metric suite and report how the rankings change.

## 12.12 Reproducibility Gap / রিপ্রোডিউসিবিলিটি গ্যাপ

**English:** Missing code, raw data, or hyperparameters prevent other researchers from validating claims. **বাংলা:** সোর্স কোড, হাইপারপ্যারামিটার বা আসল ডেটা না থাকার কারণে অন্য গবেষকরা কাজটি পুনরায় করতে পারছেন না।

- **Example 1:** A paper reports state-of-the-art results but provides no public code repository and no random seed.
- **Example 2:** Three independent papers claim to beat the same baseline by similar margins, but no two of them use identical preprocessing, making the comparisons unverifiable.
- **How to detect:** Search for a linked GitHub/GitLab repository in the paper or its supplementary material; check whether hyperparameters are tabulated.
- **Possible direction:** Attempt a faithful re-implementation and publish a replication study reporting what did or did not reproduce.

## 12.13 Generalization Gap / জেনারেলাইজেশন গ্যাপ

**English:** Models suffer from severe performance drop when evaluated on out-of-distribution (OOD) scenarios. **বাংলা:** ট্রেনিং ডেটার বাইরের সামান্য ভিন্ন বৈশিষ্ট্যের ডেটা দিলে মডেলের পারফরম্যান্স ধসে পড়ে।

- **Example 1:** A skin-cancer classifier trained on one hospital’s imaging equipment loses 15+ points of F1 when tested on a different hospital’s differently calibrated scanners.
- **Example 2:** A question-answering model trained on Wikipedia-style text performs far worse on informal forum text with the same underlying question types.
- **How to detect:** The paper reports only in-distribution test results, drawn from the same source/collection process as training data.
- **Possible direction:** Externally validate on a genuinely independent dataset and, if a gap is found, explore domain adaptation techniques.

## 12.14 Scalability Gap / স্কেলেবিলিটি গ্যাপ

**English:** Algorithms exhibit quadratic (or worse) computational or memory complexity, rendering them unscalable to massive datasets. **বাংলা:** ডেটার পরিমাণ বাড়লে অ্যালগরিদমের মেমরি বা সিপিইউ প্রয়োজনীয়তা জ্যামিতিক হারে বেড়ে যায়, ফলে বড় স্কেলে চালানো যায় না।

- **Example 1:** Kernel SVM training becomes computationally infeasible beyond roughly one million samples due to its $O(m^2)$–$O(m^3)$ complexity.
- **Example 2:** A graph-neural-network method requiring the full adjacency matrix in memory cannot scale to social-network graphs with hundreds of millions of nodes.
- **How to detect:** The paper’s largest reported experiment uses a suspiciously small dataset relative to real-world deployment scale, with no discussion of scaling behaviour.
- **Possible direction:** Develop or apply an approximate/sparse variant of the method and measure the accuracy-vs-scale trade-off.

## 12.15 Interpretability Gap / ইন্টারপ্রেটেবিলিটি গ্যাপ

**English:** Models operate as highly precise black boxes with zero transparency or explanation of decisions. **বাংলা:** মডেলের সিদ্ধান্তগুলো সম্পূর্ণ অস্বচ্ছ এবং মানুষের পক্ষে বিশ্লেষণ করা অসম্ভব।

- **Example 1:** A deep model used in loan-approval decisions achieves high accuracy but has never been analyzed with any explainability method.
- **Example 2:** A published clinical-risk-prediction model is deployed in a hospital pilot with no per-prediction explanation available to the treating physician.
- **How to detect:** The paper reports performance metrics only, with no SHAP, LIME, attention visualization, or equivalent analysis (see Section 6.3).
- **Possible direction:** Apply post-hoc explainability tools to the existing model and check whether the explanations reveal previously invisible biases.

## 12.16 Robustness Gap / রবাস্টনেস গ্যাপ

**English:** Models are highly vulnerable to adversarial attacks, minor noise, or sensor degradation. **বাংলা:** সামান্য নয়েজ বা adversarial আক্রমণের মুখে মডেলটি সম্পূর্ণ ভেঙে পড়ে।

- **Example 1:** An image classifier’s predictions flip with imperceptible pixel perturbations that are invisible to the human eye \[16\], \[17\].
- **Example 2:** A network-intrusion-detection model’s recall has never been measured against traffic deliberately crafted to evade detection.
- **How to detect:** The paper reports performance on clean test data only, with no adversarial, noisy, or corrupted-input evaluation.
- **Possible direction:** Apply a standard adversarial-attack or noise-injection benchmark and report the resulting performance degradation.

> **🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা** - Always name which of the 16 gap types your gap belongs to — an uncategorizable gap is usually an unverified one. / আপনার গ্যাপ ১৬টির কোনটির অন্তর্ভুক্ত তা সবসময় নাম দিন — শ্রেণীবিহীন গ্যাপ সাধারণত অযাচাইকৃত। - Every gap type has a matching detection method and a matching research direction — use both, not just the definition. / প্রতিটি গ্যাপ-ধরনের নিজস্ব শনাক্তকরণ পদ্ধতি ও গবেষণা দিক আছে — শুধু সংজ্ঞা নয়, দুটোই ব্যবহার করুন।

# 13. 14-STEP RESEARCH GAP DETECTION FRAMEWORK / ১৪-ধাপ রিসার্চ গ্যাপ শনাক্তকরণ কাঠামো

| Step | English                                                                                                                      | বাংলা                                                                                           |
|:-----|:-----------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------------------------------------------------------|
| 1    | **Understand the problem.** State it clearly in both mathematical and business/scientific terms.                             | সমস্যাটি গাণিতিক ও সাধারণ ভাষায় স্পষ্টভাবে বুঝুন।                                                    |
| 2    | **Comprehensive search.** Collect survey papers, systematic reviews, and top papers from the last 2-3 years.                 | সাম্প্রতিক (২-৩ বছর) সেরা পেপার ও সার্ভে সংগ্রহ করুন।                                                |
| 3    | **Map out existing methods.** List all standard models/algorithms/pipelines currently in use.                                | প্রচলিত সব মডেল/পদ্ধতির তালিকা তৈরি করুন।                                                          |
| 4    | **Analyze declared limitations.** Catalog what previous authors honestly admitted as weak points.                            | পূর্ববর্তী গবেষকদের স্বীকৃত সীমাবদ্ধতা তালিকাভুক্ত করুন।                                                 |
| 5    | **Audit evaluation metrics.** Check whether prior studies used weak or biased metrics.                                       | পূর্ববর্তী গবেষণায় দুর্বল মেট্রিক ব্যবহৃত হয়েছে কিনা যাচাই করুন।                                         |
| 6    | **Evaluate dataset constraints.** Check whether previous work used small/private/skewed data.                                | ডেটাসেট ছোট/ব্যক্তিগত/skewed কিনা যাচাই করুন।                                                      |
| 7    | **Identify conflicting results.** Find where different studies report contradictory findings.                                | পরস্পরবিরোধী ফলাফল খুঁজে বের করুন।                                                                  |
| 8    | **Formulate possible gaps.** Draft a list of what’s missing across the literature (use Section 12).                          | সাহিত্যে অনুপস্থিত বিষয়ের একটি খসড়া তালিকা তৈরি করুন (Section 12 ব্যবহার করুন)।                       |
| 9    | **Cross-compare papers.** Fill in the Literature Survey Matrix (Section 11) to check if any paper already resolved your gap. | Literature Survey Matrix (Section 11) পূরণ করে কোনো পেপার ইতিমধ্যে গ্যাপটি সমাধান করেছে কিনা দেখুন। |
| 10   | **Perform keyword variations.** Re-search using synonyms and different terminology.                                          | ভিন্ন প্রতিশব্দ/পরিভাষা দিয়ে পুনরায় সার্চ করুন।                                                       |
| 11   | **Trace citation chains.** Follow citations forward and backward from key papers.                                            | মূল পেপারগুলোর citation forward ও backward ট্র্যাক করুন।                                             |
| 12   | **Draft the gap statement.** Write a clear, precise declaration citing supporting literature.                                | সাহিত্য সাইট করে গ্যাপের একটি স্পষ্ট বিবৃতি লিখুন।                                                    |
| 13   | **Consult experts.** Present the gap statement to advisors/peers for relevance verification.                                 | উপদেষ্টা/সহকর্মীর কাছে গ্যাপ স্টেটমেন্ট যাচাই করুন।                                                   |
| 14   | **Final verification.** Confirm the gap cannot be solved by simply combining existing off-the-shelf tools.                   | নিশ্চিত করুন যে গ্যাপটি existing টুল একত্রিত করেই সমাধান করা যায় না।                                 |

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Gap-finding is a search process, not a guess — synonyms, surveys, and citation chains (steps 10-11) catch what one search misses. / গ্যাপ খোঁজা একটি অনুসন্ধান প্রক্রিয়া, অনুমান নয় — প্রতিশব্দ, সার্ভে ও citation chain একক সার্চে মিস হওয়া জিনিস ধরে।

# 14. GAP vs LIMITATION vs WEAKNESS vs OPEN PROBLEM vs FUTURE WORK vs OPPORTUNITY vs NOVELTY / বিভিন্ন সম্পর্কিত ধারণার পার্থক্য

Beginners frequently confuse these terms — a major reason papers/theses get rejected or criticized. শুরুর দিকের গবেষকরা প্রায়ই এই টার্মগুলো গুলিয়ে ফেলেন — এটি পেপার/থিসিস প্রত্যাখ্যানের একটি বড় কারণ।

| Term                     | English definition                                                                          | বাংলা সংজ্ঞা                                                                       | Example                                                                                |
|:-------------------------|:--------------------------------------------------------------------------------------------|:----------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------|
| **Research Gap**         | A missing scientific link across the *entire field’s* literature.                           | সমগ্র ক্ষেত্রের সাহিত্যে একটি অনুপস্থিত বৈজ্ঞানিক যোগসূত্র।                                | “No existing segmentation model preserves spatial detail under extreme down-sampling.” |
| **Limitation**           | A design boundary honestly declared by *this paper’s* authors.                              | এই পেপারের “O লেখকরা স্বেচ্ছায় জানানো একটি সীমা।                                    | ur model was only evaluated on high-resolution grayscale images.”                      |
| **Weakness**             | A flaw or poor design choice in a specific paper.                                           | নির্দিষ্ট পেপারে থাকা একটি ত্রুটি বা দুর্বল ডিজাইন।                                     | “The authors did not scale features before SVM, making results unstable.”              |
| **Open Problem**         | A massive, well-known challenge the entire global community has struggled with for decades. | বৈশ্বিক গবেষক সম্প্রদায় দশকের পর দশক ধরে যে বিশাল চ্যালেঞ্জ সমাধান করতে পারেনি।        | “Proving whether P = NP.”                                                              |
| **Future Work**          | Next steps *these specific authors* plan for their own study.                               | *এই লেখকদের* নিজেদের গবেষণার পরবর্তী পরিকল্পিত ধাপ।                                 | “We plan to test this pipeline on 3D volumetric MRI next.”                             |
| **Research Opportunity** | A broad, promising domain where researchers *could* work — not yet a specific gap.          | একটি বিস্তৃত সম্ভাবনাময় ক্ষেত্র যেখানে গবেষণা করা যেতে পারে — tr এখনো নির্দিষ্ট গ্যাপ নয়। | “Using generative models to synthesize aining data.”                                   |
| **Novelty**              | The unique, original contribution *this study* introduces to resolve a gap.                 | কোনো গ্যাপ সমাধানের জন্য *এই গবেষণার* নিজস্ব মৌলিক অবদান।                            | “We introduce a dual-path skip connection preserving spatial grids.”                   |

Why beginners confuse them / কেন এগুলো গুলিয়ে যায়: All of them sound like “something is missing.” The key discriminator is **scope** — is the missing piece missing from *the whole field* (gap/open problem) or just *this one paper* (limitation/weakness/future work)? And is it a *problem to solve* (gap) or a *solution being offered* (novelty)? সবগুলোই “কিছু একটা অনুপস্থিত” মনে হয়। মূল পার্থক্যকারী হলো পরিধি — অনুপস্থিত অংশটি পুরো ক্ষেত্র থেকে নাকি একটি নির্দিষ্ট পেপার থেকে? এবং এটি কি *সমাধান করার মতো একটি সমস্যা (gap) নাকি একটি প্রস্তাবিত সমাধান* (novelty)?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - The discriminator is **scope** (field-wide gap vs paper-specific limitation) and **direction** (problem = gap, solution = novelty). / পার্থক্যকারী হলো পরিধি (ক্ষেত্র-জোড়া গ্যাপ বনাম পেপার-নির্দিষ্ট limitation) এবং দিক (সমস্যা = গ্যাপ, সমাধান = novelty)।

# 15. HOW TO VERIFY A RESEARCH GAP / রিসার্চ গ্যাপ কীভাবে যাচাই করবেন

## The Golden Rule / মূল সোনালী নিয়ম

**“Nobody has done this before” is NOT sufficient evidence of a valid research gap.** **“এর আগে কেউ এটি করেনি” — এটি একা কোনো সঠিক রিসার্চ গ্যাপের প্রমাণ নয়।**

### English

Just because no one has applied a highly specific algorithm to an obscure local dataset does not mean it is a scientifically valuable gap — it must represent a *meaningful* challenge that, once resolved, actually advances understanding, performance, or practice in the field. Applying an off-the-shelf classifier to a new small local dataset without any architectural change, domain-specific insight, or resolution of a real limitation is considered superficial research.

### বাংলা

কোনো সুনির্দিষ্ট অ্যালগরিদম একটি অস্পষ্ট local ডেটাসেটে আগে কেউ প্রয়োগ করেনি বলেই তা মূল্যবান রিসার্চ গ্যাপ হয় না — এটি অবশ্যই অর্থপূর্ণ চ্যালেঞ্জ প্রতিনিধিত্ব করতে হবে, যা সমাধান হলে ক্ষেত্রটির বোঝাপড়া, performance বা প্রয়োগে সত্যিকারের অগ্রগতি হয়। কোনো architectural পরিবর্তন, domain-specific insight বা বাস্তব সীমাবদ্ধতার সমাধান ছাড়া off-the-shelf classifier একটি নতুন ছোট local ডেটাসেটে প্রয়োগ করা superficial গবেষণা হিসেবে গণ্য হয়।

## Systematic Verification Checklist / পদ্ধতিগত যাচাই চেকলিস্ট

- [ ] **Synonym search** — Searched using different academic terms (e.g., “Regularization” vs “Penalty” vs “Weight Decay”)? / ভিন্ন প্রতিশব্দ দিয়ে সার্চ করা হয়েছে কি?
- [ ] **Survey/systematic-review audit** — Read at least 3 recent survey papers; they usually list open needs explicitly. / অন্তত ৩টি সাম্প্রতিক সার্ভে পেপার পড়া হয়েছে কি?
- [ ] **Citation-chain forward-tracking** — Checked who has cited the field’s primary papers since publication. / মূল পেপারগুলোকে পরে কারা সাইট করেছে তা চেক করা হয়েছে কি?
- [ ] **Dataset check** — Confirmed no public dataset already resolves the proposed gap. / কোনো পাবলিক ডেটাসেট এই গ্যাপ আগেই সমাধান করেনি তা নিশ্চিত করা হয়েছে কি?
- [ ] **Meaningfulness check** — Resolving this gap would produce a real, significant improvement (accuracy, speed, interpretability, fairness, etc.), not a marginal or cosmetic one. / এই গ্যাপ সমাধান করলে সত্যিকারের উল্লেখযোগ্য উন্নতি হবে কিনা তা যাচাই করা হয়েছে কি?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - “Nobody has done this before” is never enough alone — a gap must be meaningful and literature-supported. / “আগে কেউ করেনি” একা যথেষ্ট নয় — গ্যাপ অর্থপূর্ণ ও সাহিত্য-সমর্থিত হতে হবে।

# 16. CRITICAL PAPER ANALYSIS FRAMEWORK (14 DIMENSIONS) / সমালোচনামূলক পেপার বিশ্লেষণ কাঠামো (১৪টি মাত্রা)

Evaluate every paper (yours or someone else’s) along these 14 dimensions. প্রতিটি পেপার (নিজের বা অন্যের) এই ১৪টি মাত্রায় মূল্যায়ন করুন:

| \#  | Dimension           | Key question (English)                                                    | মূল প্রশ্ন (বাংলা)                                        |
|:----|:--------------------|:--------------------------------------------------------------------------|:-------------------------------------------------------|
| 1   | **Problem**         | Is the problem well-defined and practically/theoretically important?      | সমস্যাটি সুনির্দিষ্ট এবং গুরুত্বপূর্ণ কি?                       |
| 2   | **Novelty**         | What is actually new — method, combination, or context?                   | আসলে নতুন কী — পদ্ধতি, সংমিশ্রণ, নাকি প্রেক্ষাপট?           |
| 3   | **Method**          | Is the architecture mathematically sound and appropriate for the problem? | আর্কিটেকচার গাণিতিকভাবে যুক্তিসঙ্গত ও উপযুক্ত কি?            |
| 4   | **Dataset**         | Is the dataset size/representativeness enough to justify the claims?      | ডেটাসেট দাবি সমর্থন করার মতো যথেষ্ট বড়/প্রতিনিধিত্বমূলক কি? |
| 5   | **Baselines**       | Are comparison models fair, strong, and properly optimized?               | তুলনার মডেলগুলো fair, শক্তিশালী ও ঠিকভাবে টিউন করা কি?    |
| 6   | **Metrics**         | Are metrics balanced/appropriate (e.g., F1 for skewed data)?              | মেট্রিক সঠিক ও ভারসাম্যপূর্ণ কি?                           |
| 7   | **Experiments**     | Are experiments statistically stable, randomized, and replicated?         | পরীক্ষাগুলো পরিসংখ্যানগতভাবে স্থিতিশীল ও পুনরাবৃত্ত কি?       |
| 8   | **Results**         | Are improvements meaningful, or minor increments on tiny splits?          | উন্নতি অর্থপূর্ণ, নাকি ছোট split-এ সামান্য বৃদ্ধি?            |
| 9   | **Statistics**      | Is there statistical evidence (t-test, std deviation)?                    | পরিসংখ্যানগত প্রমাণ (t-test, std dev) আছে কি?            |
| 10  | **Ablation**        | Is each module’s exact contribution demonstrated?                         | প্রতিটি module-এর অবদান প্রমাণিত কি?                     |
| 11  | **Reproducibility** | Can another researcher run the code and match results?                    | অন্য কেউ কোড চালিয়ে একই ফলাফল পেতে পারবে কি?            |
| 12  | **Generalization**  | Does it work on out-of-distribution/external datasets?                    | Out-of-distribution ডেটায় কাজ করে কি?                  |
| 13  | **Limitations**     | Are weaknesses/boundaries honestly discussed?                             | দুর্বলতা সততার সাথে আলোচিত কি?                           |
| 14  | **Practical Value** | Does this contribution actually matter for real deployment?               | এই অবদান বাস্তব প্রয়োগে গুরুত্বপূর্ণ কি?                      |

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Run every paper — including your own — through all 14 dimensions; weak points cluster together. / প্রতিটি পেপার (নিজেরটিসহ) ১৪টি মাত্রায় যাচাই করুন; দুর্বলতাগুলো একসাথে ঘটে।

# 17. 16 RESEARCH PAPER RED FLAGS / ১৬টি গবেষণাপত্র রেড ফ্ল্যাগ

For each: **What it means → Why it’s problematic → How to detect it.** প্রতিটির জন্য: এর অর্থ কী → কেন সমস্যাজনক → কীভাবে শনাক্ত করবেন।

| \#  | Red Flag                                     | English                                                                                                                     | বাংলা                                                                     |
|:----|:---------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------|
| 1   | **Very small dataset without justification** | Fewer than a few hundred samples on complex tasks → high overfitting risk; check the dataset-size statement in methodology. | জটিল কাজে কয়েকশোর কম নমুনা → ওভারফিটিং ঝুঁকি বেশি।                           |
| 2   | **Weak baselines**                           | Comparing a complex proposed model only against trivial/untuned baselines creates a false sense of superiority.             | দুর্বল বেসলাইনের সাথে তুলনা করে মিথ্যা শ্রেষ্ঠত্বের ধারণা তৈরি করা।              |
| 3   | **Data leakage**                             | Preprocessing fit on the entire dataset before splitting inflates reported accuracy artificially.                           | পুরো ডেটাসেটে preprocessing fit করলে accuracy কৃত্রিমভাবে বাড়ে।              |
| 4   | **Unclear train/test split**                 | No stated ratio/method → possible overlap → hidden memorization.                                                            | Split অস্পষ্ট থাকলে overlap ও মুখস্থ করার ঝুঁকি থাকে।                           |
| 5   | **Only one evaluation metric**               | Reporting raw accuracy alone on imbalanced data is deceptive.                                                               | Imbalanced ডেটায় শুধু accuracy রিপোর্ট করা বিভ্রান্তিকর।                       |
| 6   | **No statistical analysis**                  | Raw metric differences without std dev/significance tests could be pure chance.                                             | Std dev/significance test ছাড়া পার্থক্য নিছক দৈব হতে পারে।                  |
| 7   | **No ablation when necessary**               | A complex hybrid model without ablation makes it impossible to know which part actually helps.                              | Ablation ছাড়া বোঝা যায় না কোন অংশ আসলে সাহায্য করছে।                       |
| 8   | **Cherry-picked results**                    | Reporting only the best of many runs hides instability.                                                                     | অনেক ট্রায়ালের মধ্যে শুধু সেরাগুলো দেখানো অস্থিরতা লুকায়।                        |
| 9   | **No error analysis**                        | High accuracy reported but no inspection of *where/why* it fails.                                                           | High accuracy দেখানো কিন্তু কোথায়/কেন ভুল হচ্ছে তা না দেখানো।                 |
| 10  | **Unrealistic assumptions**                  | Ideal conditions that never hold in real deployment.                                                                        | বাস্তবে কখনো সত্য হয় না এমন আদর্শ শর্ত ধরে নেওয়া।                             |
| 11  | **No comparison with recent methods**        | Only comparing to old methods, ignoring recent SOTA.                                                                        | শুধু পুরনো মডেলের সাথে তুলনা, সাম্প্রতিক SOTA উপেক্ষা করা।                       |
| 12  | **Claims stronger than evidence**            | Generalized claims from narrow, small-scale experiments.                                                                    | সংকীর্ণ পরীক্ষা থেকে অতিরঞ্জিত সাধারণ দাবি।                                  |
| 13  | **Missing implementation details**           | No hyperparameters/optimizer/epoch info → non-reproducible.                                                                 | হাইপারপ্যারামিটার/অপ্টিমাইজার তথ্য না থাকলে reproduce করা যায় না।            |
| 14  | **Poor reproducibility**                     | No code/dataset/environment sharing.                                                                                        | কোড/ডেটাসেট/এনভায়রনমেন্ট শেয়ার না করা।                                     |
| 15  | **Overfitting to one specific dataset**      | High score on one custom dataset, never validated on any public benchmark.                                                  | একটি কাস্টম ডেটাসেটে ভালো ফলাফল কিন্তু কোনো পাবলিক বেঞ্চমার্কে যাচাই করা হয়নি। |
| 16  | **No computational-cost analysis**           | A “complex model” proposed with no reported training time/parameters/FLOPs.                                                 | জটিল মডেল প্রস্তাব করা হয়েছে কিন্তু runtime/parameter/FLOPs রিপোর্ট নেই।       |

Practical detection tip / বাস্তব শনাক্তকরণ টিপ: Red flags rarely appear alone — a paper with weak baselines (flag \#2) very often also lacks statistical testing (flag \#6) and ablation studies (flag \#7), because all three stem from the same underlying issue: insufficient experimental rigor. রেড ফ্ল্যাগ সাধারণত একা আসে না — দুর্বল বেসলাইন (#2) থাকলে প্রায়ই statistical testing (#6) ও ablation (#7)-ও অনুপস্থিত থাকে, কারণ তিনটিই একই মূল সমস্যা থেকে আসে: পর্যাপ্ত experimental কঠোরতার অভাব।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Red flags rarely appear alone — weak baselines, missing stats, and missing ablation share one root cause: low rigor. / Red flag একা আসে না — দুর্বল বেসলাইন, statistics ও ablation-এর অভাব একই মূল কারণ থেকে আসে।

# 18. ACADEMIC PAPER NOTE-TAKING TEMPLATE / গবেষণাপত্র নোট-টেকিং টেমপ্লেট

    ### 1. Paper Metadata / পেপার মেটাডেটা
    - Title:
    - Authors:  [Never fabricate author names/affiliations unless directly stated!]
    - Year:
    - Venue (Conference/Journal):
    - DOI / Link:

    ### 2. Scientific Core / বৈজ্ঞানিক মূল
    - Problem Statement:
    - Motivation:
    - Research Gap Identified:  [cite specifically what was missing in prior work]
    - Research Question:
    - Proposed Method / Solution:
    - Dataset & Preprocessing:
    - Experimental Setup:
    - Baselines & Metrics:
    - Results & Performance:
    - Scientific Contribution:
    - Limitations & Future Work:

    ### 3. My Critical Analysis / আমার সমালোচনামূলক বিশ্লেষণ
    - Red Flags Detected (see Section 17):
    - Ablation Study Validity:
    - Reproducibility Evaluation:
    - My Proposed Extensions:

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Never fabricate author names or findings in your notes — leave a field blank rather than guess. / নোটে কখনো লেখকের নাম বা ফলাফল বানাবেন না — অনুমান না করে ফাঁকা রাখুন।

# 19. FROM RESEARCH GAP TO RESEARCH TOPIC (WORKED EXAMPLES) / রিসার্চ গ্যাপ থেকে রিসার্চ টপিক (বাস্তব উদাহরণ)

### General pipeline / সাধারণ পাইপলাইন

> `Observation → Problem → Existing Research → Limitation → Research Gap → Research Question → Hypothesis → Method → Experiment → Result → Contribution`

পর্যবেক্ষণ → সমস্যা → বিদ্যমান গবেষণা → সীমাবদ্ধতা → রিসার্চ গ্যাপ → রিসার্চ প্রশ্ন → হাইপোথিসিস → পদ্ধতি → পরীক্ষা → ফলাফল → অবদান।

### Worked Example 1 — Dataset Gap

- **Observation:** Bangla hate-speech datasets are small and privately held.
- **Existing Research:** Most hate-speech detection benchmarks are English-only.
- **Gap:** Dataset Gap — no large, public, standardized Bangla hate-speech benchmark exists.
- **Research Question:** “Can a publicly released, annotated Bangla hate-speech corpus of N≥50,000 samples, with documented inter-annotator agreement, enable transformer-based models to reach comparable F1 to English benchmarks?”
- বাংলা: পর্যবেক্ষণ — বাংলা hate-speech ডেটাসেট ছোট ও ব্যক্তিগত; বিদ্যমান গবেষণা — বেশিরভাগ বেঞ্চমার্ক শুধু ইংরেজিতে; গ্যাপ — Dataset Gap; প্রশ্ন — একটি বড়, পাবলিক, প্রমিত বাংলা hate-speech corpus তৈরি করলে transformer মডেল কি ইংরেজি বেঞ্চমার্কের কাছাকাছি F1 পেতে পারে?

### Worked Example 2 — Generalization Gap

- **Observation:** A skin-cancer classifier trained on hospital A’s imaging equipment performs excellently in-house.
- **Existing Research:** Papers report \>95% accuracy but almost none test on external hospital data.
- **Gap:** Generalization Gap.
- **Research Question:** “How much does classification F1-score drop when a dermoscopic-image classifier trained on Hospital A’s data is externally validated on Hospital B and C’s differently-calibrated imaging equipment, and can domain adaptation reduce this drop?”
- বাংলা: একটি হাসপাতালের ইমেজিং যন্ত্রে ট্রেন করা মডেল অন্য হাসপাতালের ভিন্ন ক্যালিব্রেটেড যন্ত্রে কতটা F1 হারায়, এবং domain adaptation দিয়ে তা কমানো যায় কিনা?

### Worked Example 3 — Interpretability Gap

- **Observation:** A deep model for loan-approval decisions has 92% accuracy but no explanation mechanism.
- **Gap:** Interpretability Gap.
- **Research Question:** “Does adding a SHAP-based post-hoc explanation layer to a gradient-boosted loan-approval model reveal systematic bias against a protected demographic group that is invisible from aggregate accuracy alone?”
- বাংলা: SHAP-ভিত্তিক ব্যাখ্যা যোগ করলে কি loan-approval মডেলে এমন systematic bias ধরা পড়ে যা শুধু aggregate accuracy দেখে বোঝা যায় না?

### Worked Example 4 — Robustness Gap

- **Observation:** A network-intrusion-detection model performs well on clean test data but has never been tested against adversarially crafted traffic.
- **Gap:** Robustness Gap.
- **Research Question:** “How much does detection recall degrade under gradient-based adversarial perturbation of network traffic features, and can adversarial training recover at least 90% of the original recall?”
- বাংলা: Adversarial আক্রমণে network-intrusion মডেলের recall কতটা কমে, এবং adversarial training দিয়ে তা পুনরুদ্ধার করা যায় কিনা?

### Worked Example 5 — Reproducibility Gap

- **Observation:** Three high-profile NLP papers claim SOTA on the same task, but none release code or exact hyperparameters.
- **Gap:** Reproducibility Gap.
- **Research Question:** “Do the reported SOTA improvements in these three papers replicate under a controlled re-implementation with identical seeds, splits, and hyperparameter budgets?”
- বাংলা: নিয়ন্ত্রিত পুনর্বাস্তবায়নে (একই seed, split, হাইপারপ্যারামিটার বাজেট) কি এই তিনটি পেপারের দাবিকৃত SOTA উন্নতি reproduce করা যায়?

### Worked Example 6 — Performance Gap

- **Observation:** State-of-the-art crop-disease detectors reach 85% F1, but agricultural deployment needs ≥95% to avoid economic loss.
- **Gap:** Performance Gap.
- **Research Question:** “Does combining multi-spectral imaging with RGB input close the performance gap between lab-reported F1 (85%) and the 95% threshold required for field deployment?”
- বাংলা: RGB-এর সাথে multi-spectral imaging যোগ করলে কি ৮৫% থেকে ৯৫% performance gap পূরণ করা সম্ভব?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - The same pipeline (Observation → Gap → Question → Hypothesis → Method → Result) works for every gap type — only the content changes. / একই pipeline সব গ্যাপ-ধরনের জন্য কাজ করে — শুধু বিষয়বস্তু বদলায়।

# 20. FORMULATING RESEARCH QUESTIONS (SMART) / রিসার্চ প্রশ্ন তৈরি করা (SMART)

## Research Gap → Research Question

Bad Research Question (অস্পষ্ট): “Can we make image segmentation better?” - *Critique:* Too broad, non-specific, unmeasurable.

Good Research Question (চমৎকার): “Does incorporating a multi-scale skip path into a Fully Convolutional Network preserve grid resolution in semantic segmentation without increasing parameter count?” - *Critique:* Specific, measurable, feasible, and directly addresses a stated resolution-loss gap.

## SMART Criteria / SMART মানদণ্ড

| Criterion                   | English                                                                          | বাংলা                                                   |
|:----------------------------|:---------------------------------------------------------------------------------|:--------------------------------------------------------|
| Specific (সুনির্দিষ্ট) Focu    | ses on a precise একটি relationship or architecture, not a vague topic.           | নির্দিষ্ট সম্পর্ক বা আর্কিটেকচারে ফোকাস করে, অস্পষ্ট বিষয়ে নয়। |
| **Measurable (পরিমাপযোগ্য)** | Can be scored with a standardized metric (F1, mAP, RMSE, etc.).                  | প্রমিত মেট্রিক দিয়ে পরিমাপ করা যায়।                       |
| **Feasible (বাস্তবায়নযোগ্য)** | Can be computed within realistic time/GPU/data budgets.                          | বাস্তবসম্মত সময়/GPU/ডেটা বাজেটে সম্পন্ন করা যায়।            |
| Novel (নতুন) Expl            | ores a genuinely সত্যি uncharted relationship (verified per Section 15).          | কারের অনাবিষ্কৃত সম্পর্ক অন্বেষণ করে।                        |
| **Testable (পরীক্ষাযোগ্য)**   | Can be experimentally verified *or* disproved — a real hypothesis, not a truism. | পরীক্ষামূলকভাবে প্রমাণ বা খণ্ডন করা যায়।                    |

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A good research question is Specific, Measurable, Feasible, Novel, Testable — “can we make X better?” fails all five. / ভালো research question SMART হয় — “X কি আরও ভালো করা যায়?” পাঁচটিতেই ব্যর্থ।

# 21. NOVELTY ANALYSIS / নতুনত্ব বিশ্লেষণ

## 12 Types of Scientific Novelty / নতুনত্বের ১২টি ধরন

| \#  | Type                     | English                                                                   | বাংলা                              |
|:----|:-------------------------|:--------------------------------------------------------------------------|:-----------------------------------|
| 1   | New Method               | A brand-new algorithm (e.g., the original GAN).                           | সম্পূর্ণ নতুন অ্যালগরিদম।               |
| 2   | Improved Method          | A tweak to an existing architecture that boosts scores.                   | বিদ্যমান আর্কিটেকচারে উন্নতি।         |
| 3   | New Dataset              | A curated, released, standardized benchmark.                              | নতুন প্রমিত ডেটাসেট প্রকাশ।           |
| 4   | New Application          | Applying ML to a high-value domain for the first time.                    | নতুন ক্ষেত্রে ML-এর প্রথম প্রয়োগ।       |
| 5   | New Combination          | Melding two separate architectures (e.g., SE-ResNet).                     | দুটি আর্কিটেকচারের সংমিশ্রণ।          |
| 6   | New Evaluation Framework | A more rigorous scoring method.                                           | নতুন কঠোর মূল্যায়ন পদ্ধতি।             |
| 7   | New Theoretical Insight  | Proving mathematical convergence bounds.                                  | নতুন গাণিতিক তাত্ত্বিক প্রমাণ।         |
| 8   | New Empirical Finding    | Discovering unexpected performance trends.                                | অপ্রত্যাশিত অভিজ্ঞতামূলক আবিষ্কার।      |
| 9   | New Context              | Evaluating in a completely different environment (e.g., edge deployment). | সম্পূর্ণ নতুন পরিবেশে মূল্যায়ন।          |
| 10  | Better Generalization    | Out-of-distribution performance gains.                                    | উন্নত OOD পারফরম্যান্স।               |
| 11  | Better Robustness        | Resistance to noise/adversarial attacks.                                  | নয়েজ/আক্রমণ প্রতিরোধ ক্ষমতা বৃদ্ধি।     |
| 12  | Better Efficiency        | Drastically lower parameter count/GPU hours.                              | দক্ষতা বৃদ্ধি (কম parameter/GPU সময়)। |

## The Danger of Superficial Novelty / নামমাত্র নতুনত্বের বিপদ

### English

**Do NOT assume that applying an existing algorithm to a new dataset automatically represents strong novelty.** Reviewers catch this immediately. Taking a standard off-the-shelf classifier and fitting it on a local dataset — without modifying the architecture, explaining domain-specific features, or resolving a genuine context gap — is considered superficial, low-quality research. Novelty must be *earned* through one of the 12 types above, not merely claimed.

### বাংলা

**কোনো বিদ্যমান অ্যালগরিদম নতুন ডেটাসেটে প্রয়োগ করলেই তা স্বয়ংক্রিয়ভাবে শক্তিশালী নতুনত্ব হয় না।** Reviewer-রা এটি সহজেই ধরে ফেলেন। কোনো architectural পরিবর্তন, domain-specific ব্যাখ্যা বা প্রকৃত context gap সমাধান ছাড়া off-the-shelf classifier local ডেটাসেটে প্রয়োগ করা superficial ও নিম্নমানের গবেষণা হিসেবে গণ্য হয়। নতুনত্ব উপরের ১২টি ধরনের একটির মাধ্যমে “অর্জন” করতে হয়, শুধু দাবি করলেই হয় না।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Applying an existing algorithm to a new dataset is NOT automatic novelty — it must match one of the 12 types. / বিদ্যমান অ্যালগরিদম নতুন ডেটাসেটে প্রয়োগ করলেই novelty হয় না — এটি ১২টি ধরনের একটির সাথে মিলতে হবে।

# 22. REPRODUCIBILITY: THE 10 PILLARS / রিপ্রোডিউসিবিলিটির ১০টি স্তম্ভ

| \#  | Pillar                  | English                                               | বাংলা                                    |
|:----|:------------------------|:------------------------------------------------------|:-----------------------------------------|
| 1   | **Code**                | Clean, commented, public repository link.             | পরিষ্কার, মন্তব্যযুক্ত, পাবলিক কোড রিপোজিটরি। |
| 2   | **Dataset**             | Raw data shared or download instructions given.       | ডেটা শেয়ার বা ডাউনলোড নির্দেশনা দেওয়া।    |
| 3   | **Random Seed**         | Declared seeds (e.g., `seed=42`) for reproducibility. | নির্ধারিত random seed উল্লেখ করা।          |
| 4   | **Environment**         | Conda `.yaml` or Docker files shared.                 | Conda/Docker environment শেয়ার করা।      |
| 5   | **Dependencies**        | Exact package versions (`requirements.txt`).          | নির্দিষ্ট প্যাকেজ ভার্সন তালিকা।             |
| 6   | **Hyperparameters**     | Clear table of learning rates, batch sizes, etc.      | হাইপারপ্যারামিটারের স্পষ্ট টেবিল।           |
| 7   | **Training Details**    | Epochs, convergence curves, hardware setup.           | Epoch, convergence curve, হার্ডওয়্যার তথ্য। |
| 8   | **Evaluation Protocol** | Exact metrics and CV-fold configuration.              | সঠিক মেট্রিক ও CV-fold কনফিগারেশন।        |
| 9   | **Hardware**            | GPU/TPU/RAM constraints reported.                     | GPU/TPU/RAM তথ্য উল্লেখ করা।               |
| 10  | **Model Checkpoints**   | Best-weights files shared (`.pkl`/SavedModel).        | সেরা weight ফাইল শেয়ার করা।              |

Why it matters / কেন গুরুত্বপূর্ণ: without these, no independent researcher can verify a paper’s claims — reproducibility is what separates science from anecdote. এগুলো ছাড়া কোনো স্বাধীন গবেষক পেপারের দাবি যাচাই করতে পারবেন না — reproducibility-ই বিজ্ঞান ও নিছক গল্পের মধ্যে পার্থক্য তৈরি করে।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Missing even 2-3 of the 10 reproducibility pillars (especially code, seed, hyperparameters) makes claims effectively unverifiable. / ১০টি স্তম্ভের ২-৩টি অনুপস্থিত থাকলেই (বিশেষত কোড, seed, হাইপারপ্যারামিটার) দাবি কার্যত অযাচাইযোগ্য হয়ে যায়।

# 23. CRITICAL THINKING MASTER CHECKLIST / সমালোচনামূলক চিন্তাভাবনার মাস্টার চেকলিস্ট

### Problem Questions / সমস্যা সংক্রান্ত

- [ ] Is the motivation framed in both scientific and practical terms?
- [ ] Is the problem statement specific and measurable?

### Dataset Questions / ডেটাসেট সংক্রান্ত

- [ ] Was stratified sampling used, and was skewness checked?
- [ ] Is the dataset public/reproducible?
- [ ] Any leakage risk (see Section 3.6)?

### Method Questions / পদ্ধতি সংক্রান্ত

- [ ] Is the architecture choice mathematically justified or backed by ablation?
- [ ] Are all components explained, not just named?

### Experiment Questions / পরীক্ষা সংক্রান্ত

- [ ] Are baselines strong, modern, and fairly tuned?
- [ ] Was cross-validation or multiple seeds used?

### Evaluation Questions / মূল্যায়ন সংক্রান্ত

- [ ] Are multiple, balanced metrics used, avoiding accuracy bias?
- [ ] Is the metric choice appropriate to class balance/task?

### Result Questions / ফলাফল সংক্রান্ত

- [ ] Are standard deviations/standard errors reported to show significance?
- [ ] Are improvements large enough to matter practically, not just statistically?

### Novelty Questions / নতুনত্ব সংক্রান্ত

- [ ] Is the novel contribution clearly separated from simple dataset-fitting?
- [ ] Which of the 12 novelty types (Section 21) does it fall under?

### Limitation Questions / সীমাবদ্ধতা সংক্রান্ত

- [ ] Are failure states and boundaries transparently declared?
- [ ] Are limitations specific (not generic boilerplate)?

### Research Gap Questions / রিসার্চ গ্যাপ সংক্রান্ত

- [ ] Is the gap supported by survey reviews and keyword variations (Section 15)?
- [ ] Which of the 16 gap types (Section 12) does it belong to?

### Reproducibility Questions / রিপ্রোডিউসিবিলিটি সংক্রান্ত

- [ ] Are seeds, code repositories, and hyperparameter tables fully shared (Section 22)?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Use this checklist as a final pass before trusting a paper’s conclusions — or before submitting your own. / কোনো পেপারের সিদ্ধান্তে বিশ্বাস করার আগে — বা নিজের পেপার জমা দেওয়ার আগে — এই checklist দিয়ে শেষবার যাচাই করুন।

# 24. ONE-PAGE PAPER SUMMARY TEMPLATE / এক-পৃষ্ঠার পেপার সামারি টেমপ্লেট

Use this compact layout to compile a bulletproof summary of any paper for systematic surveys. যেকোনো পেপারের একটি সংক্ষিপ্ত, শক্তিশালী সারাংশ তৈরি করতে এই টেমপ্লেট ব্যবহার করুন:

    ### [PAPER TITLE]
    - Core Problem (১): What is the exact problem being solved?
    - Motivation (২): Why does resolving this problem matter?
    - Existing Situation & Methods (৩): What did previous researchers do?
    - Research Gap (৪): What specific missing piece is identified?
    - Research Question (৫): What is their testable, specific research question?
    - Proposed Method (৬): What original architecture or algorithm do they propose?
    - Dataset (৭): What benchmark data do they evaluate on?
    - Experimental Design (৮): Splits, baselines, and optimizers used?
    - Evaluation Metrics (৯): How did they measure performance?
    - Main Results (১০): What are the headline numbers?
    - Scientific Contribution (১১): What is the original novelty?
    - Declared Limitations (১২): What constraints do the authors honestly state?
    - My Critical Analysis (১৩): Did we find any red flags (Section 17)? Is the baseline fair?
    - My Proposed Research Directions (১৪): How can I extend this work to resolve a new gap?

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A strong summary always ends with your own critical analysis and proposed direction, not just a restatement of claims. / ভালো summary সবসময় নিজের সমালোচনামূলক বিশ্লেষণ ও প্রস্তাবিত দিক দিয়ে শেষ হয়, শুধু দাবির পুনরাবৃত্তি নয়।

# 25. RESEARCH GAP VERIFICATION CHECKLIST / রিসার্চ গ্যাপ ভেরিফিকেশন চেকলিস্ট

Verify your gap statement bilingually before investing months into experiments. মাসের পর মাস পরীক্ষায় বিনিয়োগ করার আগে দ্বিভাষিকভাবে আপনার গ্যাপ স্টেটমেন্ট যাচাই করুন:

- [ ] I understand the core problem / আমি সমস্যাটি বুঝি — I can state it clearly in both mathematical and business terms. / গাণিতিক ও সাধারণ ভাষায় স্পষ্টভাবে ব্যাখ্যা করতে পারি।
- [ ] **I reviewed important previous work / পূর্ববর্তী কাজ পর্যালোচনা করেছি** — I have mapped out existing standard methods. / প্রচলিত মেথডের তালিকা তৈরি করেছি।
- [ ] I checked recent research / সাম্প্রতিক গবেষণা চেক করেছি — Peer-reviewed papers from the last 2-3 years. / বিগত ২-৩ বছরের পেপার পড়েছি।
- [ ] I read relevant survey/review papers / সার্ভে পেপার পড়েছি — Checked if my gap is already listed as an open problem. / গ্যাপটি ইতিমধ্যে চিহ্নিত কিনা দেখেছি।
- [ ] I compared multiple papers / একাধিক পেপার তুলনা করেছি — Filled a Literature Survey Matrix (Section 11). / Literature Survey Matrix পূরণ করেছি।
- [ ] I understand existing limitations / বিদ্যমান সীমাবদ্ধতা বুঝি — Categorized previous limitations by gap type (Section 12). / সীমাবদ্ধতাগুলো গ্যাপ-ধরন অনুযায়ী শ্রেণীবদ্ধ করেছি।
- [ ] I checked datasets / ডেটাসেট চেক করেছি — Confirmed no public dataset already resolves this gap. / কোনো পাবলিক ডেটাসেট এটি আগেই সমাধান করেনি তা নিশ্চিত করেছি।
- [ ] The proposed gap is meaningful / গ্যাপটি অর্থপূর্ণ — Resolving it will meaningfully improve accuracy, speed, fairness, or explainability. / এটি সমাধান করলে সত্যিকারের ইতিবাচক প্রভাব পড়বে।
- [ ] **The gap is supported by literature evidence / সাহিত্যের প্রমাণ আছে** — I can cite at least 3 papers pointing to this limitation. / অন্তত ৩টি পেপার সাইট করতে পারবো।
- [ ] **The gap is not simply caused by lack of searching / এটি স্রেফ কম খোঁজার ফল নয়** — Verified synonyms and citation chains (Section 15). / প্রতিশব্দ ও citation chain যাচাই করেছি।
- [ ] **I can formulate a research question / রিসার্চ প্রশ্ন তৈরি করতে পারি** — Meets SMART criteria (Section 20). / SMART মানদণ্ড পূরণ করে।
- [ ] The question can be experimentally tested / পরীক্ষাযোগ্য — I have the hardware/dataset resources needed. / প্রয়োজনীয় হার্ডওয়্যার/ডেটা আছে।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Complete every box before investing months into a thesis direction — cheaper to find out now than after data collection. / থিসিসের দিকে মাসের পর মাস বিনিয়োগ করার আগে প্রতিটি বক্স পূরণ করুন — এখনই জানা ডেটা সংগ্রহের পরে জানার চেয়ে সস্তা।

# 26. END-TO-END CASE STUDY: APPLYING THE FRAMEWORKS TO A REAL PAPER / সম্পূর্ণ কেস স্টাডি: বাস্তব পেপারে প্রয়োগ

Every framework in Sections 8–17 is easier to understand applied to one real paper, start to finish. This case study uses **Krizhevsky, Sutskever & Hinton (2012), “ImageNet Classification with Deep Convolutional Neural Networks”** \[18\] — the “AlexNet” paper — because it is short, extremely well-documented, and its facts are easy to independently verify. Every factual claim below is drawn directly from the paper and standard secondary accounts of it; nothing is invented.

Section ৮–১৭-এর প্রতিটি কাঠামো একটি বাস্তব পেপারে শুরু থেকে শেষ পর্যন্ত প্রয়োগ করলে বোঝা সহজ হয়। এই কেস স্টাডিতে **Krizhevsky, Sutskever ও Hinton (2012)**-এর “AlexNet” পেপার \[18\] ব্যবহার করা হয়েছে, কারণ এটি সংক্ষিপ্ত, অত্যন্ত সুপরিচিত, এবং এর তথ্য স্বাধীনভাবে যাচাই করা সহজ। নিচের প্রতিটি তথ্য সরাসরি পেপার ও প্রমিত সেকেন্ডারি উৎস থেকে নেওয়া — কিছুই বানানো হয়নি।

## 26.1 First Pass (Three-Pass Method, Section 8) / প্রথম পাস

**Title/Abstract/Intro skim:** The paper claims a deep convolutional neural network, trained on the ImageNet Large Scale Visual Recognition Challenge (ILSVRC-2012) dataset, achieved a top-5 test error rate of **15.3%** — compared to **26.2%** for the second-best entry in the same competition, a gap of roughly 10.9 percentage points.

**First-pass verdict:** A ~11-point improvement over the field’s best alternative, on a competition benchmark, from a clearly stated architecture — worth reading further.

**বাংলা:** পেপারটি দাবি করে যে তাদের deep CNN ImageNet প্রতিযোগিতায় (ILSVRC-2012) **১৫.৩%** top-5 error rate অর্জন করেছে, যেখানে দ্বিতীয় সেরা মডেলের error ছিল **২৬.২%** — প্রায় ১০.৯ পয়েন্টের ব্যবধান। **প্রথম পাসের সিদ্ধান্ত:** একটি সুপরিচিত বেঞ্চমার্কে প্রতিদ্বন্দ্বীদের চেয়ে বিশাল ব্যবধানে এগিয়ে থাকা ফলাফল — আরও পড়া উচিত।

## 26.2 Second Pass — Method, Dataset, Results / দ্বিতীয় পাস

| Aspect              | What the paper reports                                                                                                                         |
|---------------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| **Dataset**         | ImageNet / ILSVRC-2012 subset, roughly 1.2 million training images across 1,000 categories                                                     |
| **Architecture**    | 8 learned layers: 5 convolutional + 3 fully connected, ~60 million parameters                                                                  |
| **Key innovations** | ReLU activations (faster convergence than tanh/sigmoid); training split across two GPUs; Local Response Normalization; overlapping max-pooling |
| **Regularization**  | Dropout in the fully connected layers; data augmentation via random crops and horizontal reflections                                           |
| **Optimizer**       | Stochastic Gradient Descent (SGD) with momentum                                                                                                |
| **Headline result** | Top-5 error 15.3% vs. 26.2% for the runner-up on ILSVRC-2012                                                                                   |

**Second-pass verdict:** The architecture, dataset, and training details are all concretely specified. This looks like a real engineering + empirical contribution, not a vague claim.

**বাংলা:** ডেটাসেট (ImageNet, ~১২ লক্ষ ছবি, ১,০০০ ক্যাটাগরি), আর্কিটেকচার (৮ স্তর, ~৬ কোটি প্যারামিটার), মূল উদ্ভাবন (ReLU, দুই GPU-তে ট্রেনিং, Local Response Normalization), regularization (dropout, data augmentation), এবং optimizer (SGD with momentum) — সবকিছু সুনির্দিষ্টভাবে বলা আছে। **দ্বিতীয় পাসের সিদ্ধান্ত:** এটি একটি বাস্তব ইঞ্জিনিয়ারিং ও experimental অবদান, অস্পষ্ট দাবি নয়।

## 26.3 Applying the Critical Paper Analysis Framework (Section 16) / সমালোচনামূলক বিশ্লেষণ প্রয়োগ

| Dimension           | Assessment                                                                                                                                                                                                                                        |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **1. Problem**      | Large-scale image classification — well-defined, and ILSVRC provides an objective, standardized benchmark.                                                                                                                                        |
| **2. Novelty**      | A *combination* novelty (Section 21, Type 5): CNNs, ReLU, dropout, and GPU training were each known in isolation; the paper’s contribution was combining and scaling them successfully on a dataset far larger than prior CNN work had attempted. |
| **3. Method**       | Architecture choices (filter sizes, layer depths) are justified partly by ablation-style reasoning in the paper’s own discussion (e.g., they note that removing a convolutional layer hurt performance).                                          |
| **4. Dataset**      | ILSVRC-2012 is large and standardized — a strong choice, though (as later work would note) ImageNet’s category distribution and image sources carry their own population and geographic biases (Section 12.6, 12.8).                              |
| **5. Baselines**    | Directly compared against every other ILSVRC-2012 entrant under identical competition rules — about as fair a baseline comparison as is possible.                                                                                                 |
| **8. Results**      | An 11-point error reduction on a major benchmark is a large, meaningful jump, not a marginal one.                                                                                                                                                 |
| **13. Limitations** | The original paper is candid that training took 5–6 days on two GPUs and that larger/deeper networks were limited mainly by available GPU memory — a limitation explicitly acknowledged, not hidden.                                              |

**বাংলা:** সমস্যা সুনির্দিষ্ট ও objectively বেঞ্চমার্ক করা; নতুনত্ব মূলত *সংমিশ্রণ*-ভিত্তিক (বিদ্যমান উপাদান একত্রিত ও বড় স্কেলে সফল করা); বেসলাইন তুলনা অত্যন্ত ন্যায্য (একই প্রতিযোগিতার একই শর্তে); ফলাফলের উন্নতি (১১ পয়েন্ট) বড় ও অর্থপূর্ণ; সীমাবদ্ধতা (GPU মেমরির সীমাবদ্ধতা, ৫-৬ দিনের ট্রেনিং সময়) সততার সাথে স্বীকৃত।

## 26.4 Red-Flag Check (Section 17) / রেড-ফ্ল্যাগ যাচাই

Running down the 16 red flags: this paper does **not** exhibit most of them — it uses a large standardized dataset (not flag \#1), compares against every real competitor under the same competition rules (not flag \#2 or \#11), and openly discusses its computational limitations (not flag \#16). Two points worth noting rather than treating as flaws:

- **Single-metric emphasis:** The headline result is top-5 error rate; the paper does report top-1 error too, but a modern paper would be expected to report a broader metric suite (Section 5) — this reflects the evaluation norms of 2012, not a red flag by the standards of its time.
- **Statistical significance (flag \#6):** As is common for single, large-scale competition entries of that era, the paper reports single-run results rather than mean ± std across multiple seeds — reasonable given the multi-day training cost per run, but a genuine gap by today’s standards (Section 6.7).

**বাংলা:** ১৬টি red flag-এর বেশিরভাগ এই পেপারে অনুপস্থিত — বড় প্রমিত ডেটাসেট ব্যবহার, একই প্রতিযোগিতার নিয়মে সব প্রতিদ্বন্দ্বীর সাথে তুলনা, এবং কম্পিউটেশনাল সীমাবদ্ধতা খোলাখুলি আলোচনা। তবে দুটি বিষয় লক্ষণীয়: metric emphasis (মূলত top-5 error, যদিও এটি ২০১২ সালের মানদণ্ড অনুযায়ী স্বাভাবিক), এবং statistical significance-এর অভাব (একাধিক seed-এ গড় ± std রিপোর্ট করা হয়নি, যা আজকের মানে একটি প্রকৃত ঘাটতি)।

## 26.5 What Research Gap Did It Address? (Section 12) / এটি কোন রিসার্চ গ্যাপ সমাধান করেছিল?

Before AlexNet, image classification relied heavily on hand-engineered features (SIFT, HOG) combined with shallower classifiers — a **Methodological Gap** (Section 12.2): existing feature-engineering approaches plateaued in performance and did not scale well with dataset size. AlexNet’s novelty (Section 21, Types 1 and 2 — new/improved method) was demonstrating that a sufficiently large CNN, trained with sufficient data and compute, could learn better features automatically than decades of manual feature engineering had produced.

**বাংলা:** AlexNet-এর আগে image classification মূলত হাতে-তৈরি ফিচারের (SIFT, HOG) ওপর নির্ভর করতো — এটি একটি **Methodological Gap** (Section 12.2): বিদ্যমান পদ্ধতি একটি নির্দিষ্ট সীমার পর আর উন্নত হচ্ছিল না। AlexNet-এর নতুনত্ব ছিল প্রমাণ করা যে পর্যাপ্ত বড় CNN, পর্যাপ্ত ডেটা ও কম্পিউট দিয়ে, দশকের হাতে-তৈরি ফিচারের চেয়ে ভালো ফিচার নিজে থেকেই শিখতে পারে।

## 26.6 What Happened Next — Why This Matters for Reading Papers / এরপর কী হলো — কেন এটি গুরুত্বপূর্ণ

**English:** AlexNet’s own limitations (GPU memory constraints, only 8 layers) became exactly the research gaps that follow-up papers targeted: deeper architectures with skip connections to fight vanishing gradients (ResNet \[19\]), and, later, entirely attention-based architectures for vision (Vision Transformers, building on the Transformer \[20\]). This illustrates a pattern worth remembering: **a landmark paper’s own stated limitations are often the most reliable source of the field’s next research gap.**

**বাংলা:** AlexNet-এর নিজস্ব সীমাবদ্ধতাগুলো (GPU মেমরি সীমা, মাত্র ৮ স্তর) পরবর্তী গবেষণার রিসার্চ গ্যাপ হয়ে উঠেছিল: skip connection দিয়ে গভীর আর্কিটেকচার (ResNet \[19\]), এবং পরে vision-এর জন্য সম্পূর্ণ attention-ভিত্তিক আর্কিটেকচার (Vision Transformer)। এখান থেকে একটি গুরুত্বপূর্ণ প্যাটার্ন শেখা যায়: **একটি landmark পেপারের নিজস্ব স্বীকৃত সীমাবদ্ধতাই প্রায়ই ক্ষেত্রের পরবর্তী রিসার্চ গ্যাপের সবচেয়ে নির্ভরযোগ্য উৎস।**

> **🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা** - Applying the three-pass method to AlexNet takes minutes and immediately surfaces its contribution, method, and honestly stated limitations. / AlexNet-এ three-pass method প্রয়োগ করলে মিনিটেই এর অবদান, পদ্ধতি ও সততার সাথে বলা সীমাবদ্ধতা বোঝা যায়। - A landmark paper can pass nearly every red flag check and still have gaps (single-run results) that reflect its era rather than negligence. / একটি landmark পেপার প্রায় সব red-flag চেক পাস করেও তার যুগের সীমাবদ্ধতা (একক-রান ফলাফল) বহন করতে পারে। - A paper’s own declared limitations are frequently tomorrow’s research gaps — read the Limitations section as a source of ideas, not just caveats. / পেপারের নিজস্ব স্বীকৃত সীমাবদ্ধতাই প্রায়ই আগামী দিনের রিসার্চ গ্যাপ — Limitations অংশকে শুধু সতর্কতা নয়, ধারণার উৎস হিসেবেও পড়ুন।

# 27. CORE FORMULAS & RESEARCH MATHEMATICS / মূল সূত্র ও রিসার্চ গণিত

For each: **Formula → Variables → Intuition/Example → Research relevance → বাংলা।**

### 1. Sample Mean / নমুনা গড়

> $$\bar{x} = \dfrac{1}{n}\sum_{i=1}^{n} x_i$$

**English:** The arithmetic center of a dataset. If grades are \[80, 90, 100\], mean = 90. Used extensively for standardization/normalization of features. বাংলা: ডেটার গাণিতিক কেন্দ্রবিন্দু। ফিচার standardization-এ ব্যাপক ব্যবহৃত হয়।

### 2. Sample Variance / নমুনা ভ্যারিয়েন্স

> $$s^2 = \dfrac{1}{n-1}\sum_{i=1}^{n}(x_i-\bar{x})^2$$

**English:** Measures spread around the mean. High prediction variance implies overfitting; PCA maximizes preserved variance. বাংলা: গড়ের চারপাশে ডেটার বিস্তৃতি মাপে। উচ্চ variance ওভারফিটিং নির্দেশ করে।

### 3. Sample Standard Deviation / স্ট্যান্ডার্ড ডেভিয়েশন

> $$s=\sqrt{s^2}$$

**English:** Spread in the same unit as the original data; used to compute standardized features $z=\dfrac{x-\mu}{\sigma}$. বাংলা: মূল ডেটার এককে বিস্তৃতি প্রকাশ করে; feature standardization-এ ব্যবহৃত হয়।

### 4. Probability of an Event / সম্ভাব্যতা

> $$P(A)=\dfrac{\text{favorable outcomes}}{\text{total outcomes}}$$

**English:** Classifiers essentially estimate conditional probability `P(y| x)`. বাংলা: ক্লাসিফায়ার মূলত শর্তাধীন সম্ভাব্যতা `P(y| x)` অনুমান করে।

### 5–8. Accuracy, Precision, Recall, F1 — see Section 5.2 for full table and intuition.

### 9. Mean Absolute Error (MAE) / গড় পরম ত্রুটি

> $$\text{MAE}=\dfrac{1}{m}\sum_{i=1}^{m}\left|y^{(i)}-\hat y^{(i)}\right|$$

**English:** Average magnitude of error, robust to outliers (unlike MSE). বাংলা: ভুলের গড় মাত্রা, আউটলায়ার-সহনশীল (MSE-এর বিপরীতে)।

### 10. Mean Squared Error (MSE) / গড় বর্গ ত্রুটি

> $$\text{MSE}=\dfrac{1}{m}\sum_{i=1}^{m}\left(y^{(i)}-\hat y^{(i)}\right)^2$$

**English:** Heavily penalizes large errors; standard differentiable regression loss. বাংলা: বড় ভুলকে বেশি শাস্তি দেয়; রিগ্রেশনের ডিফল্ট cost function।

### 11. Root Mean Squared Error (RMSE)

> $$\text{RMSE}=\sqrt{\text{MSE}}$$

**English:** Error in the same unit as the target — the standard regression reporting metric. বাংলা: টার্গেটের এককে ত্রুটি — রিগ্রেশন পেপারের স্ট্যান্ডার্ড মেট্রিক।

### 12. R-Squared / আর-স্কয়ার

> $$R^2=1-\dfrac{\sum(y_i-\hat y_i)^2}{\sum(y_i-\bar y)^2}$$

**English:** Fraction of variance explained by the model; $R^2=0.85$ → model captures 85% of the pattern. বাংলা: মডেল কতটুকু variance ব্যাখ্যা করে তার অনুপাত।

### 13. Gradient Descent / গ্রেডিয়েন্ট ডিসেন্ট

> $$\theta^{(\text{next})}=\theta-\eta\nabla_\theta\, \text{MSE}(\theta)$$

**English:** Iterative downhill optimization; the foundational engine behind neural-network backpropagation. বাংলা: ধাপে ধাপে অপ্টিমাইজেশন; ব্যাকপ্রোপাগেশনের মূল চালিকাশক্তি।

### 14. Ridge (`L_2`) Regularized Loss

> $$J(\theta)=\text{MSE}(\theta)+\alpha\dfrac{1}{m}\sum_{i=1}^{n}\theta_i^2$$

**English:** Constrains weights toward zero, smoothing the model, preventing over-focus on noise. বাংলা: ওয়েইট শূন্যের কাছাকাছি রাখতে বাধ্য করে, ওভারফিটিং প্রতিরোধ করে।

### 15. Lasso (`L_1`) Regularization

> $$J(\theta)=\text{MSE}(\theta)+2\alpha\sum_{i=1}^{n}\left|\theta_i\right|$$

**English:** Drives unimportant weights strictly to zero — automatic feature selection. বাংলা: গুরুত্বহীন ওয়েইটকে সরাসরি শূন্য করে দেয় — স্বয়ংক্রিয় ফিচার সিলেকশন।

### 16. Cross-Entropy (Log) Loss / ক্রস-এনট্রপি লস

> $$J(\Theta)=-\dfrac{1}{m}\sum_{i=1}^{m}\sum_{k=1}^{K}y_k^{(i)}\log(\hat p_k^{(i)})$$

**English:** Standard multi-class classification loss; penalizes confident wrong predictions heavily. বাংলা: স্ট্যান্ডার্ড মাল্টি-ক্লাস ক্লাসিফিকেশন cost function; আত্মবিশ্বাসী ভুলকে কড়া শাস্তি দেয়।

### 17. Softmax Function / সফটম্যাক্স ফাংশন

> $$\sigma(s(x))_k=\dfrac{e^{s_k(x)}}{\sum_{j=1}^{K}e^{s_j(x)}}$$

**English:** Converts raw logits into probabilities summing to 1; standard multi-class output-layer activation. বাংলা: raw স্কোরকে সম্ভাবনায় রূপান্তর করে (যোগফল সবসময় ১); মাল্টি-ক্লাস আউটপুট লেয়ারের স্ট্যান্ডার্ড activation।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Formulas here are written as plain text on purpose for reliability — always double-check a paper’s *exact* formula rather than assume the “standard” version. / এখানে formula ইচ্ছাকৃতভাবে plain text — কোনো পেপারের সঠিক formula সবসময় নিজে যাচাই করুন, “standard” ভেবে ধরে নেবেন না।

------------------------------------------------------------------------

# 28. WORKED NUMERICAL EXAMPLES / সংখ্যাসূচক উদাহরণসহ সমাধান

This section works through real numbers by hand, step by step. Reading a formula is not the same as *using* it — once you have computed these yourself, the metrics in any paper’s results table stop being abstract.

এই অংশে প্রতিটি হিসাব ধাপে ধাপে হাতে-কলমে করা হয়েছে। সূত্র পড়া আর সূত্র ব্যবহার করা এক জিনিস নয় — একবার নিজে হিসাব করলে যেকোনো পেপারের result টেবিলের সংখ্যাগুলো আর বিমূর্ত মনে হবে না।

## 27.1 Confusion Matrix, Precision, Recall, F1 — Full Worked Example / সম্পূর্ণ উদাহরণ

### The scenario / পরিস্থিতি

**English:** A hospital tests a model that predicts whether a patient has a disease. The model is evaluated on **1,000 patients**. In reality, only **50 patients actually have the disease** (a 5% positive rate — this is a realistically imbalanced medical dataset).

The model’s results: - It correctly identified **40** of the sick patients → **TP = 40** - It missed **10** sick patients, calling them healthy → **FN = 10** - It wrongly flagged **60** healthy patients as sick → **FP = 60** - It correctly cleared **890** healthy patients → **TN = 890**

**বাংলা:** একটি হাসপাতাল এমন একটি মডেল পরীক্ষা করছে যা রোগীর রোগ আছে কিনা প্রেডিক্ট করে। ১,০০০ জন রোগীর ওপর মডেলটি মূল্যায়ন করা হয়েছে। বাস্তবে মাত্র ৫০ জনের রোগ আছে (৫% positive rate — এটি একটি বাস্তবসম্মত imbalanced মেডিকেল ডেটাসেট)।

মডেলের ফলাফল: **TP = 40** (সঠিকভাবে রোগী শনাক্ত), **FN = 10** (রোগীকে সুস্থ বলেছে — miss), **FP = 60** (সুস্থ মানুষকে রোগী বলেছে — false alarm), **TN = 890** (সঠিকভাবে সুস্থ বলেছে)।

### The confusion matrix / কনফিউশন ম্যাট্রিক্স

|                       | Actually Sick (50) | Actually Healthy (950) | Row total |
|-----------------------|--------------------|------------------------|-----------|
| **Predicted Sick**    | TP = 40            | FP = 60                | 100       |
| **Predicted Healthy** | FN = 10            | TN = 890               | 900       |
| **Column total**      | 50                 | 950                    | 1000      |

### Step-by-step calculations / ধাপে ধাপে হিসাব

**Accuracy:**

> $$\text{Accuracy} = \dfrac{TP+TN}{TP+TN+FP+FN} = \dfrac{40+890}{1000} = \dfrac{930}{1000} = 0.930 = 93.0\%$$

**Precision** (of everyone flagged sick, how many really were?):

> $$\text{Precision} = \dfrac{TP}{TP+FP} = \dfrac{40}{40+60} = \dfrac{40}{100} = 0.400 = 40.0\%$$

**Recall / Sensitivity** (of all truly sick people, how many did we catch?):

> $$\text{Recall} = \dfrac{TP}{TP+FN} = \dfrac{40}{40+10} = \dfrac{40}{50} = 0.800 = 80.0\%$$

**Specificity** (of all truly healthy people, how many did we correctly clear?):

> $$\text{Specificity} = \dfrac{TN}{TN+FP} = \dfrac{890}{890+60} = \dfrac{890}{950} = 0.937 = 93.7\%$$

**F1-Score** (harmonic mean of precision and recall):

> $$\begin{aligned} F_1 = 2 \times \dfrac{\text{Precision} \times \text{Recall}}{\text{Precision} + \text{Recall}} = 2 \times \dfrac{0.40 \times 0.80}{0.40+0.80} \\ F_1 = 2 \times \dfrac{0.32}{1.20} = \dfrac{0.64}{1.20} = 0.533 = 53.3\% \end{aligned}$$

### 🔑 The critical lesson / সবচেয়ে গুরুত্বপূর্ণ শিক্ষা

**English:** Look carefully at what just happened. **Accuracy is 93%** — that sounds excellent, and a weak paper would report only this number. But **Precision is only 40%**: of every 100 patients this model sends for expensive further testing, **60 of them are perfectly healthy**. And **F1 is only 53.3%** — barely better than a coin flip. The single “93% accuracy” headline hides a model that is, in practice, quite poor.

Worse: a useless model that simply predicts **“nobody is sick”** for every single patient would score:

> $$\text{Accuracy} = \dfrac{0+950}{1000} = 95.0\%$$

That do-nothing model scores **higher accuracy (95%) than our actual model (93%)** — while catching zero sick patients (Recall = 0%). **This is exactly why reporting accuracy alone on imbalanced data is a red flag** (Section 17, Red Flag \#5).

**বাংলা:** এখানে কী ঘটলো ভালো করে দেখুন। Accuracy ৯৩% — শুনতে দারুণ, এবং একটি দুর্বল পেপার কেবল এই সংখ্যাটিই রিপোর্ট করবে। কিন্তু Precision মাত্র ৪০%: মডেলটি যে ১০০ জনকে ব্যয়বহুল পরীক্ষার জন্য পাঠাচ্ছে, তাদের ৬০ জনই সম্পূর্ণ সুস্থ। আর F1 মাত্র ৫৩.৩%।

আরও খারাপ: যে মডেল সবাইকে “সুস্থ” বলে দেয়, তার Accuracy হবে ৯৫% — অর্থাৎ আমাদের আসল মডেলের (৯৩%) চেয়েও বেশি, অথচ সে একজন রোগীকেও ধরতে পারেনি (Recall = ০%)। এ কারণেই imbalanced ডেটায় শুধু accuracy রিপোর্ট করা একটি রেড ফ্ল্যাগ।

### Macro vs Weighted average — worked / ম্যাক্রো বনাম ওয়েইটেড গড়

Treating this as two classes, “Sick” and “Healthy”:

| Class   | Precision       | Recall          | F1    | Support |
|---------|-----------------|-----------------|-------|---------|
| Sick    | 40/100 = 0.400  | 40/50 = 0.800   | 0.533 | 50      |
| Healthy | 890/900 = 0.989 | 890/950 = 0.937 | 0.962 | 950     |

**Macro-F1** (unweighted mean — treats both classes as equally important):

> $$\text{Macro-F1} = \dfrac{0.533+0.962}{2} = \dfrac{1.495}{2} = 0.748 = 74.8\%$$

**Weighted-F1** (weighted by how many samples each class has):

> $$\text{Weighted-F1} = \dfrac{0.533 \times 50 + 0.962 \times 950}{1000} = \dfrac{26.65+913.9}{1000} = 0.941 = 94.1\%$$

**Lesson:** Weighted-F1 (94.1%) looks far better than Macro-F1 (74.8%) purely because the easy majority class dominates the average. **If a paper on imbalanced data reports only weighted-F1, be suspicious** — ask for macro-F1 or the per-class breakdown. **শিক্ষা:** Weighted-F1 (৯৪.১%) শুধুমাত্র সহজ majority class-এর আধিপত্যের কারণে Macro-F1 (৭৪.৮%)-এর চেয়ে অনেক ভালো দেখাচ্ছে। কোনো পেপার imbalanced ডেটায় শুধু weighted-F1 দেখালে সন্দেহ করুন।

## 27.2 Regression Metrics — Worked Example / রিগ্রেশন মেট্রিক উদাহরণ

**Scenario:** A model predicts house prices (in lakh taka) for 5 houses.

| House | Actual (y) | Predicted (ŷ) | Error (y − ŷ) | \|Error\|  | Error²      |
|-------|------------|---------------|---------------|------------|-------------|
| 1     | 50         | 48            | +2            | 2          | 4           |
| 2     | 60         | 65            | −5            | 5          | 25          |
| 3     | 45         | 44            | +1            | 1          | 1           |
| 4     | 80         | 62            | +18           | 18         | 324         |
| 5     | 55         | 56            | −1            | 1          | 1           |
|       |            |               |               | **Σ = 27** | **Σ = 355** |

**MAE (Mean Absolute Error):**

> $$\text{MAE} = \dfrac{27}{5} = 5.4 \text{ lakh taka}$$

**MSE (Mean Squared Error):**

> $$\text{MSE} = \dfrac{355}{5} = 71.0$$

**RMSE (Root Mean Squared Error):**

> $$\text{RMSE} = \sqrt{71.0} = 8.43 \text{ lakh taka}$$

**R² (Coefficient of Determination):** First the mean of actual values:

> $$\bar y = \dfrac{50+60+45+80+55}{5} = \dfrac{290}{5} = 58$$

Total sum of squares:

> $$\begin{aligned} SS_{tot} = (50-58)^2+(60-58)^2+(45-58)^2+(80-58)^2+(55-58)^2 \\ SS_{tot} = 64+4+169+484+9 = 730 \end{aligned}$$

Residual sum of squares `SS_res = 355` (computed above), so:

> $$R^2 = 1-\dfrac{355}{730} = 1-0.486 = 0.514$$

Interpretation / ব্যাখ্যা: RMSE (8.43) is notably larger than MAE (5.4). **That gap is a signal**: because MSE squares the errors, House 4’s large 18-lakh error (324 of the 355 total, i.e. 91%) dominates everything. R² = 0.514 means the model explains about 51% of the variance in prices — mediocre. RMSE (৮.৪৩) এবং MAE (৫.৪)-এর মধ্যে ব্যবধানটাই একটি সংকেত: MSE বর্গ করার কারণে House 4-এর ১৮ লাখের বড় ভুলটি (মোট ৩৫৫-এর মধ্যে ৩২৪, অর্থাৎ ৯১%) পুরো হিসাবে প্রাধান্য বিস্তার করছে। R² = ০.৫১৪ মানে মডেলটি দামের প্রায় ৫১% variance ব্যাখ্যা করতে পারছে।

> **Practical tip:** When you see RMSE ≫ MAE in a paper, it usually means a few large outlier errors are driving the result. Ask whether the authors examined those cases (Section 6.4, Error Analysis). পরামর্শ: কোনো পেপারে RMSE ≫ MAE দেখলে বুঝবেন কয়েকটি বড় outlier ভুল ফলাফলকে চালাচ্ছে।

## 27.3 Gradient Descent — Two Iterations by Hand / গ্রেডিয়েন্ট ডিসেন্ট হাতে-কলমে

**Setup:** We fit $y = w \cdot x$ (a single weight, no bias) to one data point: $x = 2,\quad y = 10$. The true answer is obviously `w = 5`. Let’s watch gradient descent find it.

Loss (squared error): $L = (y-w\cdot x)^2$ Gradient: $\dfrac{dL}{dw} = -2x(y-w\cdot x)$ Learning rate: `η = 0.1` Starting guess: `w = 0`

**Iteration 1:**

> prediction: $\hat y = 0 \times 2 = 0$ error: $y-\hat y = 10-0 = 10$ gradient: $\dfrac{dL}{dw} = -2(2)(10) = -40$ update: $w = w-\eta\cdot\dfrac{dL}{dw} = 0-0.1(-40) = 0+4 = 4$

**Iteration 2:**

> prediction: $\hat y = 4 \times 2 = 8$ error: $10-8=2$ gradient: $\dfrac{dL}{dw} = -2(2)(2) = -8$ update: $w = 4-0.1(-8) = 4+0.8 = 4.8$

**Iteration 3:**

> prediction: $\hat y = 4.8\times 2 = 9.6$; error $= 0.4$; gradient $= -1.6$ update: $w = 4.8+0.16 = 4.96$

The weight moves 0 → 4 → 4.8 → 4.96 → … converging toward 5. Notice the steps get **smaller** as the error shrinks — that is automatic, because the gradient itself is proportional to the error.

Weight-টি ০ → ৪ → ৪.৮ → ৪.৯৬ … করে ৫-এর দিকে এগোচ্ছে। লক্ষ্য করুন, error কমার সাথে সাথে ধাপগুলো ছোট হয়ে আসছে — এটি স্বয়ংক্রিয়, কারণ gradient নিজেই error-এর সমানুপাতিক।

What if the learning rate is wrong? / লার্নিং রেট ভুল হলে কী হয়?

| η (learning rate) | Behaviour                                     | ফলাফল                 |
|-------------------|-----------------------------------------------|-----------------------|
| `η = 0.001`       | w: 0 → 0.04 → 0.08 … takes thousands of steps | অত্যন্ত ধীর convergence |
| `η = 0.1`         | w: 0 → 4 → 4.8 → 4.96 (healthy convergence)   | সুস্থ convergence       |
| `η = 0.5`         | w: 0 → 20 → −40 → 140 … **diverges**          | মডেল সম্পূর্ণ ভেঙে পড়ে   |

With `η = 0.5`: $w = 0-0.5(-40)=20$, then prediction `= 40`, error $= -30$, gradient $= -2(2)(-30) = +120$, so $w = 20-0.5(120)=-40$. The weight oscillates with growing amplitude and **never converges** — this is what a diverging loss curve looks like in practice (Section 6.2).

## 27.4 Gini Impurity & a Decision Tree Split / গিনি ইম্পিউরিটি ও ডেসিশন ট্রি স্প্লিট

**Setup:** 10 emails — 5 spam, 5 not-spam. We test splitting on the feature “contains the word *free*”.

**Gini impurity of the parent node** ($G = 1-\sum p_i^2$):

> $$p(\text{spam}) = \dfrac{5}{10} = 0.5$$, $p(\text{not-spam}) = \dfrac{5}{10} = 0.5$ $$G_{parent} = 1-(0.5^2+0.5^2) = 1-(0.25+0.25) = 1-0.5 = 0.500$$

A Gini of 0.5 is the **worst possible** for two classes — completely mixed, no information.

**After the split:**

*Left branch — contains “free”* (4 emails: 4 spam, 0 not-spam):

> $$G_{left} = 1-(1.0^2+0.0^2) = 1-1 = 0.000$$ ← perfectly pure!

*Right branch — no “free”* (6 emails: 1 spam, 5 not-spam):

> $$p(\text{spam}) = \dfrac{1}{6} = 0.167$$, $p(\text{not}) = \dfrac{5}{6} = 0.833$ $$G_{right} = 1-(0.167^2+0.833^2) = 1-(0.028+0.694) = 1-0.722 = 0.278$$

**Weighted Gini after the split** (weight each branch by its share of samples):

> $$G_{split} = \left(\dfrac{4}{10}\right)(0.000) + \left(\dfrac{6}{10}\right)(0.278) = 0+0.167 = 0.167$$

**Information Gain (Gini reduction):**

> $$\text{Gain} = G_{parent} - G_{split} = 0.500-0.167 = 0.333$$

**Interpretation:** This split reduces impurity by 0.333 — a large gain. A decision tree tries every possible feature and threshold, computes this gain for each, and **greedily picks the split with the highest gain**. That is literally the whole CART training algorithm, repeated recursively. **ব্যাখ্যা:** এই split impurity ০.৩৩৩ কমিয়েছে — একটি বড় gain। ডেসিশন ট্রি প্রতিটি সম্ভাব্য ফিচার ও threshold পরীক্ষা করে, প্রতিটির gain হিসাব করে, এবং সবচেয়ে বেশি gain দেয় এমন split বেছে নেয় — বারবার, recursively। এটাই মূলত সম্পূর্ণ CART অ্যালগরিদম।

## 27.5 k-Means — One Full Iteration / কে-মিন্সের একটি সম্পূর্ণ ধাপ

**Setup:** Six 1-D points: `2, 3, 4, 10, 11, 12`. We want `k = 2` clusters. Initial (deliberately poor) centroids: `c₁ = 2`, `c₂ = 4`.

**Step 1 — Assign each point to the nearest centroid:**

| Point | Distance to c₁=2 | Distance to c₂=4 | Assigned to      |
|-------|------------------|------------------|------------------|
| 2     | 0                | 2                | c₁               |
| 3     | 1                | 1                | c₁ (tie → first) |
| 4     | 2                | 0                | c₂               |
| 10    | 8                | 6                | c₂               |
| 11    | 9                | 7                | c₂               |
| 12    | 10               | 8                | c₂               |

Cluster 1 = {2, 3}; Cluster 2 = {4, 10, 11, 12}

**Step 2 — Recompute centroids as the mean of their members:**

> $$\begin{aligned} c_1 = \dfrac{2+3}{2} = 2.5 \\ c_2 = \dfrac{4+10+11+12}{4} = \dfrac{37}{4} = 9.25 \end{aligned}$$

**Step 3 — Reassign with the new centroids:**

Point 4: distance to 2.5 is `1.5`; distance to 9.25 is `5.25` → now moves to **Cluster 1**. All others keep their assignment.

Cluster 1 = {2, 3, 4}; Cluster 2 = {10, 11, 12}

**Step 4 — Recompute again:**

> $$\begin{aligned} c_1 = \dfrac{2+3+4}{3} = 3.0 \\ c_2 = \dfrac{10+11+12}{3} = 11.0 \end{aligned}$$

**Step 5 —** Reassigning changes nothing now, so the algorithm has **converged**. Final clusters: `{2,3,4}` around 3.0 and `{10,11,12}` around 11.0 — clearly the correct grouping.

**Final inertia** (within-cluster sum of squared distances):

> $$\begin{aligned} \text{Inertia} = \left[(2-3)^2+(3-3)^2+(4-3)^2\right] + \left[(10-11)^2+(11-11)^2+(12-11)^2\right] \\ \text{Inertia} = [1+0+1]+[1+0+1] = 4.0 \end{aligned}$$

Lesson / শিক্ষা: Even from a bad initialization, k-Means self-corrected in two iterations. But this is a 1-D toy problem; in high dimensions a poor start can converge to a genuinely wrong answer — which is why `k-means++` initialization and multiple restarts (`n_init`) exist. খারাপ initialization থেকেও k-Means দুই ধাপেই নিজেকে শুধরে নিলো। তবে এটি সহজ ১-D উদাহরণ; বহু-ডাইমেনশনে খারাপ শুরু সত্যিকারের ভুল উত্তরে আটকে যেতে পারে — এজন্যই `k-means++` ও একাধিক restart ব্যবহার করা হয়।

## 27.6 Cross-Validation & Reporting Mean ± Std / ক্রস-ভ্যালিডেশন ও গড় ± স্ট্যান্ডার্ড ডেভিয়েশন

**Setup:** 5-fold cross-validation produces these accuracy scores:

> `Fold scores: 0.82, 0.88, 0.79, 0.91, 0.85`

**Mean:**

> $$\text{mean} = \dfrac{0.82+0.88+0.79+0.91+0.85}{5} = \dfrac{4.25}{5} = 0.850$$

**Sample standard deviation** (using `n−1` in the denominator):

> deviations: `−0.03, +0.03, −0.06, +0.06, 0.00` squared: `0.0009, 0.0009, 0.0036, 0.0036, 0.0000` → $\sum = 0.0090$ $$s = \sqrt{\dfrac{0.0090}{4}} = \sqrt{0.00225} = 0.0474$$

**Report as:** $\text{Accuracy} = 0.850 \pm 0.047$ (or 85.0% ± 4.7%)

Why this matters / কেন গুরুত্বপূর্ণ: Suppose a competing model reports 0.870. Is it better? Our model’s fold scores range from 0.79 to 0.91 — a spread of 12 percentage points. A single 0.870 number sits comfortably **inside** our model’s natural fold-to-fold variation, so claiming superiority would be unjustified without a statistical test (Section 28.7). ধরুন প্রতিদ্বন্দ্বী মডেল ০.৮৭০ রিপোর্ট করেছে। এটি কি ভালো? আমাদের মডেলের fold স্কোর ০.৭৯ থেকে ০.৯১ পর্যন্ত ওঠানামা করে। একক ০.৮৭০ সংখ্যাটি আমাদের মডেলের স্বাভাবিক ওঠানামার ভেতরেই পড়ে, তাই statistical test ছাড়া শ্রেষ্ঠত্ব দাবি করা অযৌক্তিক।

## 27.7 Is the Improvement Real? A Paired t-Test / উন্নতিটি কি সত্যি?

**Scenario:** Model A (baseline) vs Model B (proposed), same 5 CV folds, same seeds:

| Fold | Model A | Model B | Difference (B − A) |
|------|---------|---------|--------------------|
| 1    | 0.82    | 0.85    | +0.03              |
| 2    | 0.88    | 0.90    | +0.02              |
| 3    | 0.79    | 0.83    | +0.04              |
| 4    | 0.91    | 0.92    | +0.01              |
| 5    | 0.85    | 0.88    | +0.03              |

Mean of differences:

> $$\bar d = \dfrac{0.03+0.02+0.04+0.01+0.03}{5} = \dfrac{0.13}{5} = 0.026$$

Standard deviation of differences:

> deviations from 0.026: `+0.004, −0.006, +0.014, −0.016, +0.004` squared: `0.000016, 0.000036, 0.000196, 0.000256, 0.000016` → $\sum = 0.00052$ $$s_d = \sqrt{\dfrac{0.00052}{4}} = \sqrt{0.00013} = 0.0114$$

t-statistic:

> $$t = \dfrac{\bar d}{s_d/\sqrt{n}} = \dfrac{0.026}{0.0114/\sqrt{5}} = \dfrac{0.026}{0.0114/2.236} = \dfrac{0.026}{0.0051} = 5.10$$

With $df = n-1 = 4$, the two-tailed critical value at α = 0.05 is approximately **2.776**. Since **5.10 \> 2.776**, the improvement **is statistically significant** (p \< 0.05).

The key insight / মূল অন্তর্দৃষ্টি: Model B beat Model A on **every single fold**, and consistently by a similar margin. That consistency — not the size of the gap — is what makes the result trustworthy. A model that wins by +0.10 on one fold but loses on two others would produce a much smaller t-statistic and would **not** be significant, even though its “best case” looks more impressive. Model B প্রতিটি fold-এই Model A-কে হারিয়েছে, এবং প্রায় একই ব্যবধানে। এই সামঞ্জস্যতাই — ব্যবধানের আকার নয় — ফলাফলকে বিশ্বাসযোগ্য করে তোলে।

> **⚠️ Caution:** The paired t-test assumes roughly normally distributed differences and is often applied to CV folds that are not fully independent (folds share training data). For comparing multiple classifiers across multiple datasets, Demšar \[11\] recommends non-parametric alternatives (Wilcoxon signed-rank, Friedman test with post-hoc analysis) instead. সতর্কতা: CV fold-গুলো সম্পূর্ণ স্বাধীন নয় (তারা ট্রেনিং ডেটা ভাগ করে নেয়)। একাধিক ডেটাসেটে একাধিক classifier তুলনা করতে Demšar \[11\] non-parametric বিকল্প (Wilcoxon, Friedman test) সুপারিশ করেন।

## 27.8 Reading an Ablation Table Correctly / অ্যাবলেশন টেবিল সঠিকভাবে পড়া

**Proposed model:** CNN + BiLSTM + Attention

| Variant                            | F1-Score  | Drop vs Full | Interpretation                   |
|------------------------------------|-----------|--------------|----------------------------------|
| **Full model**                     | **93.8%** | —            | Reference                        |
| − Attention                        | 91.1%     | −2.7         | Attention contributes 2.7 points |
| − BiLSTM                           | 90.2%     | −3.6         | BiLSTM contributes 3.6 points    |
| − CNN                              | 88.9%     | −4.9         | CNN contributes most             |
| CNN only (no BiLSTM, no Attention) | 87.4%     | −6.4         | —                                |

How to read this critically / সমালোচনামূলকভাবে কীভাবে পড়বেন:

1.  **Do the contributions add up sensibly?** Individual drops sum to 2.7 + 3.6 + 4.9 = 11.2 points, but the full model is only 6.4 points above the CNN-only baseline. This is **normal and expected** — components overlap in function, so contributions are not additive. A paper claiming they *are* additive misunderstands its own ablation.
2.  **Is every component earning its cost?** Attention adds 2.7 points. If it also doubles training time and parameters, a reviewer will fairly ask whether that trade is worth it (Section 6.6).
3.  **Watch for the missing row.** Notice there is no “BiLSTM only” or “Attention only” row. A thorough ablation removes components **both individually and in combination**. Missing rows are often where the inconvenient results live.

**বাংলা:** (১) পৃথক drop-গুলোর যোগফল (১১.২) পূর্ণ মডেলের প্রকৃত সুবিধার (৬.৪) চেয়ে বেশি — এটি স্বাভাবিক, কারণ component-গুলোর কাজ পরস্পরের সাথে overlap করে; অবদান যোগ-বিয়োগযোগ্য নয়। (২) প্রতিটি component কি তার খরচ পোষাচ্ছে? Attention ২.৭ পয়েন্ট দিচ্ছে, কিন্তু ট্রেনিং সময় দ্বিগুণ করলে সেই লেনদেন যৌক্তিক কিনা প্রশ্ন উঠবে। (৩) অনুপস্থিত সারির দিকে খেয়াল করুন — যেসব combination দেখানো হয়নি, প্রায়ই সেখানেই অসুবিধাজনক ফলাফল লুকিয়ে থাকে।

## 27.9 Detecting Data Leakage in Numbers / সংখ্যায় ডেটা লিকেজ ধরা

A realistic scenario / বাস্তব পরিস্থিতি:

| Setup                                                           | Reported Accuracy |
|-----------------------------------------------------------------|-------------------|
| Scaler fit on the **entire** dataset before splitting (leakage) | 97.3%             |
| Scaler fit **only on the training split** (correct)             | 91.8%             |
| Deployed on genuinely new data                                  | 89.5%             |

**What happened:** In the leaky setup, the `StandardScaler` computed its mean and standard deviation using **all 1,000 samples — including the test set**. Each test sample was therefore scaled using statistics that already “knew” about it. The result: a 5.5-point inflation that completely vanishes in deployment.

**How you would catch this while reading a paper:** - A suspiciously large gap between reported accuracy and any independent/external validation figure - Preprocessing described *before* the train/test split in the methodology section - A result that is far above the established state of the art with no architectural reason given - No mention of a `Pipeline` or of fitting transforms on training data only

**বাংলা:** Leaky সেটআপে `StandardScaler` তার গড় ও স্ট্যান্ডার্ড ডেভিয়েশন পুরো ১,০০০ নমুনা থেকে — টেস্ট সেটসহ হিসাব করেছে। ফলে প্রতিটি টেস্ট নমুনা এমন পরিসংখ্যান দিয়ে scale হয়েছে যা তাকে আগেই “চিনতো”। ফলাফল: ৫.৫ পয়েন্টের কৃত্রিম বৃদ্ধি, যা deployment-এ সম্পূর্ণ উধাও হয়ে যায়।

পেপার পড়ার সময় যেভাবে ধরবেন: রিপোর্ট করা accuracy ও external validation-এর মধ্যে অস্বাভাবিক বড় ব্যবধান; methodology-তে split-এর আগেই preprocessing-এর বর্ণনা; কোনো স্থাপত্যগত কারণ ছাড়াই SOTA-র অনেক ওপরে ফলাফল; `Pipeline` বা training-only fit-এর কোনো উল্লেখ না থাকা।

> Kapoor and Narayanan \[21\] surveyed ML-based science across disciplines and found leakage affecting **294 papers across 17 fields**, in several cases producing dramatically over-optimistic conclusions. This is not a rare or theoretical problem. Kapoor ও Narayanan \[21\] বিভিন্ন বৈজ্ঞানিক ক্ষেত্রে অনুসন্ধান করে দেখেছেন যে leakage ১৭টি ক্ষেত্রের ২৯৪টি পেপারকে প্রভাবিত করেছে। এটি বিরল বা তাত্ত্বিক সমস্যা নয়।

## 27.10 Naive Bayes — Worked Example / নেইভ বেইজ উদাহরণ

**Scenario:** Classify an email as Spam or Not-Spam using two words as features: whether it contains “free” and whether it contains “meeting”. Training data (10 emails):

|              | Contains “free”                  | Contains “meeting”           | Class               |
|--------------|----------------------------------|------------------------------|---------------------|
| Prior counts | Spam: 4/5 emails have “free”     | Spam: 1/5 have “meeting”     | Spam = 5 emails     |
|              | Not-Spam: 1/5 emails have “free” | Not-Spam: 4/5 have “meeting” | Not-Spam = 5 emails |

**New email:** contains “free”, does not contain “meeting”. Classify it.

Using Bayes’ theorem, we compare (up to a constant) $P(\text{Spam})\cdot P(\text{free}\mid \text{Spam})\cdot P(\text{no meeting}\mid \text{Spam})$ against the same for Not-Spam:

> $$\begin{aligned} P(\text{Spam}\mid x) \propto P(\text{Spam}) \cdot P(\text{free}\mid\text{Spam}) \cdot P(\lnot\text{meeting}\mid\text{Spam}) \\ = 0.5 \times 0.8 \times (1-0.2) = 0.5 \times 0.8 \times 0.8 = 0.320 \end{aligned}$$

> $$\begin{aligned} P(\text{Not-Spam}\mid x) \propto P(\text{Not-Spam}) \cdot P(\text{free}\mid\text{Not-Spam}) \cdot P(\lnot\text{meeting}\mid\text{Not-Spam}) \\ = 0.5 \times 0.2 \times (1-0.8) = 0.5 \times 0.2 \times 0.2 = 0.020 \end{aligned}$$

Normalizing: $P(\text{Spam}) = \dfrac{0.320}{0.320+0.020} = 0.941$ (94.1%). The email is classified **Spam** with high confidence.

**বাংলা:** Bayes’ theorem ব্যবহার করে দুটি ক্লাসের (Spam/Not-Spam) আপেক্ষিক স্কোর হিসাব করা হয়েছে — “নেইভ” অনুমান হলো “free” ও “meeting” ফিচার দুটো একে অপর থেকে independent। হিসাব শেষে normalize করলে Spam হওয়ার সম্ভাবনা ৯৪.১% — তাই ইমেইলটি **Spam** হিসেবে চিহ্নিত হলো।

**Lesson / শিক্ষা:** Naive Bayes multiplies probabilities across features assuming independence — this is why it is so fast (no iterative optimization needed, just counting), but also why it can misfire badly when features are strongly correlated (e.g., “free” and “discount” almost always appearing together would be double-counted as if they were two independent pieces of evidence). Naive Bayes ফিচারগুলোকে independent ধরে probability গুণ করে — এ কারণেই এটি দ্রুত (কোনো iterative optimization লাগে না), কিন্তু ফিচার পরস্পর সম্পর্কিত হলে (যেমন “free” আর “discount” প্রায়ই একসাথে আসে) ভুল করতে পারে, কারণ একই তথ্য দুইবার গোনা হয়।

## 27.11 k-Nearest Neighbors — Worked Example / কে-এনএন উদাহরণ

**Scenario:** Predict whether a new customer (Age = 33, Income = 48k) will churn, using $k=3$ and existing labeled customers:

| Customer | Age | Income (k) | Churned? | Distance to new point                                 |
|----------|-----|------------|----------|-------------------------------------------------------|
| A        | 30  | 50         | No       | $\sqrt{(33-30)^2+(48-50)^2} = \sqrt{9+4} = 3.61$      |
| B        | 45  | 40         | Yes      | $\sqrt{(33-45)^2+(48-40)^2} = \sqrt{144+64} = 14.42$  |
| C        | 35  | 45         | No       | $\sqrt{(33-35)^2+(48-45)^2} = \sqrt{4+9} = 3.61$      |
| D        | 32  | 47         | No       | $\sqrt{(33-32)^2+(48-47)^2} = \sqrt{1+1} = 1.41$      |
| E        | 50  | 20         | Yes      | $\sqrt{(33-50)^2+(48-20)^2} = \sqrt{289+784} = 32.76$ |

Sorted by distance, the 3 nearest neighbors ($k=3$) are: **D (1.41, No)**, **A (3.61, No)**, **C (3.61, No)**. All three vote “No” → the new customer is predicted **not to churn**.

**বাংলা:** নতুন গ্রাহকের (Age=33, Income=48k) সাথে বিদ্যমান সব গ্রাহকের দূরত্ব মাপা হয়েছে। $k=3$ অনুযায়ী নিকটতম ৩ জন (D, A, C) সবাই “No” — তাই প্রেডিকশন **churn করবে না**।

**Critical pitfall — feature scaling / গুরুত্বপূর্ণ ভুল — ফিচার স্কেলিং:** Notice “Income” ranges over tens of thousands while “Age” ranges over tens — if Income were left in raw taka/dollar units instead of thousands, it would completely dominate the distance calculation and Age would become irrelevant. This is exactly why **k-NN requires feature scaling** before use. লক্ষ্য করুন “Income” হাজার হাজার এককে আর “Age” মাত্র কয়েক দশকে — Income যদি raw টাকায় রাখা হতো, তাহলে দূরত্ব হিসাবে Age-এর কোনো প্রভাবই থাকতো না। এ কারণেই **k-NN ব্যবহারের আগে ফিচার স্কেলিং আবশ্যক**।

## 27.12 A Single Neuron Forward & Backward Pass / একটি নিউরনের ফরওয়ার্ড ও ব্যাকওয়ার্ড পাস

**Setup:** One neuron with two inputs, sigmoid activation. Inputs $x_1=1.0,\ x_2=0.5$; weights $w_1=0.4,\ w_2=-0.6$; bias $b=0.1$; true label $y=1$; learning rate $\eta=0.5$.

**Forward pass / ফরওয়ার্ড পাস:**

> $$\begin{aligned} z = w_1 x_1 + w_2 x_2 + b = (0.4)(1.0) + (-0.6)(0.5) + 0.1 = 0.4 - 0.3 + 0.1 = 0.2 \\ \hat y = \sigma(z) = \dfrac{1}{1+e^{-0.2}} = \dfrac{1}{1+0.819} = 0.550 \end{aligned}$$

**Loss (squared error):**

> $$L = (y-\hat y)^2 = (1-0.550)^2 = 0.2025$$

**Backward pass / ব্যাকওয়ার্ড পাস** (chain rule):

> $$\begin{aligned} \begin{aligned} \dfrac{\partial L}{\partial \hat y} = -2(y-\hat y) = -2(1-0.550) = -0.900 \\ \dfrac{\partial \hat y}{\partial z} = \hat y(1-\hat y) = 0.550(1-0.550) = 0.2475 \end{aligned} \\ \dfrac{\partial L}{\partial z} = \dfrac{\partial L}{\partial \hat y}\cdot\dfrac{\partial \hat y}{\partial z} = -0.900 \times 0.2475 = -0.2228 \end{aligned}$$

Now the gradient with respect to each weight ($\partial z/\partial w_1 = x_1$):

> $$\begin{aligned} \dfrac{\partial L}{\partial w_1} = -0.2228 \times x_1 = -0.2228 \times 1.0 = -0.2228 \\ \dfrac{\partial L}{\partial w_2} = -0.2228 \times x_2 = -0.2228 \times 0.5 = -0.1114 \end{aligned}$$

**Weight update:**

> $$\begin{aligned} w_1^{\text{new}} = w_1 - \eta\dfrac{\partial L}{\partial w_1} = 0.4 - 0.5(-0.2228) = 0.4+0.1114 = 0.5114 \\ w_2^{\text{new}} = w_2 - \eta\dfrac{\partial L}{\partial w_2} = -0.6-0.5(-0.1114) = -0.6+0.0557 = -0.5443 \end{aligned}$$

**Lesson / শিক্ষা:** This entire calculation — forward pass, loss, and the chain-rule gradient back to each weight — is exactly what **backpropagation** \[22\] does automatically, for every neuron, in every layer, of a network with millions of parameters. The math never changes; only the number of times it’s repeated does. এই সম্পূর্ণ হিসাব — forward pass, loss, এবং chain rule দিয়ে প্রতিটি weight-এ gradient পাঠানো — এটাই **backpropagation** \[22\] স্বয়ংক্রিয়ভাবে করে, লক্ষ লক্ষ প্যারামিটারের নেটওয়ার্কের প্রতিটি নিউরনে। গণিত কখনো পাল্টায় না, শুধু পুনরাবৃত্তির সংখ্যা পাল্টায়।

## 27.13 PCA — Worked Example on 2D Data / পিসিএ উদাহরণ

**Scenario:** Four 2D points (already mean-centered): $(2,2),\ (0,-2),\ (-2,0),\ (0,0)$.

**Covariance matrix** entries:

> $$\begin{aligned} \begin{aligned} \text{Var}(x) = \dfrac{2^2+0^2+(-2)^2+0^2}{4} = \dfrac{8}{4} = 2.0 \\ \text{Var}(y) = \dfrac{2^2+(-2)^2+0^2+0^2}{4} = \dfrac{8}{4} = 2.0 \end{aligned} \\ \text{Cov}(x,y) = \dfrac{(2)(2)+(0)(-2)+(-2)(0)+(0)(0)}{4} = \dfrac{4}{4} = 1.0 \end{aligned}$$

Covariance matrix: $\begin{pmatrix}2.0 & 1.0\\ 1.0 & 2.0\end{pmatrix}$. Solving for eigenvalues ($\lambda^2 - \text{trace}\cdot\lambda + \det = 0$, i.e. $\lambda^2-4\lambda+3=0$) gives $\lambda_1=3,\ \lambda_2=1$.

**Variance explained by the first principal component:**

> $$\dfrac{\lambda_1}{\lambda_1+\lambda_2} = \dfrac{3}{4} = 0.75 = 75\%$$

**Lesson / শিক্ষা:** The first principal component (aligned with the direction $(1,1)$, since the two features are positively correlated) captures 75% of the total variance in just one dimension instead of two — this is exactly the compression PCA provides. If $\lambda_1/(\lambda_1+\lambda_2)$ had come out closer to 50%, it would mean the two original features carry mostly independent information and compressing to one dimension would lose a lot. প্রথম principal component (দিক $(1,1)$, কারণ দুটি ফিচার ধনাত্মকভাবে correlated) মোট variance-এর ৭৫% একটি মাত্র ডাইমেনশনেই ধরে ফেলেছে — এটাই PCA-র সংকোচন ক্ষমতা। অনুপাতটি ৫০%-এর কাছাকাছি হলে বোঝাতো দুটি ফিচার প্রায় independent এবং এক ডাইমেনশনে সংকুচিত করলে অনেক তথ্য হারাতে হতো।

## 27.14 Hard vs. Soft Voting Ensemble — Worked Example / ভোটিং এনসেম্বল উদাহরণ

**Scenario:** Three classifiers predict on the same instance:

| Classifier          | Predicted class | $P(\text{Class A})$ | $P(\text{Class B})$ |
|---------------------|-----------------|---------------------|---------------------|
| Logistic Regression | A               | 0.55                | 0.45                |
| Random Forest       | B               | 0.40                | 0.60                |
| SVM                 | B               | 0.30                | 0.70                |

**Hard voting:** counts raw votes — A gets 1 vote, B gets 2 votes → **predicts B**.

**Soft voting:** averages the probabilities —

> $$\begin{aligned} P(\text{A}) = \dfrac{0.55+0.40+0.30}{3} = \dfrac{1.25}{3} = 0.417 \\ P(\text{B}) = \dfrac{0.45+0.60+0.70}{3} = \dfrac{1.75}{3} = 0.583 \end{aligned}$$

Soft voting also predicts **B**, but notice *why* it’s more informative: it shows B won with 58.3% average confidence, not just “2 out of 3 votes.” If Logistic Regression’s confidence in A had been 0.90 instead of 0.55, soft voting could flip the outcome to A even though the raw vote count (1 vs 2) stays identical — hard voting would still say B, missing that one highly confident vote.

**বাংলা:** Hard voting শুধু ভোট গোনে (A=1, B=2 → B জেতে)। Soft voting probability গড় করে (A=41.7%, B=58.3% → B জেতে), কিন্তু এটি *কতটা জোরালোভাবে* জিতেছে তাও দেখায়। যদি Logistic Regression-এর A-তে confidence ০.৯০ হতো, soft voting ফলাফল পাল্টাতে পারতো, কিন্তু hard voting একই থাকতো (B) কারণ সে শুধু ভোট গোনে, confidence নয়।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - A 93% accuracy model can have only 40% precision and 53% F1 — always compute the full picture yourself. / ৯৩% accuracy-র মডেলের precision মাত্র ৪০% হতে পারে — সবসময় পূর্ণ চিত্র নিজে হিসাব করুন। - RMSE ≫ MAE signals outlier-driven error; Macro-F1 ≪ Weighted-F1 signals minority-class failure. / RMSE ≫ MAE মানে outlier-চালিত ভুল; Macro-F1 ≪ Weighted-F1 মানে minority class-এ ব্যর্থতা। - Consistency across folds — not the size of the gap — is what makes an improvement statistically trustworthy. / Fold জুড়ে সামঞ্জস্যতাই উন্নতিকে পরিসংখ্যানগতভাবে বিশ্বাসযোগ্য করে, ব্যবধানের আকার নয়।

------------------------------------------------------------------------

# 29. MODERN & ADVANCED ML CONCEPTS / আধুনিক ও উন্নত ML ধারণা

The concepts in this section appear constantly in papers published from roughly 2018 onward. If you plan to read current literature, these are no longer optional.

এই অংশের ধারণাগুলো ২০১৮ সালের পর প্রকাশিত পেপারে অনবরত আসে। সাম্প্রতিক সাহিত্য পড়তে চাইলে এগুলো আর ঐচ্ছিক নয়।

## 28.1 Transfer Learning & Fine-Tuning / ট্রান্সফার লার্নিং ও ফাইন-টিউনিং

**English:** Instead of training a model from scratch (which needs enormous data and compute), you take a model already trained on a huge general dataset and adapt it to your specific, smaller task. The early layers have already learned general-purpose features — edges and textures for images, grammar and word relationships for text — and those transfer well to new problems.

**Three common strategies:**

| Strategy                  | What you do                                                 | When to use                                           |
|---------------------------|-------------------------------------------------------------|-------------------------------------------------------|
| **Feature extraction**    | Freeze all pretrained layers; train only a new output layer | Very small dataset; target task similar to source     |
| **Fine-tuning (partial)** | Freeze early layers; retrain the later layers               | Moderate dataset; moderately different task           |
| **Full fine-tuning**      | Retrain all layers with a small learning rate               | Larger dataset; task differs meaningfully from source |

**Key pitfall — catastrophic forgetting:** fine-tuning with too high a learning rate destroys the useful pretrained knowledge. Standard practice is a learning rate 10–100× smaller than used for training from scratch.

**বাংলা:** শূন্য থেকে মডেল ট্রেন করার বদলে (যার জন্য বিপুল ডেটা ও কম্পিউট লাগে), বিশাল সাধারণ ডেটাসেটে আগে থেকে ট্রেইন করা একটি মডেল নিয়ে সেটিকে আপনার নির্দিষ্ট, ছোট কাজের জন্য মানিয়ে নেওয়া হয়। প্রাথমিক স্তরগুলো ইতিমধ্যে সাধারণ ফিচার শিখে ফেলেছে — ছবির ক্ষেত্রে edge ও texture, টেক্সটের ক্ষেত্রে ব্যাকরণ ও শব্দ-সম্পর্ক — এবং সেগুলো নতুন সমস্যায় ভালোভাবে কাজে লাগে।

তিনটি কৌশল: *Feature extraction* (সব pretrained স্তর জমাট রেখে শুধু নতুন output স্তর ট্রেন করা — খুব ছোট ডেটাসেটে), *Partial fine-tuning* (প্রাথমিক স্তর জমাট, পরের স্তরগুলো পুনরায় ট্রেন), *Full fine-tuning* (ছোট learning rate দিয়ে সব স্তর পুনরায় ট্রেন)।

প্রধান বিপদ — catastrophic forgetting: অতিরিক্ত বড় learning rate দিয়ে fine-tune করলে আগে শেখা দরকারি জ্ঞান নষ্ট হয়ে যায়। সাধারণত scratch থেকে ট্রেনিংয়ের চেয়ে ১০–১০০ গুণ ছোট learning rate ব্যবহার করা হয়।

What to check in a paper / পেপারে যা যাচাই করবেন: Which pretrained model and which exact checkpoint? Which layers were frozen? What learning rate? Was the pretraining data plausibly related to the target domain — and could it have *overlapped* with the test set (a subtle but serious form of leakage)?

## 28.2 Foundation Models & Large Language Models (LLMs) / ফাউন্ডেশন মডেল ও LLM

**English:** A *foundation model* is a very large model pretrained on broad data at scale, designed to be adapted to many downstream tasks. Large Language Models are the best-known example: Transformer-based networks trained via self-supervision (predicting masked or next tokens) on enormous text corpora.

**Key concepts you will meet in papers:** - **Pretraining vs. post-training** — the initial large-scale self-supervised phase, versus later alignment steps (instruction tuning, RLHF) that shape behaviour. - **Zero-shot / few-shot learning** — solving a task with no task-specific training examples, or with only a handful provided in the prompt. - **In-context learning** — the model adapts its behaviour from examples in the input prompt, without any weight updates. This is *not* training. - **Prompt engineering** — designing the input text to elicit better outputs; increasingly treated as an experimental variable that must be reported for reproducibility. - **Parameter-efficient fine-tuning (PEFT / LoRA)** — adapting a huge model by training a small number of additional parameters instead of all of them, drastically cutting compute cost. - **Hallucination** — fluent but factually incorrect generated output; a central evaluation challenge. - **Retrieval-Augmented Generation (RAG)** — supplying the model with retrieved documents at inference time so its answers are grounded in a source rather than parametric memory alone.

**বাংলা:** *Foundation model* হলো বিশাল পরিসরে pretrained একটি অত্যন্ত বড় মডেল, যা বহু ধরনের downstream কাজে মানিয়ে নেওয়ার জন্য তৈরি। LLM এর সবচেয়ে পরিচিত উদাহরণ: বিপুল টেক্সট কর্পাসে self-supervision দিয়ে ট্রেইন করা Transformer নেটওয়ার্ক।

যেসব ধারণা পেপারে পাবেন: *Zero-shot/few-shot* (কোনো task-specific ট্রেনিং উদাহরণ ছাড়াই বা প্রম্পটে মাত্র কয়েকটি উদাহরণ দিয়ে সমাধান), *In-context learning* (প্রম্পটের উদাহরণ দেখে আচরণ বদলানো — এটি ট্রেনিং নয়), *Prompt engineering* (ইনপুট টেক্সট ডিজাইন করা — reproducibility-র জন্য এখন এটি রিপোর্ট করা জরুরি), *PEFT/LoRA* (সব parameter নয়, অল্প কিছু অতিরিক্ত parameter ট্রেন করে বিশাল মডেল মানিয়ে নেওয়া), *Hallucination* (সাবলীল কিন্তু তথ্যগতভাবে ভুল আউটপুট), *RAG* (inference-এর সময় প্রাসঙ্গিক ডকুমেন্ট সরবরাহ করে উত্তরকে উৎসভিত্তিক করা)।

Critical reading note / সমালোচনামূলক পাঠ: LLM papers have a distinctive reproducibility problem — if the model is accessed through a commercial API, the underlying weights can change without notice, so results may not be reproducible even months later. Good papers report the **exact model version, date of access, temperature/sampling settings, and full prompts**. Treat their absence as a serious red flag. LLM পেপারে একটি স্বতন্ত্র reproducibility সমস্যা আছে — বাণিজ্যিক API-র মাধ্যমে মডেল ব্যবহার করলে অন্তর্নিহিত weights যেকোনো সময় বদলে যেতে পারে। ভালো পেপার নির্দিষ্ট model version, ব্যবহারের তারিখ, temperature সেটিং ও সম্পূর্ণ প্রম্পট উল্লেখ করে; এগুলোর অনুপস্থিতি গুরুতর রেড ফ্ল্যাগ।

## 28.3 Model Calibration / মডেল ক্যালিব্রেশন

**English:** A model is **well calibrated** if, among all the predictions where it says “80% confident,” roughly 80% actually turn out correct. Accuracy and calibration are *different* properties: a model can be highly accurate yet badly overconfident.

This matters enormously in medicine, finance, and any setting where a human acts on the model’s confidence. Deep neural networks are known to be systematically overconfident by default.

**How it is measured:** reliability diagrams (plotting predicted confidence against observed accuracy), and **Expected Calibration Error (ECE)** — the average gap between confidence and accuracy across bins. **How it is fixed:** temperature scaling, Platt scaling, or isotonic regression applied on a held-out validation set.

**বাংলা:** একটি মডেল **well calibrated** তখনই, যখন সে যেসব প্রেডিকশনে “৮০% নিশ্চিত” বলে, তার প্রায় ৮০% বাস্তবে সঠিক হয়। Accuracy আর calibration ভিন্ন বৈশিষ্ট্য — একটি মডেল অত্যন্ত নির্ভুল হয়েও মারাত্মক overconfident হতে পারে।

চিকিৎসা, অর্থনীতি এবং যেখানে মানুষ মডেলের আত্মবিশ্বাসের ওপর ভিত্তি করে সিদ্ধান্ত নেয়, সেখানে এটি অত্যন্ত গুরুত্বপূর্ণ। ডীপ নিউরাল নেটওয়ার্ক সাধারণত overconfident হয়। পরিমাপ: reliability diagram ও **Expected Calibration Error (ECE)**। সমাধান: temperature scaling, Platt scaling, বা isotonic regression।

## 28.4 Active Learning & Data-Centric AI / অ্যাক্টিভ লার্নিং ও ডেটা-কেন্দ্রিক এআই

**English:** **Active learning** flips the usual assumption that data comes first. The model itself identifies which unlabeled samples it is most uncertain about, and only *those* are sent to a human expert for labelling. When expert labelling is expensive (radiologists, lawyers, linguists), this can reach target accuracy with a small fraction of the labelling budget.

**Data-centric AI** is the broader movement arguing that, for most real problems, systematically improving data quality yields larger gains than architecture tweaking. Practically: fixing label noise, resolving annotator disagreement, removing duplicates, and covering edge cases often beats swapping in a fancier model.

**বাংলা:** **Active learning** স্বাভাবিক ধারণাটি উল্টে দেয়। মডেল নিজেই চিহ্নিত করে কোন unlabeled নমুনা নিয়ে সে সবচেয়ে অনিশ্চিত, এবং শুধু সেগুলোই মানুষ বিশেষজ্ঞের কাছে লেবেলিংয়ের জন্য পাঠানো হয়। যেখানে বিশেষজ্ঞের লেবেলিং ব্যয়বহুল (রেডিওলজিস্ট, আইনজীবী, ভাষাবিদ), সেখানে অল্প বাজেটেই কাঙ্ক্ষিত accuracy পাওয়া যায়।

**Data-centric AI** হলো সেই বৃহত্তর ধারা যা বলে — বেশিরভাগ বাস্তব সমস্যায় architecture বদলানোর চেয়ে ডেটার মান পদ্ধতিগতভাবে উন্নত করলে বেশি লাভ হয়: label noise ঠিক করা, annotator মতভেদ মেটানো, duplicate সরানো, edge case cover করা।

## 28.5 Ensemble Strategies Beyond Bagging & Boosting / উন্নত এনসেম্বল কৌশল

| Method                       | How it works                                                                                                          | বাংলা                                                                |
|------------------------------|-----------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
| **Stacking**                 | Train several diverse base models, then train a *meta-model* that learns how best to combine their predictions        | কয়েকটি ভিন্ন base মডেলের প্রেডিকশন একত্রিত করতে একটি meta-মডেল ট্রেন করা |
| **Blending**                 | Like stacking, but the meta-model is trained on a held-out validation set rather than via cross-validation            | Stacking-এর মতো, তবে meta-মডেল আলাদা validation সেটে ট্রেন হয়         |
| **Snapshot ensembles**       | Save model checkpoints at different training stages and ensemble them — one training run, many models                 | ট্রেনিংয়ের বিভিন্ন পর্যায়ের checkpoint একত্রিত করা                       |
| **Mixture of Experts (MoE)** | A routing network sends each input to a small subset of specialized sub-networks, so only part of the model activates | Routing নেটওয়ার্ক প্রতিটি ইনপুট কয়েকটি বিশেষায়িত sub-network-এ পাঠায়    |

**Pitfall in papers:** stacking can leak badly if the meta-model is trained on predictions the base models made on their *own* training data. Correct practice is out-of-fold predictions. পেপারে বিপদ: base মডেলগুলো নিজেদের ট্রেনিং ডেটায় যে প্রেডিকশন করেছে তার ওপর meta-মডেল ট্রেন করলে মারাত্মক leakage হয়। সঠিক পদ্ধতি হলো out-of-fold প্রেডিকশন ব্যবহার করা।

## 28.6 Hyperparameter Search Strategies Compared / হাইপারপ্যারামিটার সার্চ কৌশলের তুলনা

| Strategy                            | How it works                                                                                         | Strength                                     | Weakness                                         |
|-------------------------------------|------------------------------------------------------------------------------------------------------|----------------------------------------------|--------------------------------------------------|
| **Grid Search**                     | Try every combination on a predefined grid                                                           | Exhaustive, reproducible                     | Cost explodes exponentially with dimensions      |
| **Random Search**                   | Sample combinations randomly                                                                         | Often finds good values far faster than grid | No learning from previous trials                 |
| **Bayesian Optimization**           | Build a probabilistic model of the objective; choose the next trial where improvement is most likely | Very sample-efficient                        | More complex; can be trapped in local optima     |
| **Hyperband / Successive Halving**  | Start many configurations cheaply, aggressively kill the weak ones early                             | Excellent under tight compute budgets        | Can prematurely cut slow-starting configurations |
| **Evolutionary / Population-based** | Mutate and select configurations over generations                                                    | Handles messy, non-differentiable spaces     | Computationally heavy                            |

**বাংলা:** *Grid Search* (সব সম্ভাব্য combination — নিখুঁত কিন্তু ডাইমেনশন বাড়লে খরচ বিস্ফোরিত হয়), *Random Search* (এলোমেলো নমুনা — প্রায়ই grid-এর চেয়ে দ্রুত ভালো মান খুঁজে পায়), *Bayesian Optimization* (আগের ফলাফল থেকে শিখে পরবর্তী trial বেছে নেয় — অত্যন্ত sample-efficient), *Hyperband* (অনেক configuration সস্তায় শুরু করে দুর্বলগুলো দ্রুত বাদ দেয়), *Evolutionary* (প্রজন্মের পর প্রজন্ম mutate ও select করে)।

**Reporting requirement:** a paper must state the **search space, the search strategy, and the total trial budget**. “We tuned the hyperparameters” with no further detail is not reproducible. রিপোর্টিং শর্ত: পেপারে search space, search strategy ও মোট trial বাজেট উল্লেখ থাকতে হবে। শুধু “আমরা হাইপারপ্যারামিটার টিউন করেছি” লেখা reproducible নয়।

## 28.7 Time-Series Specific Validation / টাইম-সিরিজ ভ্যালিডেশন

**English:** Standard K-Fold cross-validation is **invalid** for time-series data because shuffling lets the model train on the future and test on the past — a guaranteed leak that produces impossibly good results.

**Correct approaches:** - **Rolling/expanding window (TimeSeriesSplit):** always train on earlier data, test on strictly later data. - **Purging:** remove samples immediately adjacent to the split boundary, since they may share information. - **Embargo:** additionally exclude a buffer period after the training window before the test window begins.

**বাংলা:** টাইম-সিরিজ ডেটায় সাধারণ K-Fold অবৈধ, কারণ shuffle করলে মডেল ভবিষ্যতের ডেটায় ট্রেন করে অতীত প্রেডিক্ট করে — এটি নিশ্চিত leakage এবং অবাস্তব ভালো ফলাফল দেয়।

সঠিক পদ্ধতি: *Rolling/expanding window* (সবসময় আগের ডেটায় ট্রেন, কেবল পরের ডেটায় টেস্ট), *Purging* (split সীমানার ঠিক পাশের নমুনা বাদ দেওয়া), *Embargo* (ট্রেনিং উইন্ডোর পর একটি buffer সময় বাদ রাখা)।

## 28.8 Multicollinearity & VIF — with numbers / মাল্টিকোলিনিয়ারিটি ও VIF

**English:** Multicollinearity occurs when input features are strongly correlated with each other. The model may still predict well overall, but individual coefficients become unstable and **uninterpretable** — a serious problem if your paper draws conclusions from feature importance.

**Variance Inflation Factor (VIF)** quantifies it: regress feature *i* on all other features, obtain `R²ᵢ`, then

> $$VIF_i = \dfrac{1}{1-R_i^2}$$

**Worked example:** if feature “house area in sq-ft” is 95% predictable from the other features, $R^2 = 0.95$, so:

> $$VIF = \dfrac{1}{1-0.95} = \dfrac{1}{0.05} = 20$$

**Common rules of thumb:** VIF \> 5 warrants attention; VIF \> 10 indicates serious multicollinearity. **Treatment:** drop one of the correlated features, combine them into a single feature, or apply PCA/regularization (Ridge handles correlated predictors far better than ordinary least squares).

**বাংলা:** Multicollinearity তখন হয় যখন ইনপুট ফিচারগুলো পরস্পরের সাথে দৃঢ়ভাবে correlated। মডেল সামগ্রিকভাবে ভালো প্রেডিক্ট করলেও পৃথক coefficient অস্থির ও ব্যাখ্যার অযোগ্য হয়ে পড়ে — feature importance থেকে সিদ্ধান্ত টানলে এটি গুরুতর সমস্যা। VIF \> ৫ হলে সতর্ক হন, VIF \> ১০ হলে গুরুতর। সমাধান: একটি correlated ফিচার বাদ দেওয়া, একত্র করা, বা PCA/Ridge regularization ব্যবহার করা।

## 28.9 MLOps & Deployment Realities / এমএলঅপস ও বাস্তব স্থাপন

**English:** A model that works in a notebook is not a system that works in production. Papers claiming practical value should engage with at least some of this.

| Concern                         | What it means                                                                                      |
|---------------------------------|----------------------------------------------------------------------------------------------------|
| **Model drift / concept drift** | The real-world data distribution changes over time, silently degrading a deployed model            |
| **Training-serving skew**       | Preprocessing differs between training and production, so the model sees differently-shaped inputs |
| **Monitoring**                  | Tracking input distributions, prediction distributions, and live performance after deployment      |
| **Model versioning**            | Tracking which exact model, data, and code produced a given result                                 |
| **Latency & throughput**        | How fast a single prediction is, and how many per second the system sustains                       |
| **Rollback**                    | The ability to revert to a previous model when a new one fails in production                       |

**বাংলা:** নোটবুকে চলা মডেল আর প্রোডাকশনে চলা সিস্টেম এক জিনিস নয়। *Concept drift* (সময়ের সাথে বাস্তব ডেটার ধরন বদলে গিয়ে মডেল নীরবে দুর্বল হয়ে পড়া), *Training-serving skew* (ট্রেনিং ও প্রোডাকশনে preprocessing ভিন্ন হওয়া), *Monitoring*, *Model versioning*, *Latency/throughput*, ও *Rollback* — বাস্তব মূল্য দাবি করা পেপারে এগুলোর অন্তত কিছু আলোচনা থাকা উচিত.

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - Transfer learning and foundation models dominate modern papers — always check which checkpoint, which frozen layers, and whether pretraining data could overlap the test set. / আধুনিক পেপারে transfer learning ও foundation model প্রাধান্য পায় — কোন checkpoint, কোন স্তর frozen, এবং pretraining ডেটা টেস্ট সেটের সাথে overlap করতে পারে কিনা যাচাই করুন। - Accuracy and calibration are different properties; a confident model is not automatically a correct one. / Accuracy ও calibration ভিন্ন জিনিস; আত্মবিশ্বাসী মডেল মানেই সঠিক মডেল নয়। - Standard K-Fold is invalid on time-series data — look for TimeSeriesSplit, purging, and embargo instead. / টাইম-সিরিজে সাধারণ K-Fold অবৈধ — TimeSeriesSplit, purging ও embargo খুঁজুন।

------------------------------------------------------------------------

# 30. FAIRNESS, ETHICS & RESPONSIBLE RESEARCH / ন্যায্যতা, নৈতিকতা ও দায়িত্বশীল গবেষণা

Increasingly, reviewers at major venues explicitly assess ethics and societal impact. A technically strong paper can still be rejected for ignoring this section entirely.

বড় ভেন্যুর reviewer-রা এখন স্পষ্টভাবে নৈতিকতা ও সামাজিক প্রভাব মূল্যায়ন করেন। কারিগরিভাবে শক্তিশালী পেপারও কেবল এই দিকটি উপেক্ষা করার কারণে প্রত্যাখ্যাত হতে পারে।

## 29.1 Where Bias Enters a Machine Learning System / কোথায় বায়াস ঢোকে

| Stage                   | How bias enters                                                                    | বাংলা                                              |
|-------------------------|------------------------------------------------------------------------------------|----------------------------------------------------|
| **Historical bias**     | The world itself is unequal, and the data faithfully records that inequality       | বাস্তব জগতের বৈষম্যই ডেটায় প্রতিফলিত হয়               |
| **Representation bias** | Some groups are under-sampled relative to the real population                      | কিছু গোষ্ঠী ডেটায় কম প্রতিনিধিত্ব পায়                  |
| **Measurement bias**    | The chosen proxy variable measures something subtly different from the real target | ব্যবহৃত proxy ভেরিয়েবল আসল টার্গেট থেকে ভিন্ন কিছু মাপে |
| **Aggregation bias**    | One single model is forced onto groups that genuinely behave differently           | ভিন্ন আচরণের গোষ্ঠীর ওপর একই মডেল চাপিয়ে দেওয়া       |
| **Evaluation bias**     | The benchmark itself is unrepresentative of deployment reality                     | বেঞ্চমার্কই বাস্তবতার প্রতিনিধিত্ব করে না               |
| **Deployment bias**     | The system is used in a context it was never designed or validated for             | যে প্রেক্ষাপটে ডিজাইন হয়নি সেখানে ব্যবহার করা         |

## 29.2 Fairness Metrics — and Why They Conflict / ন্যায্যতার পরিমাপক ও তাদের দ্বন্দ্ব

**English:** “Fair” is not one thing. Several mathematically precise definitions exist, and they frequently **cannot all be satisfied simultaneously**.

| Metric                  | Definition                                      | Plain meaning                                             |
|-------------------------|-------------------------------------------------|-----------------------------------------------------------|
| **Demographic parity**  | Positive prediction rate is equal across groups | The model selects each group at the same rate             |
| **Equal opportunity**   | True positive rate is equal across groups       | Qualified members of each group are found equally well    |
| **Equalized odds**      | Both TPR and FPR are equal across groups        | Both error types are balanced across groups               |
| **Predictive parity**   | Precision is equal across groups                | A positive prediction means the same thing for each group |
| **Individual fairness** | Similar individuals receive similar predictions | Like cases treated alike                                  |

**The crucial point:** it has been formally shown that when base rates genuinely differ between groups, several of these criteria are **mathematically incompatible** — you must choose which definition matters for your context and *justify that choice explicitly*. A paper that claims its model is simply “fair” without naming the criterion has not actually said anything.

**বাংলা:** “ন্যায্য” এক জিনিস নয়। একাধিক গাণিতিকভাবে সুনির্দিষ্ট সংজ্ঞা আছে এবং প্রায়ই সেগুলো একসাথে পূরণ করা অসম্ভব। যখন গোষ্ঠীগুলোর মধ্যে base rate সত্যিই ভিন্ন, তখন এই মানদণ্ডগুলোর কয়েকটি গাণিতিকভাবে পরস্পরবিরোধী — আপনাকে বেছে নিতে হবে কোন সংজ্ঞাটি আপনার প্রেক্ষাপটে গুরুত্বপূর্ণ এবং সেই পছন্দের যুক্তি স্পষ্টভাবে দিতে হবে। কোন মানদণ্ড তা উল্লেখ না করে কেবল “আমাদের মডেল ন্যায্য” বলা অর্থহীন।

## 29.3 Documentation Standards / ডকুমেন্টেশন স্ট্যান্ডার্ড

Two widely adopted standards that strengthen any paper:

- **Datasheets for Datasets** \[14\] — a structured document describing a dataset’s motivation, composition, collection process, preprocessing, intended uses, and known limitations. Think of it as a “nutrition label” for data.
- **Model Cards** \[15\] — a short structured report accompanying a released model: intended use, out-of-scope uses, training data, evaluation data, **performance disaggregated by group**, and ethical considerations.

**বাংলা:** *Datasheets for Datasets* \[14\] — ডেটাসেটের উদ্দেশ্য, গঠন, সংগ্রহ প্রক্রিয়া, preprocessing, অভিপ্রেত ব্যবহার ও সীমাবদ্ধতার কাঠামোবদ্ধ বর্ণনা (ডেটার “nutrition label”)। *Model Cards* \[15\] — প্রকাশিত মডেলের সাথে দেওয়া সংক্ষিপ্ত রিপোর্ট: অভিপ্রেত ব্যবহার, যেসব ব্যবহার উপযুক্ত নয়, ট্রেনিং ও মূল্যায়ন ডেটা, গোষ্ঠীভিত্তিক পৃথক পারফরম্যান্স, এবং নৈতিক বিবেচনা।

## 29.4 Research Ethics Essentials / গবেষণা নৈতিকতার মৌলিক বিষয়

- **Informed consent & IRB/ethics approval** — required for human-subject data; papers using clinical or personal data should state their approval status.
- **Privacy & anonymization** — removing direct identifiers is often *not* sufficient; individuals can be re-identified by combining quasi-identifiers.
- **Data licensing** — scraped data is not automatically free to redistribute. Check the licence before publishing a dataset.
- **Dual-use risk** — consider whether the method could cause foreseeable harm if misused, and say so honestly.
- **Environmental cost** — training large models consumes significant energy; reporting compute cost is increasingly expected.
- **Authorship integrity** — authorship requires genuine intellectual contribution. Gift authorship and ghost authorship are research-misconduct issues.
- **Plagiarism & self-plagiarism** — reusing your own previously published text without citation is still a violation at most venues.
- **Disclosure of AI assistance** — many venues now require you to state how generative AI tools were used in preparing the work. Check your target venue’s current policy.

**বাংলা:** Informed consent ও IRB অনুমোদন (মানব-বিষয়ক ডেটার জন্য বাধ্যতামূলক), গোপনীয়তা ও anonymization (শুধু নাম মুছে দেওয়া প্রায়ই যথেষ্ট নয় — quasi-identifier মিলিয়ে ব্যক্তি চিহ্নিত করা যায়), ডেটা লাইসেন্সিং (scrape করা ডেটা স্বয়ংক্রিয়ভাবে পুনঃপ্রকাশযোগ্য নয়), Dual-use ঝুঁকি, পরিবেশগত খরচ, Authorship সততা (gift/ghost authorship গবেষণা-অসদাচরণ), Plagiarism ও self-plagiarism, এবং AI সহায়তার ঘোষণা (অনেক ভেন্যু এখন এটি বাধ্যতামূলক করেছে — আপনার লক্ষ্য ভেন্যুর বর্তমান নীতি দেখে নিন)।

------------------------------------------------------------------------

# 31. THE ACADEMIC PUBLISHING PROCESS / একাডেমিক প্রকাশনা প্রক্রিয়া

Understanding how papers get published changes how you read them — you start seeing the incentives behind the writing.

পেপার কীভাবে প্রকাশিত হয় তা বুঝলে আপনার পড়ার ধরনই বদলে যায় — লেখার পেছনের প্রণোদনাগুলো চোখে পড়তে শুরু করে।

## 30.1 Venue Types & What They Signal / ভেন্যুর ধরন

| Venue type                                                     | Characteristics                                                          | বাংলা                                      |
|----------------------------------------------------------------|--------------------------------------------------------------------------|--------------------------------------------|
| **Top-tier conference** (NeurIPS, ICML, ICLR, CVPR, ACL, AAAI) | In ML, conferences outrank journals; competitive peer review; fast cycle | ML-এ কনফারেন্স জার্নালের চেয়ে বেশি মর্যাদাপূর্ণ |
| **Journal** (JMLR, TPAMI, Nature/Science family)               | Longer, more detailed; slower; multiple revision rounds                  | দীর্ঘ ও বিস্তারিত; ধীর প্রক্রিয়া               |
| **Workshop**                                                   | Early-stage or preliminary work; lighter review                          | প্রাথমিক পর্যায়ের কাজ; হালকা রিভিউ           |
| **Preprint server** (arXiv)                                    | **Not peer reviewed** — read with extra caution                          | পিয়ার-রিভিউ হয়নি — বাড়তি সতর্কতা নিয়ে পড়ুন   |
| **Predatory journal**                                          | Charges fees, minimal or fake review                                     | ফি নেয়, রিভিউ নামমাত্র বা ভুয়া               |

## 30.2 Spotting Predatory Journals / প্রিডেটরি জার্নাল চেনা

Warning signs / বিপদসংকেত: - Aggressive spam email invitations to submit - Promises of publication within days, or guaranteed acceptance - Publication fees disclosed only *after* acceptance - Editorial board members listed without their knowledge, or with no verifiable affiliation - A journal name that closely imitates a well-known journal - No clear peer-review process description, no DOI, no indexing in Scopus/Web of Science

**Verification tools:** check whether the journal is listed in DOAJ, Scopus, or Web of Science; check whether the publisher belongs to COPE. **Publishing in a predatory venue can permanently damage a research CV** — it is often treated as worse than not publishing at all.

**বাংলা:** আক্রমণাত্মক স্প্যাম ইমেইল, কয়েকদিনেই প্রকাশের প্রতিশ্রুতি বা নিশ্চিত গ্রহণযোগ্যতা, গ্রহণের পরে ফি জানানো, সম্পাদকীয় বোর্ডে অজান্তে নাম বসানো, বিখ্যাত জার্নালের নাম নকল করা, পিয়ার-রিভিউ প্রক্রিয়ার স্পষ্ট বর্ণনা বা DOI না থাকা। যাচাই: DOAJ, Scopus, Web of Science-এ তালিকাভুক্ত কিনা দেখুন; প্রকাশক COPE-এর সদস্য কিনা দেখুন। প্রিডেটরি ভেন্যুতে প্রকাশ করলে গবেষণা-জীবনে স্থায়ী ক্ষতি হতে পারে।

## 30.3 The Peer Review Cycle / পিয়ার রিভিউ চক্র

> `Submission → Desk check by editor/chair → Assigned to reviewers → Reviews returned → Author rebuttal (conferences) → Decision → (Revision rounds) → Accept / Reject`

**Typical decisions:** Accept · Minor revision · Major revision · Reject and resubmit · Reject.

How to respond to reviewers / রিভিউয়ারদের উত্তর দেওয়ার নিয়ম: - Answer **every** point, even those you disagree with - Be respectful and factual; never dismissive - Quote the reviewer’s comment, then give your response and state exactly what changed and where - If you disagree, argue with evidence rather than assertion - Where a criticism is valid but unfixable within scope, acknowledge it honestly in the Limitations section

**বাংলা:** প্রতিটি পয়েন্টের উত্তর দিন, এমনকি যেগুলোর সাথে আপনি একমত নন; সম্মানজনক ও তথ্যভিত্তিক থাকুন; রিভিউয়ারের মন্তব্য উদ্ধৃত করে তারপর আপনার উত্তর ও ঠিক কোথায় কী বদলেছেন তা লিখুন; দ্বিমত হলে প্রমাণ দিয়ে যুক্তি দিন; সমালোচনা সঠিক কিন্তু এই কাজের পরিসরে সমাধান সম্ভব না হলে Limitations-এ সৎভাবে স্বীকার করুন।

## 30.4 Bibliometrics — Use With Care / বিবলিওমেট্রিক্স — সতর্কতার সাথে ব্যবহার করুন

| Metric             | What it measures                                | Limitation                                                                  |
|--------------------|-------------------------------------------------|-----------------------------------------------------------------------------|
| **Citation count** | How often a work is cited                       | Slow to accumulate; inflated by self-citation; negative citations count too |
| **h-index**        | An author has *h* papers each cited ≥ *h* times | Penalizes early-career researchers; varies hugely across fields             |
| **Impact Factor**  | Average citations per paper in a journal        | A *journal*-level metric, routinely misused to judge individual papers      |
| **CORE ranking**   | Conference quality tier (A\*, A, B, C)          | Field-specific; updated periodically                                        |

A caution / সতর্কতা: These are proxies for quality, not quality itself. A brilliant paper in a modest venue is still brilliant; a weak paper in a famous venue is still weak. **Judge the work using Section 16, not the logo on the first page.** এগুলো মানের proxy মাত্র, মান নয়। সাধারণ ভেন্যুতে প্রকাশিত চমৎকার কাজ চমৎকারই থাকে; বিখ্যাত ভেন্যুর দুর্বল কাজ দুর্বলই। প্রথম পৃষ্ঠার লোগো দেখে নয়, Section 16 দিয়ে কাজটি বিচার করুন।

## 30.5 Reference Management / রেফারেন্স ব্যবস্থাপনা

**Tools:** Zotero (free, open source), Mendeley, JabRef, EndNote. All integrate with LaTeX/Word and export BibTeX.

Practical discipline / বাস্তব অভ্যাস: - Add every paper to your manager **the day you read it**, with your notes attached - Always verify auto-imported metadata — it is frequently wrong - Never cite a paper you have not at least skimmed (Pass 1 minimum) - Prefer citing the **original source** over a secondary description of it - Keep a separate tag/folder for “papers supporting my research gap” — this becomes your literature-evidence base (Section 15)

**বাংলা:** পড়ার দিনেই পেপারটি রেফারেন্স ম্যানেজারে নোটসহ যোগ করুন; স্বয়ংক্রিয়ভাবে আসা metadata সবসময় যাচাই করুন (প্রায়ই ভুল থাকে); অন্তত একবার না পড়ে কোনো পেপার সাইট করবেন না; দ্বিতীয় হাতের বর্ণনার বদলে মূল উৎস সাইট করুন; “আমার রিসার্চ গ্যাপ সমর্থনকারী পেপার” নামে আলাদা ট্যাগ রাখুন — এটিই আপনার সাহিত্য-প্রমাণের ভিত্তি হবে।

> 🎯 Quick Recap / সংক্ষিপ্ত পুনরালোচনা - “Fair” has multiple precise definitions that can be mathematically incompatible — always name which one you mean. / “ন্যায্য”-এর একাধিক সুনির্দিষ্ট সংজ্ঞা আছে যেগুলো গাণিতিকভাবে পরস্পরবিরোধী হতে পারে — কোনটি বোঝাচ্ছেন তা নাম ধরে বলুন। - arXiv preprints are not peer reviewed, and predatory journals can permanently damage a CV — verify the venue. / arXiv preprint পিয়ার-রিভিউড নয়, আর প্রিডেটরি জার্নাল স্থায়ী ক্ষতি করতে পারে — ভেন্যু যাচাই করুন। - Citation counts and impact factors are proxies, not quality; judge the work itself. / Citation ও impact factor মানের proxy মাত্র — কাজটিকে নিজে বিচার করুন।

# 32. GLOSSARY OF KEY TERMS / শব্দকোষ

| Term                        | English                                                               | বাংলা                                                   | Research context                                 |
|:----------------------------|:----------------------------------------------------------------------|:--------------------------------------------------------|:-------------------------------------------------|
| **Ablation Study**          | Systematically removing model components to prove their contribution. | মডেলের অংশ সরিয়ে অবদান প্রমাণ করা।                       | Mandatory for complex proposed architectures.    |
| **Accuracy**                | Ratio of correct predictions to all predictions.                      | সঠিক প্রেডিকশনের অনুপাত।                                  | Misleading on imbalanced data.                   |
| **Algorithm**               | A defined step-by-step computational procedure.                       | নির্দিষ্ট ধাপে ধাপে গণনা প্রক্রিয়া।                         | Must be named specifically, not vaguely.         |
| **Architecture**            | The overall structural design of a model (layers, connections).       | মডেলের সামগ্রিক গঠন।                                     | Should be diagrammed and justified.              |
| **Baseline**                | A simple/standard reference model for comparison.                     | তুলনার জন্য সরল রেফারেন্স মডেল।                            | Must be fair and properly tuned.                 |
| **Benchmark**               | A standardized dataset/task used to compare methods.                  | পদ্ধতি তুলনার জন্য প্রমিত ডেটাসেট/টাস্ক।                     | Enables apples-to-apples comparison.             |
| **Bias (statistical)**      | Systematic error from overly simple model assumptions.                | অতিরিক্ত সরল অনুমান থেকে সৃষ্ট নিয়মতান্ত্রিক ভুল।              | Linked to underfitting.                          |
| **Class Imbalance**         | Unequal class sample counts in a dataset.                             | ডেটাসেটে ক্লাসের অসম সংখ্যা।                              | Requires special metrics/handling (Section 3.3). |
| **Confusion Matrix**        | Grid of TP/TN/FP/FN showing classification errors.                    | ক্লাসিফিকেশন ভুলের গ্রিড।                                  | Foundation of classification evaluation.         |
| **Contribution**            | The specific new value a paper adds to the field.                     | পেপারটি ক্ষেত্রে যে নির্দিষ্ট নতুন মূল্য যোগ করে।              | Should map to a novelty type (Section 21).       |
| **Curse of Dimensionality** | Data becomes sparse/unstable as feature count grows.                  | ফিচার বাড়লে ডেটা sparse ও অস্থির হয়ে ওঠে।                | Motivates PCA/feature selection.                 |
| **Data Leakage**            | Test/future information contaminating training.                       | Test/future তথ্য ট্রেনিংয়ে ঢুকে যাওয়া।                     | A top red flag (Section 17.3).                   |
| **Dataset**                 | The collection of data instances used.                                | ব্যবহৃত ডেটার সংগ্রহ।                                      | Must be described precisely (Section 3).         |
| **Embedding**               | A dense vector representation of discrete data (words, items).        | discrete ডেটার (শব্দ, আইটেম) ঘন ভেক্টর প্রতিনিধিত্ব।        | Core to modern NLP/recommendation systems.       |
| **Epoch**                   | One full pass through the training dataset.                           | পুরো ট্রেনিং ডেটাসেটের একবার সম্পূর্ণ পাস।                   | Reported for reproducibility.                    |
| **Feature**                 | A measurable input variable/column.                                   | পরিমাপযোগ্য ইনপুট ভ্যারিয়েবল।                              | Engineering justified by domain knowledge.       |
| **Generalization**          | Performance on new, unseen data.                                      | নতুন, আগে-না-দেখা ডেটায় পারফরম্যান্স।                      | The ultimate goal of ML.                         |
| **Hyperparameter**          | External setting fixed before training.                               | ট্রেনিংয়ের আগে নির্ধারিত external সেটিং।                  | Must be tabulated for reproducibility.           |
| **Inference**               | Using a trained model to predict on new data.                         | ট্রেইনড মডেল দিয়ে নতুন ডেটায় প্রেডিকশন করা।                | Inference time/cost matters for deployment.      |
| **Label**                   | The ground-truth answer for supervised learning.                      | Supervised learning-এর সঠিক উত্তর।                       | Label noise/quality must be audited.             |
| **Loss Function**           | The function minimized during training.                               | ট্রেনিংয়ে যে ফাংশন কমানো হয়।                             | Choice affects what the model optimizes for.     |
| **Model**                   | The function/structure mapping input to prediction.                   | ইনপুট থেকে প্রেডিকশনে রূপান্তরকারী গঠন।                     | —                                                |
| **Novelty**                 | The unique original contribution resolving a gap.                     | কোনো গ্যাপ সমাধানকারী মৌলিক অবদান।                       | See Section 21 for the 12 types.                 |
| **Overfitting**             | Model fits training noise, fails to generalize.                       | ট্রেনিং noise শিখে ফেলা, generalize করতে ব্যর্থ।           | See Section 1.7.                                 |
| **Preprocessing**           | Transforming raw data into model-ready form.                          | কাঁচা ডেটাকে মডেল-উপযোগী করা।                            | Must be fit only on training data.               |
| **Reproducibility**         | The ability of others to obtain the same results.                     | অন্যরা একই ফলাফল পুনরুৎপাদন করতে পারার ক্ষমতা।              | See Section 22’s 10 pillars.                     |
| **Research Gap**            | A missing piece in the field’s collective knowledge.                  | ক্ষেত্রের সম্মিলিত জ্ঞানে অনুপস্থিত অংশ।                      | See Section 12 for 16 types.                     |
| **Research Question**       | The specific, testable question a study answers.                      | একটি গবেষণা যে নির্দিষ্ট, পরীক্ষাযোগ্য প্রশ্নের উত্তর দেয়।     | Must meet SMART criteria (Section 20).           |
| **Hypothesis**              | A specific, testable prediction derived from the research question.   | রিসার্চ প্রশ্ন থেকে উদ্ভূত পরীক্ষাযোগ্য পূর্বাভাস।               | Should be falsifiable.                           |
| **Robustness**              | Stability under noisy/adversarial/shifted input.                      | নয়েজি/adversarial ইনপুটে স্থিতিশীলতা।                     | See Section 6.5.                                 |
| **State-of-the-art (SOTA)** | The best currently published performance on a benchmark.              | কোনো বেঞ্চমার্কে বর্তমান সর্বোত্তম প্রকাশিত ফলাফল।            | Comparison target for new baselines.             |
| **Validation**              | Data/process used to tune models before final testing.                | চূড়ান্ত টেস্টের আগে মডেল টিউন করার জন্য ব্যবহৃত ডেটা/প্রক্রিয়া। | Never touch test data during this step.          |
| **Limitation**              | An honestly declared boundary of one’s own study.                     | নিজের গবেষণার সততার সাথে ঘোষিত সীমা।                    | Different from a field-wide “gap” (Section 14).  |

# 33. FINAL CHEAT SHEET — HOW TO READ ANY ML RESEARCH PAPER

# চূড়ান্ত চিট শিট — যেকোনো ML গবেষণাপত্র কীভাবে পড়বেন

Answer these 17 questions systematically for any paper you read. যেকোনো পেপার পড়ার সময় এই ১৭টি প্রশ্নের উত্তর পদ্ধতিগতভাবে খুঁজুন:

| \#  | Question (English)                | প্রশ্ন (বাংলা)                      | Where to look                        |
|:----|:----------------------------------|:----------------------------------|:-------------------------------------|
| 1   | What problem are they solving?    | তারা কোন সমস্যা সমাধান করছে?       | Introduction, first page             |
| 2   | Why is it important?              | এটি কেন গুরুত্বপূর্ণ?                  | Abstract/Intro motivation            |
| 3   | What has already been done?       | আগে কী কী কাজ হয়েছে?              | Related Work                         |
| 4   | What is missing?                  | কী অভাব ছিল?                      | End of Related Work                  |
| 5   | What is the research gap?         | রিসার্চ গ্যাপ কোনটি?                | End of Introduction (Section 12)     |
| 6   | What is the research question?    | মূল গবেষণা প্রশ্ন কী?                | Intro/Methodology (Section 20)       |
| 7   | What did they propose?            | তারা কী প্রস্তাব করেছে?             | Methodology                          |
| 8   | What dataset did they use?        | কোন ডেটাসেট ব্যবহার করেছে?         | Dataset section (Section 3)          |
| 9   | How did they preprocess the data? | ডেটা কীভাবে প্রস্তুত করেছে?          | Methodology/Preprocessing            |
| 10  | What baselines did they use?      | কোন বেসলাইন ব্যবহার করেছে?         | Experimental Setup                   |
| 11  | What metrics did they use?        | কোন মেট্রিক ব্যবহার করেছে?          | Evaluation (Section 5)               |
| 12  | What were the results?            | ফলাফল কী ছিল?                     | Results table                        |
| 13  | Was the comparison fair?          | তুলনাটি নিরপেক্ষ ছিল কি?            | Check baselines’ tuning (Section 17) |
| 14  | What is actually novel?           | আসল নতুনত্ব কী?                     | Contributions list (Section 21)      |
| 15  | What are the limitations?         | সীমাবদ্ধতা কী কী?                  | Limitations/Conclusion               |
| 16  | What remains unsolved?            | কী এখনো অমীমাংসিত?                | Future Work / your own analysis      |
| 17  | What could I research next?       | আমি পরবর্তীতে কী গবেষণা করতে পারি? | Combine Sections 12, 19, 20          |

## Closing note / সমাপনী নোট

**English:** This handbook is meant to be a living reference — re-read Sections 12 through 25 whenever you’re evaluating a new paper or trying to find your own thesis direction, and use Sections 1 through 6 whenever you need to refresh the underlying ML mechanics behind a method a paper uses. The goal is not to memorize this document, but to internalize the *habit* of asking these questions automatically every time you open a new paper.

**বাংলা:** এই হ্যান্ডবুকটি একটি চলমান রেফারেন্স হিসেবে ব্যবহার করার জন্য তৈরি — নতুন কোনো পেপার মূল্যায়ন করার সময় বা নিজের থিসিসের দিক খুঁজতে গেলে Section 12 থেকে 25 পুনরায় পড়ুন, এবং কোনো পদ্ধতির ভেতরের ML মেকানিজম মনে করিয়ে দিতে Section 1 থেকে 6 ব্যবহার করুন। লক্ষ্য এই ডকুমেন্টটি মুখস্থ করা নয়, বরং প্রতিবার নতুন পেপার খোলার সময় এই প্রশ্নগুলো স্বয়ংক্রিয়ভাবে জিজ্ঞাসা করার অভ্যাস গড়ে তোলা।

------------------------------------------------------------------------

# 34. REFERENCES & FURTHER READING / তথ্যসূত্র ও আরও পাঠ

All references below are real, verifiable published works. Where this handbook states a specific factual claim drawn from one of them, the reference tag (e.g. `[@ref13]`) appears at that point in the text. Concepts that are standard, universally taught textbook material (for example, the definition of precision) are not individually cited, in line with normal academic practice.

নিচের সব তথ্যসূত্র বাস্তব ও যাচাইযোগ্য প্রকাশিত কাজ। এই হ্যান্ডবুকে কোনো নির্দিষ্ট তথ্যভিত্তিক দাবি এগুলোর কোনোটি থেকে এলে সেখানে একটি সংখ্যাযুক্ত রেফারেন্স (যেমন **\[১৩\]**) দেওয়া আছে। যেসব ধারণা সর্বজনীনভাবে পাঠ্যপুস্তকে শেখানো হয় (যেমন precision-এর সংজ্ঞা), স্বাভাবিক একাডেমিক রীতি অনুযায়ী সেগুলো আলাদাভাবে সাইট করা হয়নি।

<div id="refs" class="references csl-bib-body">

<div id="ref-ref2" class="csl-entry">

<span class="csl-left-margin">\[1\] </span><span class="csl-right-inline">A. L. Samuel, “Some studies in machine learning using the game of checkers,” *IBM Journal of Research and Development*, vol. 3, no. 3, pp. 210–229, 1959.</span>

</div>

<div id="ref-ref1" class="csl-entry">

<span class="csl-left-margin">\[2\] </span><span class="csl-right-inline">T. M. Mitchell, *Machine learning*. McGraw-Hill, 1997.</span>

</div>

<div id="ref-ref5" class="csl-entry">

<span class="csl-left-margin">\[3\] </span><span class="csl-right-inline">T. Hastie, R. Tibshirani, and J. Friedman, *The elements of statistical learning*, 2nd ed. Springer, 2009.</span>

</div>

<div id="ref-ref9" class="csl-entry">

<span class="csl-left-margin">\[4\] </span><span class="csl-right-inline">D. H. Wolpert, “The lack of a priori distinctions between learning algorithms,” *Neural Computation*, vol. 8, no. 7, pp. 1341–1390, 1996.</span>

</div>

<div id="ref-ref16" class="csl-entry">

<span class="csl-left-margin">\[5\] </span><span class="csl-right-inline">T. Saito and M. Rehmsmeier, “The precision-recall plot is more informative than the ROC plot when evaluating binary classifiers on imbalanced datasets,” *PLOS ONE*, vol. 10, no. 3, p. e0118432, 2015.</span>

</div>

<div id="ref-ref11" class="csl-entry">

<span class="csl-left-margin">\[6\] </span><span class="csl-right-inline">R. Kohavi, “A study of cross-validation and bootstrap for accuracy estimation and model selection,” in *Proceedings of IJCAI*, 1995, pp. 1137–1143.</span>

</div>

<div id="ref-ref50" class="csl-entry">

<span class="csl-left-margin">\[7\] </span><span class="csl-right-inline">S. M. Lundberg and S.-I. Lee, “A unified approach to interpreting model predictions,” in *Advances in neural information processing systems (NeurIPS)*, 2017.</span>

</div>

<div id="ref-ref49" class="csl-entry">

<span class="csl-left-margin">\[8\] </span><span class="csl-right-inline">M. T. Ribeiro, S. Singh, and C. Guestrin, “"Why should I trust you?": Explaining the predictions of any classifier,” in *Proceedings of the 22nd ACM SIGKDD conference*, 2016, pp. 1135–1144.</span>

</div>

<div id="ref-ref51" class="csl-entry">

<span class="csl-left-margin">\[9\] </span><span class="csl-right-inline">R. R. Selvaraju, M. Cogswell, A. Das, R. Vedantam, D. Parikh, and D. Batra, “Grad-CAM: Visual explanations from deep networks via gradient-based localization,” in *Proceedings of the IEEE international conference on computer vision (ICCV)*, 2017, pp. 618–626.</span>

</div>

<div id="ref-ref12" class="csl-entry">

<span class="csl-left-margin">\[10\] </span><span class="csl-right-inline">T. G. Dietterich, “Approximate statistical tests for comparing supervised classification learning algorithms,” *Neural Computation*, vol. 10, no. 7, pp. 1895–1923, 1998.</span>

</div>

<div id="ref-ref14" class="csl-entry">

<span class="csl-left-margin">\[11\] </span><span class="csl-right-inline">J. Demšar, “Statistical comparisons of classifiers over multiple data sets,” *Journal of Machine Learning Research*, vol. 7, pp. 1–30, 2006.</span>

</div>

<div id="ref-ref19" class="csl-entry">

<span class="csl-left-margin">\[12\] </span><span class="csl-right-inline">S. Keshav, “How to read a paper,” *ACM SIGCOMM Computer Communication Review*, vol. 37, no. 3, pp. 83–84, 2007, doi: [10.1145/1273445.1273458](https://doi.org/10.1145/1273445.1273458).</span>

</div>

<div id="ref-ref20" class="csl-entry">

<span class="csl-left-margin">\[13\] </span><span class="csl-right-inline">C. Müller-Bloch and J. Kranz, “A framework for rigorously identifying research gaps in qualitative literature reviews,” in *Proceedings of the 36th international conference on information systems (ICIS)*, 2015.</span>

</div>

<div id="ref-ref21" class="csl-entry">

<span class="csl-left-margin">\[14\] </span><span class="csl-right-inline">K. A. Robinson, I. J. Saldanha, and N. A. McKoy, “Development of a framework to identify research gaps from systematic reviews,” *Journal of Clinical Epidemiology*, vol. 64, no. 12, pp. 1325–1330, 2011, doi: [10.1016/j.jclinepi.2011.06.009](https://doi.org/10.1016/j.jclinepi.2011.06.009).</span>

</div>

<div id="ref-ref22" class="csl-entry">

<span class="csl-left-margin">\[15\] </span><span class="csl-right-inline">D. A. Miles, “A taxonomy of research gaps: Identifying and defining the seven research gaps.” Doctoral Student Workshop: Finding Research Gaps – Research Methods and Strategies, Dallas, Texas, 2017.</span>

</div>

<div id="ref-ref53" class="csl-entry">

<span class="csl-left-margin">\[16\] </span><span class="csl-right-inline">C. Szegedy *et al.*, “Intriguing properties of neural networks,” in *International conference on learning representations (ICLR)*, 2014.</span>

</div>

<div id="ref-ref54" class="csl-entry">

<span class="csl-left-margin">\[17\] </span><span class="csl-right-inline">I. J. Goodfellow, J. Shlens, and C. Szegedy, “Explaining and harnessing adversarial examples,” in *International conference on learning representations (ICLR)*, 2015.</span>

</div>

<div id="ref-ref36" class="csl-entry">

<span class="csl-left-margin">\[18\] </span><span class="csl-right-inline">A. Krizhevsky, I. Sutskever, and G. E. Hinton, “ImageNet classification with deep convolutional neural networks,” in *Advances in neural information processing systems (NeurIPS)*, 2012.</span>

</div>

<div id="ref-ref37" class="csl-entry">

<span class="csl-left-margin">\[19\] </span><span class="csl-right-inline">K. He, X. Zhang, S. Ren, and J. Sun, “Deep residual learning for image recognition,” in *Proceedings of the IEEE conference on computer vision and pattern recognition (CVPR)*, 2016, pp. 770–778.</span>

</div>

<div id="ref-ref39" class="csl-entry">

<span class="csl-left-margin">\[20\] </span><span class="csl-right-inline">A. Vaswani *et al.*, “Attention is all you need,” in *Advances in neural information processing systems (NeurIPS)*, 2017.</span>

</div>

<div id="ref-ref13" class="csl-entry">

<span class="csl-left-margin">\[21\] </span><span class="csl-right-inline">S. Kapoor and A. Narayanan, “Leakage and the reproducibility crisis in machine-learning-based science,” *Patterns*, vol. 4, no. 9, p. 100804, 2023, doi: [10.1016/j.patter.2023.100804](https://doi.org/10.1016/j.patter.2023.100804).</span>

</div>

<div id="ref-ref34" class="csl-entry">

<span class="csl-left-margin">\[22\] </span><span class="csl-right-inline">D. E. Rumelhart, G. E. Hinton, and R. J. Williams, “Learning representations by back-propagating errors,” *Nature*, vol. 323, pp. 533–536, 1986.</span>

</div>

<div id="ref-ref3" class="csl-entry">

<span class="csl-left-margin">\[23\] </span><span class="csl-right-inline">A. Géron, *Hands-on machine learning with scikit-learn, keras, and TensorFlow*, 3rd ed. O’Reilly Media, 2022.</span>

</div>

<div id="ref-ref4" class="csl-entry">

<span class="csl-left-margin">\[24\] </span><span class="csl-right-inline">I. Goodfellow, Y. Bengio, and A. Courville, *Deep learning*. MIT Press, 2016.</span>

</div>

<div id="ref-ref6" class="csl-entry">

<span class="csl-left-margin">\[25\] </span><span class="csl-right-inline">C. M. Bishop, *Pattern recognition and machine learning*. Springer, 2006.</span>

</div>

<div id="ref-ref7" class="csl-entry">

<span class="csl-left-margin">\[26\] </span><span class="csl-right-inline">R. S. Sutton and A. G. Barto, *Reinforcement learning: An introduction*, 2nd ed. MIT Press, 2018.</span>

</div>

<div id="ref-ref8" class="csl-entry">

<span class="csl-left-margin">\[27\] </span><span class="csl-right-inline">A. Ng *et al.*, “CS229: Machine learning course materials.” Stanford University, 2024.</span>

</div>

<div id="ref-ref10" class="csl-entry">

<span class="csl-left-margin">\[28\] </span><span class="csl-right-inline">D. H. Wolpert and W. G. Macready, “No free lunch theorems for optimization,” *IEEE Transactions on Evolutionary Computation*, vol. 1, no. 1, pp. 67–82, 1997.</span>

</div>

<div id="ref-ref15" class="csl-entry">

<span class="csl-left-margin">\[29\] </span><span class="csl-right-inline">J. Pineau *et al.*, “Improving reproducibility in machine learning research (a report from the NeurIPS 2019 reproducibility program),” *Journal of Machine Learning Research*, vol. 22, 2021.</span>

</div>

<div id="ref-ref17" class="csl-entry">

<span class="csl-left-margin">\[30\] </span><span class="csl-right-inline">N. V. Chawla, K. W. Bowyer, L. O. Hall, and W. P. Kegelmeyer, “SMOTE: Synthetic minority over-sampling technique,” *Journal of Artificial Intelligence Research*, vol. 16, pp. 321–357, 2002.</span>

</div>

<div id="ref-ref18" class="csl-entry">

<span class="csl-left-margin">\[31\] </span><span class="csl-right-inline">D. Sculley *et al.*, “Hidden technical debt in machine learning systems,” in *Advances in neural information processing systems (NeurIPS)*, 2015.</span>

</div>

<div id="ref-ref23" class="csl-entry">

<span class="csl-left-margin">\[32\] </span><span class="csl-right-inline">J. Webster and R. T. Watson, “Analyzing the past to prepare for the future: Writing a literature review,” *MIS Quarterly*, vol. 26, no. 2, pp. xiii–xxiii, 2002.</span>

</div>

<div id="ref-ref24" class="csl-entry">

<span class="csl-left-margin">\[33\] </span><span class="csl-right-inline">M. J. Page *et al.*, “The PRISMA 2020 statement: An updated guideline for reporting systematic reviews,” *BMJ*, vol. 372, p. n71, 2021, doi: [10.1136/bmj.n71](https://doi.org/10.1136/bmj.n71).</span>

</div>

<div id="ref-ref25" class="csl-entry">

<span class="csl-left-margin">\[34\] </span><span class="csl-right-inline">B. Kitchenham and S. Charters, “Guidelines for performing systematic literature reviews in software engineering,” Keele University; University of Durham, EBSE-2007-01, 2007.</span>

</div>

<div id="ref-ref26" class="csl-entry">

<span class="csl-left-margin">\[35\] </span><span class="csl-right-inline">L. Breiman, “Random forests,” *Machine Learning*, vol. 45, no. 1, pp. 5–32, 2001.</span>

</div>

<div id="ref-ref27" class="csl-entry">

<span class="csl-left-margin">\[36\] </span><span class="csl-right-inline">L. Breiman, “Bagging predictors,” *Machine Learning*, vol. 24, no. 2, pp. 123–140, 1996.</span>

</div>

<div id="ref-ref28" class="csl-entry">

<span class="csl-left-margin">\[37\] </span><span class="csl-right-inline">C. Cortes and V. Vapnik, “Support-vector networks,” *Machine Learning*, vol. 20, no. 3, pp. 273–297, 1995.</span>

</div>

<div id="ref-ref29" class="csl-entry">

<span class="csl-left-margin">\[38\] </span><span class="csl-right-inline">J. H. Friedman, “Greedy function approximation: A gradient boosting machine,” *The Annals of Statistics*, vol. 29, no. 5, pp. 1189–1232, 2001.</span>

</div>

<div id="ref-ref30" class="csl-entry">

<span class="csl-left-margin">\[39\] </span><span class="csl-right-inline">T. Chen and C. Guestrin, “XGBoost: A scalable tree boosting system,” in *Proceedings of the 22nd ACM SIGKDD international conference on knowledge discovery and data mining*, 2016, pp. 785–794.</span>

</div>

<div id="ref-ref31" class="csl-entry">

<span class="csl-left-margin">\[40\] </span><span class="csl-right-inline">M. Ester, H.-P. Kriegel, J. Sander, and X. Xu, “A density-based algorithm for discovering clusters in large spatial databases with noise,” in *Proceedings of KDD-96*, 1996, pp. 226–231.</span>

</div>

<div id="ref-ref32" class="csl-entry">

<span class="csl-left-margin">\[41\] </span><span class="csl-right-inline">L. Breiman, J. H. Friedman, R. A. Olshen, and C. J. Stone, *Classification and regression trees*. Wadsworth, 1984.</span>

</div>

<div id="ref-ref33" class="csl-entry">

<span class="csl-left-margin">\[42\] </span><span class="csl-right-inline">H. Hotelling, “Analysis of a complex of statistical variables into principal components,” *Journal of Educational Psychology*, vol. 24, no. 6, pp. 417–441, 1933.</span>

</div>

<div id="ref-ref35" class="csl-entry">

<span class="csl-left-margin">\[43\] </span><span class="csl-right-inline">Y. LeCun, L. Bottou, Y. Bengio, and P. Haffner, “Gradient-based learning applied to document recognition,” *Proceedings of the IEEE*, vol. 86, no. 11, pp. 2278–2324, 1998.</span>

</div>

<div id="ref-ref38" class="csl-entry">

<span class="csl-left-margin">\[44\] </span><span class="csl-right-inline">S. Hochreiter and J. Schmidhuber, “Long short-term memory,” *Neural Computation*, vol. 9, no. 8, pp. 1735–1780, 1997.</span>

</div>

<div id="ref-ref40" class="csl-entry">

<span class="csl-left-margin">\[45\] </span><span class="csl-right-inline">J. Devlin, M.-W. Chang, K. Lee, and K. Toutanova, “BERT: Pre-training of deep bidirectional transformers for language understanding,” in *Proceedings of NAACL-HLT*, 2019, pp. 4171–4186.</span>

</div>

<div id="ref-ref41" class="csl-entry">

<span class="csl-left-margin">\[46\] </span><span class="csl-right-inline">I. Goodfellow *et al.*, “Generative adversarial nets,” in *Advances in neural information processing systems (NeurIPS)*, 2014.</span>

</div>

<div id="ref-ref42" class="csl-entry">

<span class="csl-left-margin">\[47\] </span><span class="csl-right-inline">D. P. Kingma and M. Welling, “Auto-encoding variational bayes,” in *International conference on learning representations (ICLR)*, 2014.</span>

</div>

<div id="ref-ref43" class="csl-entry">

<span class="csl-left-margin">\[48\] </span><span class="csl-right-inline">J. Ho, A. Jain, and P. Abbeel, “Denoising diffusion probabilistic models,” in *Advances in neural information processing systems (NeurIPS)*, 2020.</span>

</div>

<div id="ref-ref44" class="csl-entry">

<span class="csl-left-margin">\[49\] </span><span class="csl-right-inline">N. Srivastava, G. Hinton, A. Krizhevsky, I. Sutskever, and R. Salakhutdinov, “Dropout: A simple way to prevent neural networks from overfitting,” *Journal of Machine Learning Research*, vol. 15, no. 1, pp. 1929–1958, 2014.</span>

</div>

<div id="ref-ref45" class="csl-entry">

<span class="csl-left-margin">\[50\] </span><span class="csl-right-inline">S. Ioffe and C. Szegedy, “Batch normalization: Accelerating deep network training by reducing internal covariate shift,” in *Proceedings of ICML*, 2015, pp. 448–456.</span>

</div>

<div id="ref-ref46" class="csl-entry">

<span class="csl-left-margin">\[51\] </span><span class="csl-right-inline">D. P. Kingma and J. Ba, “Adam: A method for stochastic optimization,” in *International conference on learning representations (ICLR)*, 2015.</span>

</div>

<div id="ref-ref47" class="csl-entry">

<span class="csl-left-margin">\[52\] </span><span class="csl-right-inline">V. Mnih *et al.*, “Human-level control through deep reinforcement learning,” *Nature*, vol. 518, pp. 529–533, 2015.</span>

</div>

<div id="ref-ref48" class="csl-entry">

<span class="csl-left-margin">\[53\] </span><span class="csl-right-inline">D. Silver *et al.*, “Mastering the game of go with deep neural networks and tree search,” *Nature*, vol. 529, pp. 484–489, 2016.</span>

</div>

<div id="ref-ref52" class="csl-entry">

<span class="csl-left-margin">\[54\] </span><span class="csl-right-inline">C. Rudin, “Stop explaining black box machine learning models for high stakes decisions and use interpretable models instead,” *Nature Machine Intelligence*, vol. 1, pp. 206–215, 2019.</span>

</div>

<div id="ref-ref55" class="csl-entry">

<span class="csl-left-margin">\[55\] </span><span class="csl-right-inline">T. Gebru *et al.*, “Datasheets for datasets,” *Communications of the ACM*, vol. 64, no. 12, pp. 86–92, 2021.</span>

</div>

<div id="ref-ref56" class="csl-entry">

<span class="csl-left-margin">\[56\] </span><span class="csl-right-inline">M. Mitchell *et al.*, “Model cards for model reporting,” in *Proceedings of the conference on fairness, accountability, and transparency (FAT\*)*, 2019, pp. 220–229.</span>

</div>

<div id="ref-ref57" class="csl-entry">

<span class="csl-left-margin">\[57\] </span><span class="csl-right-inline">S. Barocas, M. Hardt, and A. Narayanan, *Fairness and machine learning: Limitations and opportunities*. MIT Press, 2023.</span>

</div>

<div id="ref-ref58" class="csl-entry">

<span class="csl-left-margin">\[58\] </span><span class="csl-right-inline">C. Guo, G. Pleiss, Y. Sun, and K. Q. Weinberger, “On calibration of modern neural networks,” in *Proceedings of ICML*, 2017, pp. 1321–1330.</span>

</div>

<div id="ref-ref59" class="csl-entry">

<span class="csl-left-margin">\[59\] </span><span class="csl-right-inline">F. Pedregosa *et al.*, “Scikit-learn: Machine learning in Python,” *Journal of Machine Learning Research*, vol. 12, pp. 2825–2830, 2011.</span>

</div>

<div id="ref-ref60" class="csl-entry">

<span class="csl-left-margin">\[60\] </span><span class="csl-right-inline">A. Paszke *et al.*, “PyTorch: An imperative style, high-performance deep learning library,” in *Advances in neural information processing systems (NeurIPS)*, 2019.</span>

</div>

<div id="ref-ref61" class="csl-entry">

<span class="csl-left-margin">\[61\] </span><span class="csl-right-inline">M. Abadi *et al.*, “TensorFlow: A system for large-scale machine learning,” in *Proceedings of the 12th USENIX symposium on operating systems design and implementation (OSDI)*, 2016, pp. 265–283.</span>

</div>

</div>
