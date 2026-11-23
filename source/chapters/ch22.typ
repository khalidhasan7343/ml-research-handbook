#import "../template.typ": *

= Reading LLM-Era Papers
<reading-llm-era-papers>
#bnsub(1)[এলএলএম যুগের পেপার পড়া]
Section 20.2 introduced the vocabulary of large language models: pretraining, in-context learning, prompting and fine-tuning. This chapter is about judging the #emph[evidence] in papers that use them. Most of the critical-reading tools of Parts II and III still apply, but LLMs change several things at once. The model is usually trained by someone else, on data nobody outside can fully inspect; the "method" may be a prompt; and the test sets are public, so they may already be inside the model. The chapter shows how to read benchmark and leaderboard results, how to think about test-set contamination, what a fair baseline looks like, how far to trust an LLM acting as a judge, what a reproducible experiment with an API reports, and ten new red flags that continue the list in Chapter 11.

#bn[Section 20.2-এ large language model-এর শব্দভাণ্ডার পরিচিত করানো হয়েছে: pretraining, in-context learning, prompting ও fine-tuning। এই chapter-এর বিষয় হলো এগুলো ব্যবহার করা পেপারের #emph[প্রমাণ] বিচার করা। Part II ও III-এর বেশিরভাগ সমালোচনামূলক পাঠের কৌশল এখনো কাজে লাগে, তবে LLM একসাথে কয়েকটি জিনিস বদলে দেয়: মডেলটি সাধারণত অন্য কেউ এমন ডেটায় train করেছে যা বাইরের কেউ পুরোপুরি দেখতে পারে না; "পদ্ধতি"টি হতে পারে একটি প্রম্পট; আর test set-গুলো পাবলিক, তাই সেগুলো হয়তো আগেই মডেলের ভেতরে ঢুকে আছে। এখানে আছে: benchmark ও leaderboard-এর ফলাফল কীভাবে পড়বেন, test-set contamination নিয়ে কীভাবে ভাববেন, ন্যায্য বেসলাইন কেমন, বিচারক হিসেবে LLM-কে কতটা বিশ্বাস করবেন, API দিয়ে করা পুনরুৎপাদনযোগ্য experiment কী কী রিপোর্ট করে, এবং Chapter 11-এর তালিকার ধারাবাহিকতায় দশটি নতুন red flag।]

== What Changed: Pretraining, Prompting and Scale
<what-changed-pretraining-prompting-and-scale>
#bnsub(2)[কী বদলেছে: pretraining, prompting ও scale]
For most of the history of machine learning, a paper trained its own model on a training set and reported results on a held-out test set. GPT-3, a 175-billion-parameter model, showed that a single pretrained model could perform many tasks with no gradient updates at all: the task and a few examples are given in the prompt #cite(<ref71>). Since then, many papers do not train a model in the usual sense. They prompt, combine or lightly adapt a model built by someone else. That changes what you must look for.

#figure(
  align(center)[#table(
    columns: (31%, 41%, 28%),
    align: (left,left,left,),
    table.header([What changed], [What to check when reading], [বাংলা],),
    table.hline(),
    [The model was pretrained by someone else, often on undisclosed data], [Could the test set have been in the training data? (Section 22.3)], [test set কি training ডেটায় ছিল?],
    [The method may be a prompt or a pipeline of prompts], [Is the full prompt given? Did the baselines get equal care? (Section 22.4)], [পূর্ণ প্রম্পট আছে কি? বেসলাইন কি সমান যত্ন পেয়েছে?],
    [Behaviour depends on the exact model version], [Are the version, the dates and the decoding settings stated? (Section 22.6)], [version, তারিখ ও settings উল্লেখ আছে কি?],
    [Scale and cost put replication out of reach for most readers], [Are calls, tokens and cost reported? Is an open-weight model included?], [খরচ ও token রিপোর্ট আছে কি? open-weight মডেল আছে কি?],
    [Outputs are open-ended text], [Who or what scored the outputs, and how reliable is that scorer? (Section 22.5)], [আউটপুট কে বা কী মূল্যায়ন করেছে, সেটি কতটা নির্ভরযোগ্য?],
  )]
  , kind: table
  )

None of this makes LLM papers untrustworthy by default. It means that the questions of Chapters 10--12 --- is the comparison fair, is the evidence sufficient, could someone else check it? --- now need LLM-specific versions.

#bn[বেশিরভাগ সময় ML পেপার নিজের মডেল training set-এ train করে held-out test set-এ ফলাফল দিত। ১৭৫ বিলিয়ন parameter-এর GPT-3 দেখাল, একটি pretrained মডেল কোনো gradient update ছাড়াই অনেক কাজ করতে পারে --- কাজটি ও কয়েকটি উদাহরণ প্রম্পটেই দেওয়া হয় #cite(<ref71>)। এখন অনেক পেপার প্রচলিত অর্থে মডেল train-ই করে না; অন্যের বানানো মডেলকে প্রম্পট করে, জোড়া লাগায় বা সামান্য মানিয়ে নেয়। এতে LLM পেপার স্বয়ংক্রিয়ভাবে অবিশ্বাস্য হয়ে যায় না; তবে Chapter 10--12-এর প্রশ্নগুলো --- তুলনা কি ন্যায্য, প্রমাণ কি যথেষ্ট, অন্য কেউ কি যাচাই করতে পারবে --- এখন LLM-এর উপযোগী রূপে করতে হয়।]

== Benchmarks and Leaderboards: What a Score Means
<benchmarks-and-leaderboards-what-a-score-means>
#bnsub(2)[Benchmark ও leaderboard: একটি স্কোরের অর্থ]
A #strong[benchmark] is a fixed set of test items with agreed answers and a metric; a #strong[leaderboard] ranks models by their scores on one or more benchmarks. A single benchmark number hides four questions:

+ #strong[What does it measure?] MMLU, for example, tests 57 subjects, from elementary mathematics to law, with multiple-choice questions #cite(<ref72>). A high score shows that a model picks the right option in that format --- not that it can do the work of a lawyer.
+ #strong[Are the labels right?] Benchmarks contain mistakes. A careful re-annotation estimated that 6.49% of MMLU questions contain errors, and found errors in 57% of the analysed questions in its Virology subset #cite(<ref73>). When two models differ by one point on a benchmark where several percent of the "correct" answers may be wrong, the difference says very little.
+ #strong[Is it saturated?] When the best models score near the ceiling, the remaining differences are mostly noise and label errors.
+ #strong[Is the metric shaping the story?] Schaeffer, Miranda and Koyejo showed that apparently sudden "emergent" abilities can be produced by the researcher's choice of metric: all-or-nothing metrics such as exact match create sharp jumps, while continuous metrics on the same model outputs show smooth, predictable improvement #cite(<ref78>).

#bn[#strong[Benchmark] হলো নির্দিষ্ট উত্তর ও মেট্রিকসহ একটি স্থির প্রশ্নসেট; #strong[leaderboard] এক বা একাধিক benchmark-এর স্কোর দিয়ে মডেলদের ক্রম সাজায়। একটি benchmark স্কোরের পেছনে চারটি প্রশ্ন লুকিয়ে থাকে। (১) এটি কী মাপে? যেমন MMLU প্রাথমিক গণিত থেকে আইন পর্যন্ত ৫৭টি বিষয়ে multiple-choice প্রশ্ন দেয় #cite(<ref72>)\; উচ্চ স্কোর মানে মডেল ওই ফরম্যাটে সঠিক অপশন বাছতে পারে, আইনজীবীর কাজ করতে পারে না। (২) Label কি ঠিক? এক পুনঃপরীক্ষায় দেখা গেছে MMLU-র আনুমানিক ৬.৪৯% প্রশ্নে ভুল আছে, আর Virology অংশের বিশ্লেষিত প্রশ্নের ৫৭%-এ #cite(<ref73>)। কয়েক শতাংশ "সঠিক" উত্তরই যেখানে ভুল হতে পারে, সেখানে এক পয়েন্টের পার্থক্য প্রায় কিছুই বলে না। (৩) Benchmark কি saturated? সেরা মডেলরা সর্বোচ্চ সীমার কাছে পৌঁছালে বাকি পার্থক্যের বেশিরভাগই noise ও label-এর ভুল। (৪) মেট্রিক কি গল্প বানাচ্ছে? দেখা গেছে, হঠাৎ "emergent" সক্ষমতা অনেক সময় মেট্রিক বাছাইয়ের ফল: exact match-এর মতো সব-বা-কিছুই-না মেট্রিকে লাফ দেখা যায়, অথচ একই আউটপুটে ধারাবাহিক মেট্রিকে উন্নতি মসৃণ ও অনুমানযোগ্য #cite(<ref78>)।]

Leaderboards add a further problem: they reward whoever tries most often. Chatbot Arena ranks models from crowdsourced votes between pairs of anonymous answers #cite(<ref81>). A later study found that some providers privately tested many variants and could choose which scores to make public --- at the extreme, 27 private variants tested by Meta before the Llama 4 release #cite(<ref82>). Publishing the best of many tries inflates the score in the same way as reporting the best of many random seeds (Chapter 11, flag 8).

#strong[Worked example: the best of many tries (illustrative numbers).] A provider tests 10 variants of equal true quality. Because of random noise, each measured score varies with a standard deviation of 2 points around the same true value. The expected maximum of 10 independent standard normal values is about 1.54, so the best variant is expected to score

$ 1.54 times 2 approx 3.1 "points above its true quality" $

--- without any real improvement. A leaderboard rank is a hint about where to look, not evidence of superiority.

#bn[Leaderboard-এ আরও একটি সমস্যা আছে: যে বেশিবার চেষ্টা করে, সে-ই সুবিধা পায়। Chatbot Arena জোড়ায় জোড়ায় বেনামি উত্তরের ওপর crowdsourced ভোট থেকে মডেল সাজায় #cite(<ref81>)। পরের এক গবেষণায় দেখা গেছে, কিছু প্রতিষ্ঠান গোপনে অনেকগুলো variant পরীক্ষা করে কোন স্কোর প্রকাশ করবে তা বেছে নিতে পারত --- চরম উদাহরণে Llama 4 প্রকাশের আগে Meta ২৭টি গোপন variant পরীক্ষা করেছিল #cite(<ref82>)। #strong[উদাহরণ (কাল্পনিক সংখ্যা):] সমান মানের ১০টি variant, প্রতিটির মাপা স্কোরে ২ পয়েন্ট standard deviation-এর noise। ১০টি standard normal মানের সর্বোচ্চটির প্রত্যাশিত মান প্রায় ১.৫৪, তাই সেরা variant কোনো আসল উন্নতি ছাড়াই প্রায় ১.৫৪ × ২ ≈ ৩.১ পয়েন্ট বেশি দেখাবে। তাই leaderboard-এর র‍্যাংক কোথায় খুঁজতে হবে তার ইঙ্গিত মাত্র, শ্রেষ্ঠত্বের প্রমাণ নয়।]

== Test-Set Contamination
<test-set-contamination>
#bnsub(2)[Test set-এর দূষণ (contamination)]
#strong[Contamination] means that test items, or text very close to them, were in a model's training data. A contaminated model can score well by remembering rather than by solving the task. Pretraining corpora are huge and often undisclosed, so a reader usually cannot check this directly --- which is exactly why a paper should.

The GPT-3 paper is a useful model of honest reporting. The authors tried to remove benchmark overlaps from the training data, but "a bug in the filtering caused us to ignore some overlaps, and due to the cost of training it was not feasible to retrain the model" #cite(<ref71>). They then built a "clean" version of each benchmark, with every potentially overlapping example removed, and compared scores on the clean subset with scores on the full set. On most benchmarks the change was negligible; the benchmarks that were badly affected were flagged or left out.

#bn[#strong[Contamination] মানে test-এর প্রশ্ন বা তার খুব কাছাকাছি লেখা মডেলের training ডেটায় ছিল। তখন মডেল সমস্যা সমাধান না করে মনে রেখেই ভালো স্কোর করতে পারে। Pretraining ডেটা বিশাল ও প্রায়ই অপ্রকাশিত, তাই পাঠক সাধারণত নিজে এটি যাচাই করতে পারেন না --- ঠিক এ কারণেই পেপারকে করতে হবে। GPT-3 পেপার সৎ রিপোর্টিংয়ের ভালো উদাহরণ: লেখকরা training ডেটা থেকে benchmark-এর মিল সরাতে চেয়েছিলেন, কিন্তু filtering-এর একটি bug-এর কারণে কিছু মিল বাদ পড়েনি, আর খরচের কারণে আবার train করা সম্ভব ছিল না #cite(<ref71>)। এরপর তাঁরা প্রতিটি benchmark-এর একটি "পরিষ্কার" অংশ বানিয়ে পূর্ণ সেটের স্কোরের সাথে তুলনা করেন; বেশিরভাগ benchmark-এ পার্থক্য নগণ্য ছিল, আর যেগুলো বেশি প্রভাবিত, সেগুলো চিহ্নিত বা বাদ দেওয়া হয়।]

#figure(
  align(center)[#table(
    columns: (24%, 52%, 24%),
    align: (left,left,left,),
    table.header([Check], [How it works], [Example],),
    table.hline(),
    [#strong[Clean-subset comparison]], [Score the examples with no detected overlap separately; a clean score well below the full score suggests inflation], [GPT-3 #cite(<ref71>)],
    [#strong[Fresh, matched test set]], [Write new items in the same style and difficulty, guaranteed not to be in any training data], [GSM1k for GSM8K #cite(<ref74>)],
    [#strong[Regularly updated questions]], [Use questions created after the model's training data was collected, with automatic scoring], [LiveBench #cite(<ref80>)],
    [#strong[Memorisation signal]], [Test whether the model assigns unusually high probability to benchmark items, and whether that predicts its score], [GSM1k analysis #cite(<ref74>)],
  )]
  , kind: table
  )

The GSM1k study shows both sides of the story. On newly written grade-school maths problems matched to the public GSM8K benchmark, some model families lost up to 8% accuracy, and a model's probability of generating GSM8K examples was related to the size of its drop (Spearman's r² = 0.36) --- signs that some models had partly memorised the benchmark. Yet many models, especially the strongest ones, showed minimal signs of overfitting #cite(<ref74>). Contamination is a risk to check, not a reason to dismiss every result.

#strong[Worked example: reading a clean-subset analysis (illustrative numbers).] A paper reports 82% accuracy on 1,000 questions. Its overlap check flags 300 questions; the model scores 89% on those and 79% on the 700 clean ones:

$ 0.3 times 89 + 0.7 times 79 = 26.7 + 55.3 = 82.0% $

The headline is 3 points higher than what the model achieves on questions it cannot have seen, so 79% should be reported next to it. The gap is suggestive rather than proof: the flagged questions might also be easier --- popular facts appear on the web more often --- so the clean and flagged subsets are not perfectly comparable.

#bn[GSM1k গবেষণায় দুই দিকই দেখা যায়: পাবলিক GSM8K-এর মতো করে নতুন লেখা প্রাথমিক গণিতের প্রশ্নে কিছু মডেল-পরিবারের accuracy ৮% পর্যন্ত কমেছে, আর মডেল GSM8K-এর উদাহরণ তৈরির সম্ভাবনা যত বেশি দেয়, তার পতনও তত বেশি (Spearman's r² = ০.৩৬) --- আংশিক মুখস্থের লক্ষণ। তবু অনেক মডেল, বিশেষত সবচেয়ে শক্তিশালীগুলো, প্রায় কোনো overfitting দেখায়নি #cite(<ref74>)। Contamination যাচাই করার মতো ঝুঁকি, সব ফলাফল বাতিল করার কারণ নয়। #strong[উদাহরণ (কাল্পনিক সংখ্যা):] ১,০০০ প্রশ্নে ৮২%; ৩০০টি প্রশ্ন চিহ্নিত, সেগুলোতে ৮৯%, বাকি ৭০০ পরিষ্কার প্রশ্নে ৭৯%। ০.৩ × ৮৯ + ০.৭ × ৭৯ = ৮২%। অর্থাৎ শিরোনামের স্কোর দেখা-সম্ভব-নয় এমন প্রশ্নের চেয়ে ৩ পয়েন্ট বেশি; তাই ৭৯%-ও রিপোর্ট করা উচিত। তবে এটি ইঙ্গিত, প্রমাণ নয়: চিহ্নিত প্রশ্নগুলো হয়তো সহজও ছিল।]

== Fair Baselines in the LLM Era
<fair-baselines-in-the-llm-era>
#bnsub(2)[এলএলএম যুগে ন্যায্য বেসলাইন]
Chapter 11's flag 2 --- weak baselines --- takes new forms when the method is a prompt or a pipeline built around an LLM.

- #strong[Equal prompting effort.] Prompting alone can change results dramatically: with eight chain-of-thought examples (worked solutions written out step by step), a 540-billion-parameter model reached state-of-the-art accuracy on the GSM8K maths benchmark #cite(<ref83>). A method that uses chain-of-thought prompting must be compared with a baseline that uses it too; otherwise the gain may come from the prompt, not the method.
- #strong[Sensitivity to the prompt.] Subtle formatting changes that keep the meaning the same changed few-shot accuracy by up to 76 points for LLaMA-2-13B, and the sensitivity remained with larger models and instruction tuning. The authors recommend reporting a #emph[range] of performance across plausible formats instead of a single number #cite(<ref75>).
- #strong[Equal budget.] A pipeline that calls a model 20 times per question should be compared with a simple baseline given the same budget --- for example, sampling 20 answers and taking a majority vote.
- #strong[Same model, or say why not.] "Our 7-billion-parameter model beats a closed model" depends on the closed model's version, prompt and unknown size. Compare against the same base model where possible, and include at least one open-weight model.
- #strong[Standardised numbers.] Holistic evaluations such as HELM run many models on the same scenarios with the same prompts and report seven metrics --- accuracy, calibration, robustness, fairness, bias, toxicity and efficiency #cite(<ref79>). If a paper reports a well-known baseline much lower than standardised evaluations do, ask why.

#bn[Chapter 11-এর ২ নম্বর flag --- দুর্বল বেসলাইন --- LLM যুগে নতুন রূপ নেয়। #strong[সমান প্রম্পটিং পরিশ্রম:] শুধু প্রম্পট বদলেই ফল অনেক বদলাতে পারে; ধাপে ধাপে লেখা আটটি chain-of-thought উদাহরণ দিয়ে ৫৪০ বিলিয়ন parameter-এর একটি মডেল GSM8K-তে state-of-the-art পেয়েছিল #cite(<ref83>)। তাই chain-of-thought ব্যবহার করা পদ্ধতিকে chain-of-thought ব্যবহার করা বেসলাইনের সাথেই তুলনা করতে হবে। #strong[প্রম্পটের প্রতি সংবেদনশীলতা:] অর্থ না বদলানো সূক্ষ্ম ফরম্যাট পরিবর্তনেই LLaMA-2-13B-এর few-shot accuracy ৭৬ পয়েন্ট পর্যন্ত বদলেছে; লেখকরা একটি সংখ্যার বদলে বিভিন্ন ফরম্যাটে পারফরম্যান্সের #emph[পরিসর] রিপোর্ট করার পরামর্শ দেন #cite(<ref75>)। #strong[সমান বাজেট:] প্রতি প্রশ্নে ২০ বার মডেল ডাকা pipeline-কে একই বাজেটের সহজ বেসলাইনের (যেমন ২০টি উত্তর নিয়ে সংখ্যাগরিষ্ঠ ভোট) সাথে তুলনা করুন। #strong[একই মডেল:] সম্ভব হলে একই base মডেলের সাথে তুলনা করুন এবং অন্তত একটি open-weight মডেল রাখুন। #strong[প্রমিত সংখ্যা:] HELM-এর মতো মূল্যায়ন একই প্রম্পটে অনেক মডেলকে সাতটি মেট্রিকে মাপে #cite(<ref79>)\; কোনো পেপারে পরিচিত বেসলাইনের স্কোর অস্বাভাবিক কম হলে কারণ জিজ্ঞেস করুন।]

#strong[Worked example: one prompt versus a range (illustrative numbers).] A paper reports its method M at 78% and a baseline B at 74%: "+4 points". In an appendix, M was tried with 10 prompt formats, scoring between 61% and 78% with a mean of 70%; B was run with one format only. Reported as best-versus-single, M wins by 4 points; reported as mean-versus-single, M loses by 4. Neither claim is safe until B is evaluated across the same formats and both ranges are compared.

#bn[#strong[উদাহরণ (কাল্পনিক সংখ্যা):] পেপারে পদ্ধতি M ৭৮%, বেসলাইন B ৭৪% --- "+৪ পয়েন্ট"। Appendix-এ দেখা যায় M-কে ১০টি প্রম্পট ফরম্যাটে চালানো হয়েছে: ৬১% থেকে ৭৮%, গড় ৭০%; B চালানো হয়েছে মাত্র একটি ফরম্যাটে। সেরা-বনাম-একটি ধরলে M ৪ পয়েন্টে জেতে, গড়-বনাম-একটি ধরলে ৪ পয়েন্টে হারে। B-কেও একই ফরম্যাটগুলোতে না চালানো পর্যন্ত কোনো দাবিই নিরাপদ নয়।]

== LLM-as-a-Judge and Human Evaluation
<llm-as-a-judge-and-human-evaluation>
#bnsub(2)[বিচারক হিসেবে LLM ও মানব মূল্যায়ন]
Open-ended outputs --- summaries, explanations, chat answers --- have no single correct answer, so papers increasingly ask a strong LLM to score them. The best-known study of this practice found that GPT-4 as a judge agreed with human preferences over 80% of the time, about as often as humans agree with each other. It also documented three biases: #strong[position bias] (favouring an answer because of where it appears), #strong[verbosity bias] (favouring longer answers) and #strong[self-enhancement bias] (favouring answers the judge model wrote itself) #cite(<ref76>). An LLM judge is a measuring instrument; like any instrument, it needs calibrating and its settings need reporting.

#bn[খোলা উত্তরের --- সারাংশ, ব্যাখ্যা, চ্যাট উত্তর --- একটিমাত্র সঠিক উত্তর থাকে না, তাই পেপারগুলো ক্রমশ একটি শক্তিশালী LLM দিয়ে মূল্যায়ন করায়। এ বিষয়ে সবচেয়ে পরিচিত গবেষণায় দেখা গেছে, বিচারক হিসেবে GPT-4 ৮০%-এর বেশি ক্ষেত্রে মানুষের পছন্দের সাথে মিলেছে --- প্রায় মানুষে-মানুষে মিলের সমান। তবে তিনটি পক্ষপাতও পাওয়া গেছে: #strong[অবস্থানগত পক্ষপাত] (উত্তর কোথায় আছে তার কারণে পছন্দ), #strong[দৈর্ঘ্যের পক্ষপাত] (লম্বা উত্তর পছন্দ) এবং #strong[আত্মপক্ষপাত] (নিজের লেখা উত্তর পছন্দ) #cite(<ref76>)। LLM বিচারক একটি পরিমাপ-যন্ত্র; অন্য যেকোনো যন্ত্রের মতো এরও calibration ও settings-এর রিপোর্ট দরকার।]

#figure(
  align(center)[#table(
    columns: (40%, 60%),
    align: (left,left,),
    table.header([A careful paper …], [Why],),
    table.hline(),
    [Names the judge model and version, its prompt and the scoring scale], [Without these, nobody can rerun the evaluation],
    [Swaps the order of the two answers and keeps only consistent verdicts, or averages both orders], [Cancels position bias],
    [Reports answer length, or compares answers of similar length], [Exposes or controls verbosity bias],
    [Avoids using the same model family as both contestant and judge, or reports the risk], [Self-enhancement bias],
    [Checks the judge against human labels on a sample and reports the agreement], [Shows the instrument measures what it claims to],
    [For human evaluation: states the number and expertise of raters, their instructions, whether they were blind to the system, and inter-rater agreement], [Human judgements need the same documentation as any annotation (Section 26.7 reports agreement for SentNoB)],
  )]
  , kind: table
  )

#bn[একটি যত্নশীল পেপার: বিচারক মডেলের নাম, version, প্রম্পট ও স্কোরিং স্কেল জানায়; দুটি উত্তরের ক্রম অদলবদল করে শুধু সামঞ্জস্যপূর্ণ রায় রাখে বা দুই ক্রমের গড় নেয় (অবস্থানগত পক্ষপাত দূর করতে); উত্তরের দৈর্ঘ্য রিপোর্ট বা নিয়ন্ত্রণ করে; প্রতিযোগী ও বিচারক একই মডেল-পরিবার থেকে নেওয়া এড়ায়, বা ঝুঁকিটি জানায়; একটি নমুনায় মানুষের label-এর সাথে বিচারকের মিল যাচাই করে রিপোর্ট করে। মানব মূল্যায়নে রেটারের সংখ্যা ও দক্ষতা, নির্দেশনা, তাঁরা সিস্টেমের পরিচয় জানতেন কিনা, এবং রেটারদের মধ্যে মিলের মাত্রা উল্লেখ করতে হয়।]

== Reproducibility with APIs and Model Versions
<reproducibility-with-apis-and-model-versions>
#bnsub(2)[API ও মডেল version-এর সাথে পুনরুৎপাদনযোগ্যতা]
A model behind an API is not a fixed object. Chen, Zaharia and Zou ran the same tasks on the March 2023 and June 2023 versions of GPT-3.5 and GPT-4. GPT-4's accuracy at telling prime from composite numbers fell from 84% to 51%, while GPT-3.5 became much better at the same task #cite(<ref77>). A paper that says only "we used GPT-4" cannot be reproduced, even in principle, once that version changes or is retired. Section 20.2 raised this risk; the table below turns it into a reporting checklist that extends the reproducibility pillars of Chapter 12 #cite(<ref15>).

#bn[API-র পেছনের মডেল কোনো স্থির জিনিস নয়। Chen, Zaharia ও Zou একই কাজ GPT-3.5 ও GPT-4-এর মার্চ ২০২৩ ও জুন ২০২৩ version-এ চালিয়েছিলেন: মৌলিক ও যৌগিক সংখ্যা চেনায় GPT-4-এর accuracy ৮৪% থেকে নেমে ৫১% হয়, অথচ একই কাজে GPT-3.5 অনেক ভালো হয়ে যায় #cite(<ref77>)। তাই শুধু "আমরা GPT-4 ব্যবহার করেছি" লেখা পেপার version বদলে গেলে বা বন্ধ হলে নীতিগতভাবেও আর পুনরুৎপাদন করা যায় না। Section 20.2-এ এই ঝুঁকির কথা বলা হয়েছিল; নিচের টেবিলটি একে Chapter 12-এর reproducibility স্তম্ভের ধারাবাহিকতায় একটি রিপোর্টিং তালিকায় রূপ দেয় #cite(<ref15>)।]

#figure(
  align(center)[#table(
    columns: (34%, 40%, 26%),
    align: (left,left,left,),
    table.header([Report], [Why], [বাংলা],),
    table.hline(),
    [#strong[Exact model identifier] and the dates of the experiments], [The same name can point to different models over time], [সঠিক মডেল নাম/version ও তারিখ],
    [#strong[Decoding settings]: temperature, top-p, maximum tokens, number of samples, and the seed if the API supports one], [Outputs change with every one of these], [decoding settings ও seed],
    [#strong[Full prompts], including the system prompt and few-shot examples], [The prompt is part of the method (Section 22.4)], [পূর্ণ প্রম্পট],
    [#strong[Raw outputs], where licences allow], [Lets others re-score without paying for new calls], [কাঁচা আউটপুট],
    [#strong[Calls, tokens and cost]], [Readers can judge whether the method is affordable, and compare budgets fairly], [call, token ও খরচ],
    [#strong[At least one open-weight model]], [Its exact weights can be downloaded and rerun later], [অন্তত একটি open-weight মডেল],
  )]
  , kind: table
  )

Do not assume that a temperature of 0 makes outputs identical on every call. If repeatability matters to a claim, repeat a sample of the calls and report what you find.

#bn[Temperature ০ দিলেই প্রতিবার হুবহু একই আউটপুট আসবে --- এমন ধরে নেবেন না। কোনো দাবির জন্য পুনরাবৃত্তিযোগ্যতা জরুরি হলে কিছু call আবার চালিয়ে দেখুন এবং যা পান তা রিপোর্ট করুন।]

== Red Flags for LLM Papers
<red-flags-for-llm-papers>
#bnsub(2)[এলএলএম পেপারের রেড ফ্ল্যাগ]
These flags continue the numbering of Chapter 11. As before, they rarely appear alone.

#figure(
  align(center)[#table(
    columns: (4%, 22%, 44%, 30%),
    align: (left,left,left,left,),
    table.header([\#], [Red flag], [What it looks like], [বাংলা],),
    table.hline(),
    [17], [#strong[No contamination check]], [A public benchmark older than the model's training data, with no clean-subset, fresh-set or overlap analysis], [দূষণ যাচাই নেই],
    [18], [#strong[One prompt, one number]], [A single prompt format and no range or sensitivity analysis], [একটি প্রম্পট, একটি সংখ্যা],
    [19], [#strong[Unequal prompting]], [The method gets chain-of-thought, tuned prompts or more samples; the baselines get a plain prompt], [অসম প্রম্পটিং],
    [20], [#strong[Unversioned closed model]], ["We used GPT-4" with no version, dates or decoding settings], [version ছাড়া বন্ধ মডেল],
    [21], [#strong[Unvalidated LLM judge]], [Judge scores only: no human agreement check, no order or length controls, or a judge from the same family as the system], [যাচাইহীন LLM বিচারক],
    [22], [#strong[Leaderboard rank as evidence]], ["Ranks first on leaderboard X" replaces a controlled comparison], [র‍্যাংককে প্রমাণ ধরা],
    [23], [#strong[Tiny gains on noisy benchmarks]], [A point or less of difference on a benchmark with known label errors or near-ceiling scores, with no confidence intervals], [noisy benchmark-এ ক্ষুদ্র উন্নতি],
    [24], [#strong[Metric-made "emergence"]], [Sudden jumps shown only with exact match or another all-or-nothing metric], [মেট্রিকের তৈরি "emergence"],
    [25], [#strong[Hidden cost]], [No calls, tokens, GPU-hours or API cost --- especially for pipelines that call a model many times], [লুকানো খরচ],
    [26], [#strong[Demos instead of evaluation]], [Hand-picked example outputs presented as evidence], [মূল্যায়নের বদলে বাছাই করা উদাহরণ],
  )]
  , kind: table
  )

#bn[এই flag-গুলো Chapter 11-এর ক্রম অনুসরণ করে। আগের মতোই এগুলো সাধারণত একা আসে না: একটি প্রম্পটে একটি সংখ্যা (১৮) প্রায়ই অসম প্রম্পটিং (১৯) ও confidence interval ছাড়া ক্ষুদ্র উন্নতির (২৩) সাথে দেখা যায়, কারণ তিনটিই একই সমস্যা থেকে আসে: মূল্যায়নের পরিবর্তনশীলতাকে গুরুত্ব না দেওয়া।]

== Exercises
<exercises-22>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ A paper reports 86.4% on MMLU for its method and 85.9% for the baseline, each from a single run with a single prompt. Give three reasons, from this chapter, why the 0.5-point difference may mean nothing.

  #bni[একটি পেপারে MMLU-তে পদ্ধতির স্কোর ৮৬.৪%, বেসলাইনের ৮৫.৯% --- প্রতিটি একবার, একটি প্রম্পটে চালানো। এই chapter থেকে তিনটি কারণ দিন কেন ০.৫ পয়েন্টের পার্থক্য অর্থহীন হতে পারে।]

+ A benchmark has 2,000 questions. An overlap check flags 500; the model scores 92% on those and 81% on the rest. Compute the overall accuracy and the gap between the headline and the clean score. Apart from contamination, what could explain the gap?

  #bni[২,০০০ প্রশ্নের একটি benchmark-এ ৫০০টি চিহ্নিত; সেগুলোতে ৯২%, বাকিগুলোতে ৮১%। মোট accuracy এবং শিরোনাম ও পরিষ্কার স্কোরের পার্থক্য বের করুন। Contamination ছাড়া আর কী এই পার্থক্য ব্যাখ্যা করতে পারে?]

+ Rewrite "We used GPT-4 with default settings" as a setup description that someone could reproduce. List every piece of information you added.

  #bni["আমরা default settings-এ GPT-4 ব্যবহার করেছি" --- বাক্যটিকে পুনরুৎপাদনযোগ্য বর্ণনায় রূপ দিন এবং যোগ করা প্রতিটি তথ্যের তালিকা দিন।]

+ A method uses eight chain-of-thought examples and samples 20 answers per question with a majority vote. The only baseline is a single zero-shot answer. Design a fairer set of baselines.

  #bni[একটি পদ্ধতি আটটি chain-of-thought উদাহরণ ও প্রতি প্রশ্নে ২০টি উত্তর নিয়ে সংখ্যাগরিষ্ঠ ভোট ব্যবহার করে; একমাত্র বেসলাইন একটি zero-shot উত্তর। আরও ন্যায্য বেসলাইনের সেট তৈরি করুন।]

+ Your system is built on one LLM family, and you plan to use a model from the same family as the judge against a baseline. Name three biases that could favour your system, and one control for each.

  #bni[আপনার সিস্টেম একটি LLM-পরিবারের ওপর তৈরি, আর বিচারকও একই পরিবারের। কোন তিনটি পক্ষপাত আপনার সিস্টেমের পক্ষে যেতে পারে, এবং প্রতিটির একটি নিয়ন্ত্রণ-ব্যবস্থা বলুন।]

+ A provider tests 5 variants of equal true quality; each measured score has a noise standard deviation of 1.5 points. The expected maximum of 5 independent standard normal values is about 1.16. How much will the best published variant be inflated, on average?

  #bni[সমান মানের ৫টি variant, প্রতিটির স্কোরে ১.৫ পয়েন্ট standard deviation-এর noise। ৫টি standard normal মানের সর্বোচ্চটির প্রত্যাশিত মান প্রায় ১.১৬। প্রকাশিত সেরা variant গড়ে কতটা বাড়িয়ে দেখাবে?]

#recap[
- Most of Chapters 10--12 still applies to LLM papers; what is new is contamination, prompt sensitivity, version drift and judge bias.

  #bni[Chapter 10--12-এর বেশিরভাগই LLM পেপারে প্রযোজ্য; নতুন হলো contamination, প্রম্পট-সংবেদনশীলতা, version-এর পরিবর্তন ও বিচারকের পক্ষপাত।]

- A benchmark score is only as good as the benchmark's labels, coverage and metric; a leaderboard rank rewards whoever tries most often.

  #bni[Benchmark স্কোর ততটাই ভালো যতটা তার label, পরিধি ও মেট্রিক; leaderboard-এর র‍্যাংক তাকেই পুরস্কৃত করে যে বেশিবার চেষ্টা করে।]

- Ask how contamination was checked: a clean subset, a fresh matched test set, or questions created after the training data.

  #bni[জিজ্ঞেস করুন contamination কীভাবে যাচাই হয়েছে: পরিষ্কার অংশ, নতুন সমমানের test set, নাকি training ডেটার পরে তৈরি প্রশ্ন।]

- Give baselines the same prompting effort and budget, and report a range across prompts rather than one number.

  #bni[বেসলাইনকে সমান প্রম্পটিং পরিশ্রম ও বাজেট দিন, এবং একটি সংখ্যার বদলে বিভিন্ন প্রম্পটে পরিসর রিপোর্ট করুন।]

- Treat an LLM judge as an instrument to be validated, and report exact model versions, settings, prompts and cost.

  #bni[LLM বিচারককে যাচাই-সাপেক্ষ পরিমাপ-যন্ত্র হিসেবে দেখুন, এবং মডেলের সঠিক version, settings, প্রম্পট ও খরচ রিপোর্ট করুন।]

]
