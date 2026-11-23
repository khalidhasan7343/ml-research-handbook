#import "../template.typ": *

= Bangla and Low-Resource ML Research
<bangla-and-low-resource-ml-research>
#bnsub(1)[বাংলা ও স্বল্প-সম্পদের ভাষায় ML গবেষণা]
Bangla is the sixth most spoken language in the world, with over 300 million native speakers, yet natural language processing still treats it as a resource-scarce language #cite(<ref69>). For many readers of this book, that is both a difficulty and an opportunity: genuine, feasible research gaps exist close to home, and closing them matters to millions of people. This chapter explains what "low-resource" really means, maps the Bangla NLP landscape as of late 2026, describes the pitfalls that are specific to Bangla text, maps typical gaps to the sixteen types of Chapter 13, reviews strategies that work with little data, shows how to build a dataset ethically, and ends with step 0 of the mini-project: finding a gap and checking whether it is real.

#bn[বাংলা বিশ্বের ষষ্ঠ সর্বাধিক কথিত ভাষা, যার স্থানীয় ভাষাভাষী ৩০ কোটির বেশি; তবু natural language processing-এ একে এখনো স্বল্প-সম্পদের ভাষা ধরা হয় #cite(<ref69>)। এই বইয়ের অনেক পাঠকের জন্য এটি একই সাথে চ্যালেঞ্জ ও সুযোগ: হাতের কাছেই আসল ও সম্ভবপর রিসার্চ গ্যাপ আছে, আর সেগুলো পূরণ করা কোটি মানুষের কাজে লাগে। এই chapter-এ আছে: "স্বল্প-সম্পদ" আসলে কী বোঝায়, ২০২৬ সালের শেষ নাগাদ বাংলা NLP-র চিত্র, বাংলা লেখার নিজস্ব ফাঁদ, Chapter 13-এর ষোলো ধরনের সাথে মিলিয়ে সাধারণ গ্যাপ, কম ডেটায় কাজ করে এমন কৌশল, নৈতিকভাবে ডেটাসেট তৈরি, এবং মিনি-প্রজেক্টের ধাপ ০: একটি গ্যাপ খুঁজে তা আসল কিনা যাচাই করা।]

== What "Low-Resource" Really Means
<what-low-resource-really-means>
#bnsub(2)["স্বল্প-সম্পদ" আসলে কী বোঝায়]
Joshi et al. grouped the world's languages into six classes, 0 to 5, by how much labelled and unlabelled data exists for them. English is in class 5 and Hindi in class 4; Bengali is in class 3 #cite(<ref96>) --- a language with plenty of unlabelled text on the web but, as the BanglaBERT authors put it, too little effort in labelled data collection #cite(<ref69>). "Low-resource" is therefore not one shortage but several:

#figure(
  align(center)[#table(
    columns: (15%, 37%, 28%, 20%),
    align: (left,left,left,left,),
    table.header([Resource], [What is often missing for Bangla], [Consequence for research], [বাংলা],),
    table.hline(),
    [#strong[Labelled data]], [Large, public, well-documented datasets for many tasks and domains], [Small test sets and wide confidence intervals (Section 24.3)], [লেবেলযুক্ত ডেটা],
    [#strong[Evaluation]], [Native benchmarks; many are translated from English], [You may be measuring translation artefacts (Section 24.3)], [মূল্যায়ন],
    [#strong[Tools]], [Mature normalisers, tokenisers and spell checkers], [Preprocessing choices change results, so they must be reported], [টুল],
    [#strong[Compute]], [Reliable GPU access for many researchers], [Favour smaller models and careful budgets (Section 26.5)], [compute],
    [#strong[Tokens]], [Tokenisers built mainly for English], [Higher API cost and shorter effective context (below)], [token],
  )]
  , kind: table
  )

The last row is easy to overlook. Petrov et al. showed that tokenisers can need very different numbers of tokens for the same text in different languages #cite(<ref97>). Their released counts for the same FLORES-200 sentences show that the GPT-4 tokeniser of 2023 (cl100k_base) used about 5.8 times as many tokens for Bengali as for English, and the original LLaMA tokeniser about 5.4 times --- while multilingual tokenisers were far closer: about 1.4 times for XLM-R and about 1.0 for MuRIL, which was built for Indian languages.

#strong[Worked example: what a token premium costs (numbers from the 2023 tokenisers above).] An API charges per token. A budget that processes 1,000 English documents processes only about $1000 div 5.84 approx 171$ documents of the same content in Bangla, and a context window that holds 10 pages of English holds fewer than 2 pages of the same content in Bangla. Newer tokenisers may do better, so measure the one you use (Exercise 1).

#bn[Joshi ও সহকর্মীরা লেবেলযুক্ত ও লেবেলহীন ডেটার পরিমাণ অনুযায়ী বিশ্বের ভাষাগুলোকে ০ থেকে ৫ পর্যন্ত ছয়টি শ্রেণিতে ভাগ করেছেন: ইংরেজি ৫, হিন্দি ৪, আর বাংলা ৩ নম্বর শ্রেণিতে #cite(<ref96>) --- ওয়েবে প্রচুর লেবেলহীন লেখা আছে, কিন্তু BanglaBERT-এর লেখকদের ভাষায় লেবেলযুক্ত ডেটা সংগ্রহে যথেষ্ট প্রচেষ্টা হয়নি #cite(<ref69>)। তাই "স্বল্প-সম্পদ" একটি নয়, কয়েকটি ঘাটতি: লেবেলযুক্ত ডেটা, মূল্যায়ন, টুল, compute এবং token। শেষটি সহজে চোখ এড়ায়: একই FLORES-200 বাক্যে ২০২৩ সালের GPT-4 tokeniser (cl100k_base) ইংরেজির তুলনায় বাংলায় প্রায় ৫.৮ গুণ token ব্যবহার করেছে, আদি LLaMA tokeniser প্রায় ৫.৪ গুণ; অথচ বহুভাষিক tokeniser অনেক কাছাকাছি --- XLM-R প্রায় ১.৪ গুণ, আর ভারতীয় ভাষার জন্য তৈরি MuRIL প্রায় ১.০ #cite(<ref97>)। #strong[উদাহরণ:] যে বাজেটে ১,০০০টি ইংরেজি নথি প্রক্রিয়া করা যায়, সেই বাজেটে একই বিষয়বস্তুর মাত্র প্রায় ১৭১টি বাংলা নথি হয়; আর যে context window-এ ১০ পৃষ্ঠা ইংরেজি ধরে, সেখানে একই বিষয়ের ২ পৃষ্ঠার কম বাংলা ধরে। নতুন tokeniser হয়তো ভালো করে --- তাই আপনারটি মেপে দেখুন।]

== The Bangla NLP Landscape (as of Late 2026)
<the-bangla-nlp-landscape-as-of-late-2026>
#bnsub(2)[বাংলা NLP-র চিত্র (২০২৬ সালের শেষ নাগাদ)]
This is a dated snapshot of resources that recur in this book, not a complete survey; new datasets and models appear every year, so search for newer ones before you start.

- #strong[Pretrained models.] BanglaBERT was pretrained on 27.5 GB of Bangla text crawled from 110 popular websites and introduced the Bangla Language Understanding Benchmark (BLUB). With 1,000 or fewer training examples, it outperformed the multilingual XLM-R (large) by 2--9% on sentiment classification #cite(<ref69>). XLM-R remains a strong multilingual alternative #cite(<ref70>).
- #strong[Shared tasks.] The first Workshop on Bangla Language Processing (BLP-2023) ran shared tasks; its sentiment task combined data from two sources, MUBASE and SentNoB, and released all datasets and evaluation scripts #cite(<ref98>). Shared tasks give you a fixed split and published baselines to compare against.
- #strong[LLMs on Bangla.] An evaluation of zero-shot GPT-3.5, LLaMA-2-13b-chat and Claude-2 on Bengali tasks found that they sometimes matched or beat fine-tuned state-of-the-art models, but performed poorly on most tasks #cite(<ref99>). Models have changed since 2024, so repeat such comparisons --- and include a small fine-tuned model as a baseline.

#figure(
  align(center)[#table(
    columns: (15%, 23%, 14%, 48%),
    align: (left,left,left,left,),
    table.header([Dataset], [Text], [Size], [Labels],),
    table.hline(),
    [#strong[SentNoB]], [Social-media comments on news and videos, 13 domains], [15,728], [Positive, negative, neutral; three annotators, Fleiss' κ = 0.53 #cite(<ref67>)],
    [#strong[BanglaBook]], [Book reviews], [158,065], [From star ratings; 68,694 reviews were machine-translated into Bangla #cite(<ref68>)],
    [#strong[SentiGOLD]], [Many sources, 30 domains], [70,000], [Five classes; annotated by linguists, Fleiss' κ = 0.88 #cite(<ref100>)],
  )]
  , kind: table
  )

#bn[এটি একটি তারিখযুক্ত চিত্র, পূর্ণ সমীক্ষা নয়; প্রতি বছর নতুন ডেটাসেট ও মডেল আসে, তাই শুরুর আগে নতুনগুলো খুঁজুন। #strong[Pretrained মডেল:] BanglaBERT ১১০টি জনপ্রিয় ওয়েবসাইট থেকে সংগৃহীত ২৭.৫ GB বাংলা লেখায় pretrained, এবং এটি BLUB benchmark চালু করেছে; ১,০০০ বা তার কম training উদাহরণে sentiment classification-এ এটি বহুভাষিক XLM-R (large)-এর চেয়ে ২--৯% ভালো করেছে #cite(<ref69>)\; XLM-R একটি শক্তিশালী বহুভাষিক বিকল্প #cite(<ref70>)। #strong[Shared task:] প্রথম Bangla Language Processing workshop (BLP-2023)-এর sentiment task দুটি উৎস --- MUBASE ও SentNoB --- মিলিয়ে ডেটা ও মূল্যায়ন-স্ক্রিপ্ট প্রকাশ করেছে #cite(<ref98>)। #strong[বাংলায় LLM:] zero-shot GPT-3.5, LLaMA-2-13b-chat ও Claude-2 কিছু কাজে fine-tuned মডেলের সমান বা ভালো করলেও বেশিরভাগ কাজে খারাপ করেছে #cite(<ref99>)\; ২০২৪-এর পর মডেল বদলেছে, তাই তুলনাটি আবার করুন এবং একটি ছোট fine-tuned মডেলকে বেসলাইন রাখুন। টেবিলের তিনটি sentiment ডেটাসেট label-এর উৎস ও মানে অনেক আলাদা --- পরের অংশে এর গুরুত্ব দেখা যাবে।]

== Pitfalls Specific to Bangla Text
<pitfalls-specific-to-bangla-text>
#bnsub(2)[বাংলা লেখার নিজস্ব ফাঁদ]
#strong[1\. Unicode normalisation.] Some Bangla letters can be typed in more than one way that looks identical on screen but differs inside the computer. য় can be one code point or য followed by the nukta sign; the same is true of ড় and ঢ়. Unless both training and test data are normalised the same way, one "word" becomes two vocabulary items, and exact-match scores fall for no real reason. Standard Unicode normalisation (NFC) fixes these letters but not every case: ৎ and its older spelling with ত, the hasanta and an invisible zero-width joiner remain different even after NFC and NFKC. Use a Bangla-specific normaliser, apply it identically to every split, and say in the paper which one you used.

```python
import unicodedata as ud

a = "\u09DF"            # YYA typed as one code point
b = "\u09AF\u09BC"      # YA + nukta: looks identical on screen
print(a == b)                                             # False
print(ud.normalize("NFC", a) == ud.normalize("NFC", b))   # True
```

#bn[#strong[১. Unicode normalisation।] কিছু বাংলা অক্ষর একাধিক উপায়ে টাইপ করা যায় --- পর্দায় হুবহু এক, কিন্তু কম্পিউটারের ভেতরে আলাদা। য় একটি code point হতে পারে, আবার য-এর পরে নুক্তা চিহ্নও হতে পারে; ড় ও ঢ়-এর ক্ষেত্রেও তাই। Training ও test ডেটা একইভাবে normalise না করলে একটি "শব্দ" দুটি আলাদা শব্দ হয়ে যায়, আর অকারণে exact-match স্কোর কমে। প্রমিত Unicode normalisation (NFC) এই অক্ষরগুলো ঠিক করে, কিন্তু সব ক্ষেত্রে নয়: ৎ এবং ত, হসন্ত ও অদৃশ্য zero-width joiner দিয়ে লেখা এর পুরোনো রূপ NFC ও NFKC-র পরেও আলাদা থাকে। বাংলা-নির্দিষ্ট normaliser ব্যবহার করুন, প্রতিটি split-এ একইভাবে প্রয়োগ করুন, আর পেপারে কোনটি ব্যবহার করেছেন তা লিখুন।]

#strong[2\. Romanised Bangla and code-mixing.] People write Bangla in Latin letters and mix it with English, especially online. Of BanglaBook's 158,065 reviews, 68,694 were written in Romanised Bangla, English or a mixture, and were machine-translated into Bangla by the dataset's authors #cite(<ref68>). A model trained and tested only on Bangla script may meet very different text when deployed; state which scripts your data covers.

#strong[3\. Translated data.] Translation leaves artefacts that can change results. In natural language inference, for example, translating a premise and its hypothesis separately reduces the word overlap between them, and models are very sensitive to that overlap #cite(<ref102>). The training data of the Bangla NLI dataset in BLUB was machine-translated from the English MultiNLI corpus, while its evaluation sets were translated by expert human translators #cite(<ref69>). Always check which parts of a dataset are translated, prefer test sets written natively in Bangla, and report translated and native results separately.

#bn[#strong[২. রোমান হরফে বাংলা ও code-mixing।] মানুষ, বিশেষত অনলাইনে, ল্যাটিন হরফে বাংলা লেখে ও ইংরেজি মেশায়। BanglaBook-এর ১,৫৮,০৬৫টি রিভিউয়ের ৬৮,৬৯৪টি রোমান হরফের বাংলা, ইংরেজি বা মিশ্র ভাষায় লেখা ছিল, এবং ডেটাসেটের লেখকরা মেশিন দিয়ে সেগুলো বাংলায় অনুবাদ করেছেন #cite(<ref68>)। শুধু বাংলা হরফে train ও test করা মডেল বাস্তবে একেবারে ভিন্ন লেখার মুখোমুখি হতে পারে; আপনার ডেটা কোন কোন হরফ কভার করে তা লিখুন। #strong[৩. অনূদিত ডেটা।] অনুবাদ এমন চিহ্ন রেখে যায় যা ফলাফল বদলে দিতে পারে; যেমন NLI-তে premise ও hypothesis আলাদাভাবে অনুবাদ করলে তাদের শব্দের মিল কমে যায়, আর মডেলগুলো এই মিলের প্রতি খুব সংবেদনশীল #cite(<ref102>)। BLUB-এর বাংলা NLI ডেটাসেটের training অংশ ইংরেজি MultiNLI থেকে মেশিনে অনূদিত, আর মূল্যায়নের অংশ বিশেষজ্ঞ মানব অনুবাদকের করা #cite(<ref69>)। ডেটাসেটের কোন অংশ অনূদিত তা যাচাই করুন, সম্ভব হলে মূলত বাংলায় লেখা test set ব্যবহার করুন, এবং অনূদিত ও মৌলিক অংশের ফলাফল আলাদা রিপোর্ট করুন।]

#strong[4\. What a label means.] BanglaBook's labels come from star ratings (1--2 negative, 3 neutral, 4--5 positive) #cite(<ref68>)\; SentNoB's come from three annotators whose agreement was moderate (κ = 0.53) #cite(<ref67>)\; SentiGOLD's annotators agreed strongly (κ = 0.88) on a five-class scheme #cite(<ref100>). "Neutral" does not mean the same thing in all three. Read the labelling procedure before you combine or compare datasets, and report agreement for any labels you create.

#strong[5\. Dialect and register.] Standard written Bangla, everyday spoken Bangla and regional varieties such as Chittagonian or Sylheti differ in vocabulary and grammar. A model trained on news text may fail on dialectal comments. Describe the variety your data represents, and analyse errors by region or register where you can.

#strong[6\. Small test sets.] With few labelled examples, test sets are small and differences between models are noisy.

#bn[#strong[৪. Label-এর অর্থ।] BanglaBook-এর label এসেছে star rating থেকে (১--২ নেতিবাচক, ৩ নিরপেক্ষ, ৪--৫ ইতিবাচক) #cite(<ref68>)\; SentNoB-এর label দিয়েছেন তিনজন annotator, যাঁদের মিল ছিল মাঝারি (κ = ০.৫৩) #cite(<ref67>)\; SentiGOLD-এর annotator-রা পাঁচ শ্রেণির স্কিমে দৃঢ়ভাবে একমত (κ = ০.৮৮) #cite(<ref100>)। তিনটিতে "নিরপেক্ষ" এক জিনিস নয়। ডেটাসেট মেলানো বা তুলনার আগে label দেওয়ার পদ্ধতি পড়ুন, আর নিজে label দিলে মিলের মাত্রা রিপোর্ট করুন। #strong[৫. উপভাষা ও রীতি।] প্রমিত লিখিত বাংলা, দৈনন্দিন কথ্য বাংলা এবং চাটগাঁইয়া বা সিলেটির মতো আঞ্চলিক রূপ শব্দভান্ডার ও ব্যাকরণে আলাদা; সংবাদে train করা মডেল আঞ্চলিক মন্তব্যে ব্যর্থ হতে পারে। আপনার ডেটা কোন রূপের তা লিখুন, এবং সম্ভব হলে অঞ্চল বা রীতি অনুযায়ী ত্রুটি বিশ্লেষণ করুন। #strong[৬. ছোট test set।] লেবেলযুক্ত উদাহরণ কম হলে test set ছোট হয়, আর মডেলের মধ্যে পার্থক্য noisy হয়।]

#strong[Worked example: how wide is the uncertainty?] SentNoB's test split is 10% of its 15,728 comments, about 1,570 #cite(<ref67>). For an accuracy of 70%, the approximate 95% confidence interval is

$ plus.minus 1.96 sqrt(frac(0.7 times 0.3, 1570)) approx plus.minus 0.023 = plus.minus 2.3 "points" $

So two models at 70.5% and 69.8% are not distinguishable on this test set alone. Macro-F1 is usually noisier still; Chapter 27 shows how to compute its interval with the bootstrap.

#bn[#strong[উদাহরণ: অনিশ্চয়তা কত বড়?] SentNoB-এর test split এর ১৫,৭২৮টি মন্তব্যের ১০%, অর্থাৎ প্রায় ১,৫৭০টি #cite(<ref67>)। ৭০% accuracy-র জন্য আনুমানিক ৯৫% confidence interval প্রায় ± ২.৩ পয়েন্ট। তাই ৭০.৫% ও ৬৯.৮% পাওয়া দুটি মডেলকে শুধু এই test set দিয়ে আলাদা করা যায় না। Macro-F1 সাধারণত আরও noisy; Chapter 27-এ bootstrap দিয়ে এর interval বের করা দেখানো হবে।]

== Typical Gaps, Mapped to the Sixteen Types
<typical-gaps-mapped-to-the-sixteen-types>
#bnsub(2)[সাধারণ গ্যাপ: ষোলো ধরনের সাথে মিলিয়ে]
The pitfalls above point directly at research gaps. The examples below are #strong[illustrative]: each is a #emph[kind] of gap that is common in Bangla NLP, not a claim that a particular gap is open today. Verify any one you choose with Chapter 15 before investing in it.

#figure(
  align(center)[#table(
    columns: (21%, 44%, 35%),
    align: (left,left,left,),
    table.header([Gap type (Chapter 13)], [Bangla example], [Evidence that would close it],),
    table.hline(),
    [#strong[Dataset] (13.3)], [No public, documented dataset for a task in an important domain, such as health questions], [A released dataset with a datasheet and agreement scores],
    [#strong[Evaluation] (13.11)], [A benchmark that exists only as a translation from English], [A natively written test set, compared with the translated one],
    [#strong[Generalization] (13.13)], [Models tested only on the domain they were trained on], [Cross-domain tests with confidence intervals],
    [#strong[Robustness] (13.16)], [Unknown performance on Romanised or code-mixed text], [Test sets that vary script and mixing],
    [#strong[Population / Geographic] (13.6, 13.8)], [Regional varieties missing from the training data], [Dialect test sets; errors analysed by region],
    [#strong[Temporal] (13.7)], [Classifiers trained on years-old posts, while slang and topics change], [A recent, re-annotated test sample],
    [#strong[Reproducibility] (13.12)], [Results reported on private data or without code], [A replication on public data with released code],
    [#strong[Practical] (13.10)], [Models never tested where they would be used, such as low-cost phones], [A deployment study measuring accuracy, latency and cost],
  )]
  , kind: table
  )

#bn[ওপরের ফাঁদগুলো সরাসরি রিসার্চ গ্যাপের দিকে ইঙ্গিত করে। টেবিলের উদাহরণগুলো #strong[উদাহরণমূলক]: প্রতিটি বাংলা NLP-তে প্রচলিত এক #emph[ধরনের] গ্যাপ, আজ কোনো নির্দিষ্ট গ্যাপ খোলা আছে এমন দাবি নয়। যেটি বেছে নেবেন, বিনিয়োগের আগে Chapter 15 দিয়ে যাচাই করুন। ধরনগুলো: ডেটাসেট (যেমন স্বাস্থ্য-প্রশ্নের পাবলিক ডেটাসেট নেই), মূল্যায়ন (শুধু ইংরেজি থেকে অনূদিত benchmark), জেনারেলাইজেশন (শুধু নিজের domain-এ পরীক্ষা), robustness (রোমান হরফ বা code-mixing-এ অজানা পারফরম্যান্স), জনগোষ্ঠী/ভৌগোলিক (আঞ্চলিক রূপ অনুপস্থিত), সময়গত (পুরোনো পোস্টে train), reproducibility (ব্যক্তিগত ডেটা বা কোড নেই), এবং ব্যবহারিক (বাস্তব পরিবেশে, যেমন কম দামের ফোনে, কখনো পরীক্ষা হয়নি)।]

== Strategies That Work with Little Data
<strategies-that-work-with-little-data>
#bnsub(2)[কম ডেটায় কাজ করে এমন কৌশল]
- #strong[Start from a pretrained model, and compare two kinds.] Fine-tuning a pretrained model (Section 20.1) is the default. Compare a Bangla-specific model with a multilingual one: BanglaBERT's advantage was largest when training data were scarce #cite(<ref69>), but which is better for your task is an empirical question.
- #strong[Use cross-lingual transfer.] XLM-R was pretrained on one hundred languages, so a model fine-tuned on English labels can be applied to Bangla without Bangla training data #cite(<ref70>). Treat this as a baseline to beat, not as the final answer.
- #strong[Translate with care.] Translating training data can help --- back-translating the training data improved cross-lingual NLI results #cite(<ref102>) --- but always evaluate on native Bangla text, never on translated text alone.
- #strong[Augment the training set only.] Paraphrasing or back-translation can enlarge a small training set; never augment the test set, and check that augmented examples still carry the correct label.
- #strong[Spend annotation effort wisely.] Active learning (Section 20.4) chooses which examples to label next. A few hundred well-labelled examples with known agreement are often worth more than thousands of noisy ones.
- #strong[Keep simple baselines.] In the SentNoB paper, hand-crafted lexical features outperformed the neural and pretrained models the authors tried #cite(<ref67>). A TF-IDF baseline is cheap and sometimes hard to beat.

#bn[#strong[Pretrained মডেল দিয়ে শুরু করুন, দুই ধরনের তুলনা করুন:] fine-tuning (Section 20.1) স্বাভাবিক পথ; বাংলা-নির্দিষ্ট ও বহুভাষিক মডেল তুলনা করুন --- BanglaBERT-এর সুবিধা ডেটা কম থাকলে সবচেয়ে বেশি ছিল #cite(<ref69>), তবে আপনার কাজে কোনটি ভালো তা পরীক্ষা করেই জানতে হবে। #strong[Cross-lingual transfer:] XLM-R একশোটি ভাষায় pretrained, তাই ইংরেজি label-এ fine-tune করা মডেল বাংলা training ডেটা ছাড়াই বাংলায় প্রয়োগ করা যায় #cite(<ref70>)\; একে চূড়ান্ত উত্তর নয়, হারানোর মতো বেসলাইন ধরুন। #strong[সাবধানে অনুবাদ:] training ডেটা অনুবাদে উপকার হতে পারে #cite(<ref102>), কিন্তু মূল্যায়ন সবসময় মৌলিক বাংলা লেখায় করুন। #strong[শুধু training set বাড়ান:] paraphrase বা back-translation দিয়ে ছোট training set বড় করা যায়; test set কখনো নয়, আর নতুন উদাহরণের label ঠিক আছে কিনা দেখুন। #strong[Annotation-এর পরিশ্রম বুঝে খরচ করুন:] active learning (Section 20.4) ঠিক করে পরের কোনটি label করবেন; জানা মিলের মাত্রাসহ কয়েকশো ভালো label প্রায়ই হাজারো noisy label-এর চেয়ে মূল্যবান। #strong[সহজ বেসলাইন রাখুন:] SentNoB পেপারে হাতে তৈরি lexical feature লেখকদের চেষ্টা করা neural ও pretrained মডেলের চেয়ে ভালো করেছিল #cite(<ref67>)।]

== Building a Dataset Ethically
<building-a-dataset-ethically>
#bnsub(2)[নৈতিকভাবে ডেটাসেট তৈরি]
Many Bangla research gaps are dataset gaps, so many readers will build a dataset. Five practices make it usable and fair:

+ #strong[Document it.] Write a datasheet #cite(<ref55>) and, for language data, a #strong[data statement] that records, among other things, the language variety, the speakers' and annotators' backgrounds, the situation in which the text was produced, and the characteristics of the text #cite(<ref103>). Without these, nobody can tell which Bangla your data represents.
+ #strong[Respect people in the data.] Public posts are not consent to redistribution. Follow the platform's terms, remove user names and other identifiers, and never release personal information (Section 21.4).
+ #strong[Treat annotators well.] Write clear guidelines, run a pilot round, measure agreement, and pay fairly; ACL's Responsible NLP Checklist asks authors about compensating participants #cite(<ref90>).
+ #strong[Choose and state a licence.] A missing or hard-to-find licence blocks reuse: as Section 26.7 shows, one of the mini-project's datasets states its licence only on a dataset card, not in its repository. An open licence such as CC BY 4.0 maximises reuse; if the source terms forbid redistributing text, release item IDs and your code instead.
+ #strong[Give back.] Release fixed splits and baseline results, and present the work where other Bangla researchers will see it, such as the BLP workshop.

#bn[বাংলার অনেক গ্যাপই ডেটাসেট গ্যাপ, তাই অনেক পাঠক ডেটাসেট বানাবেন। পাঁচটি অভ্যাস একে ব্যবহারযোগ্য ও ন্যায্য করে: (১) #strong[নথিভুক্ত করুন] --- datasheet #cite(<ref55>) এবং ভাষা-ডেটার জন্য #strong[data statement], যেখানে অন্যান্য তথ্যের সাথে থাকবে ভাষার রূপ, বক্তা ও annotator-দের পটভূমি, লেখাটি কোন পরিস্থিতিতে তৈরি, এবং লেখার বৈশিষ্ট্য #cite(<ref103>)\; (২) #strong[ডেটার মানুষদের সম্মান করুন] --- পাবলিক পোস্ট মানেই পুনর্বিতরণের সম্মতি নয়; প্ল্যাটফর্মের শর্ত মানুন, ব্যবহারকারীর নাম ও পরিচয়-চিহ্ন মুছুন, ব্যক্তিগত তথ্য প্রকাশ করবেন না (Section 21.4); (৩) #strong[annotator-দের প্রতি দায়িত্বশীল হোন] --- স্পষ্ট নির্দেশিকা, pilot round, মিলের পরিমাপ ও ন্যায্য পারিশ্রমিক; ACL-এর Responsible NLP Checklist অংশগ্রহণকারীদের পারিশ্রমিক নিয়ে প্রশ্ন করে #cite(<ref90>)\; (৪) #strong[লাইসেন্স বেছে নিয়ে লিখুন] --- লাইসেন্স না থাকলে বা খুঁজে পাওয়া কঠিন হলে পুনর্ব্যবহার আটকে যায় (Section 26.7-এর একটি ডেটাসেটের লাইসেন্স শুধু dataset card-এ আছে, repository-তে নেই); CC BY 4.0-এর মতো উন্মুক্ত লাইসেন্স সবচেয়ে বেশি পুনর্ব্যবহারের সুযোগ দেয়, আর উৎসের শর্তে লেখা বিতরণ নিষেধ হলে item ID ও কোড প্রকাশ করুন; (৫) #strong[ফিরিয়ে দিন] --- নির্দিষ্ট split ও বেসলাইন ফলাফল প্রকাশ করুন, এবং BLP workshop-এর মতো জায়গায় উপস্থাপন করুন যেখানে অন্য বাংলা গবেষকরা দেখবেন।]

== Mini-Project, Step 0: Finding and Checking a Gap
<mini-project-step-0-finding-and-checking-a-gap>
#bnsub(2)[মিনি-প্রজেক্ট, ধাপ ০: গ্যাপ খোঁজা ও যাচাই]
The mini-project of Part VIII starts here. The steps follow Chapter 15; the search described in steps 4 and 5 was carried out in late 2026, and you must repeat it before relying on its result.

+ #strong[Start broad.] Bangla sentiment analysis: several public datasets exist, so a project is feasible on a student budget.
+ #strong[Map the resources.] Two large public datasets differ sharply: SentNoB (social-media comments, labelled by annotators) and BanglaBook (book reviews, labelled from ratings, partly machine-translated). Each paper reports results within its own dataset #cite(<ref67>) #cite(<ref68>).
+ #strong[State a candidate gap.] Do classifiers trained on one kind of Bangla text work on another? This is a generalization gap (Section 13.13).
+ #strong[Search for it.] Search terms such as "Bangla sentiment cross-domain", "cross-dataset", "domain shift" and the names of the datasets found three relevant works. SentiGOLD tested its models across datasets on SentNoB, reaching a macro-F1 of 0.61 #cite(<ref100>). The BLP-2023 shared task combined two sources of social-media data #cite(<ref98>). A 2025 preprint, not yet peer-reviewed, reported zero-shot transfer from e-commerce reviews to other domains, including BanglaBook and social media #cite(<ref101>).
+ #strong[Narrow the gap.] So the broad question is no longer open: cross-dataset tests exist. What the search did #emph[not] find is a controlled comparison of model #emph[families] --- lexical, multilingual and Bangla-specific --- on the specific shift from rating-labelled book reviews to annotator-labelled social-media comments, with repeated runs and confidence intervals, and with machine-translated reviews kept apart. That narrower question still matters: it tells a practitioner which kind of model to choose when the labelled data come from a different source than the text the model will meet.
+ #strong[Check feasibility.] Both datasets are public, base-size models fit a free cloud GPU, and twelve weeks is enough (Sections 26.5 and 26.6).
+ #strong[Write the gap statement] using the template of Section 15.6.

#bn[Part VIII-এর মিনি-প্রজেক্ট এখান থেকে শুরু। ধাপগুলো Chapter 15 অনুসরণ করে; ৪ ও ৫ নম্বর ধাপের অনুসন্ধান ২০২৬ সালের শেষে করা --- এর ফলাফলের ওপর নির্ভর করার আগে আপনাকে আবার করতে হবে। (১) বিস্তৃতভাবে শুরু: বাংলা sentiment analysis --- পাবলিক ডেটাসেট আছে, তাই শিক্ষার্থীর বাজেটে সম্ভব। (২) সম্পদের মানচিত্র: SentNoB (সোশ্যাল মিডিয়া, annotator-এর label) ও BanglaBook (বই-রিভিউ, rating-এর label, আংশিক অনূদিত); প্রতিটি পেপার নিজের ডেটাসেটের ভেতরেই ফলাফল দেয় #cite(<ref67>) #cite(<ref68>)। (৩) সম্ভাব্য গ্যাপ: এক ধরনের বাংলা লেখায় train করা classifier কি অন্য ধরনে কাজ করে? --- জেনারেলাইজেশন গ্যাপ। (৪) অনুসন্ধান: তিনটি প্রাসঙ্গিক কাজ পাওয়া গেছে --- SentiGOLD SentNoB-এ cross-dataset পরীক্ষা করেছে (macro-F1 ০.৬১) #cite(<ref100>)\; BLP-2023 shared task দুটি উৎসের সোশ্যাল মিডিয়া ডেটা মিলিয়েছে #cite(<ref98>)\; আর ২০২৫ সালের একটি preprint (এখনো peer-review হয়নি) e-commerce রিভিউ থেকে BanglaBook ও সোশ্যাল মিডিয়াসহ অন্য domain-এ zero-shot transfer রিপোর্ট করেছে #cite(<ref101>)। (৫) গ্যাপ সংকীর্ণ করা: তাই বিস্তৃত প্রশ্নটি আর খোলা নেই। যা পাওয়া যায়নি তা হলো rating-এর label-যুক্ত বই-রিভিউ থেকে annotator-এর label-যুক্ত সোশ্যাল মিডিয়া মন্তব্যে যাওয়ার নির্দিষ্ট পরিবর্তনে lexical, বহুভাষিক ও বাংলা-নির্দিষ্ট মডেল-#emph[পরিবারের] নিয়ন্ত্রিত তুলনা --- একাধিক run, confidence interval এবং অনূদিত রিভিউ আলাদা রেখে। এই প্রশ্নটি এখনো গুরুত্বপূর্ণ, কারণ এটি বলে দেয় label-যুক্ত ডেটা আর বাস্তবের লেখা ভিন্ন উৎসের হলে কোন ধরনের মডেল বাছবেন। (৬) সম্ভাব্যতা: দুটি ডেটাসেটই পাবলিক, base-size মডেল বিনামূল্যের cloud GPU-তে চলে, বারো সপ্তাহ যথেষ্ট। (৭) Section 15.6-এর ছাঁচে গ্যাপ স্টেটমেন্ট লিখুন।]

#quote(block: true)[
#emph[Although] Bangla sentiment datasets now cover social media, book reviews and many other domains, and cross-dataset tests exist for models trained on multi-domain data #cite(<ref100>), #emph[no study we found compares how] lexical, multilingual and Bangla-specific models degrade when moving from rating-labelled book reviews to annotator-labelled social-media comments under controlled conditions. #emph[This matters because] practitioners rarely have labelled data from the exact source their model will face, and the choice of model family is the first decision they must make.
]

Chapter 26 turns this gap into a one-page proposal. Notice what the search changed: the gap became narrower and more precise, and therefore more defensible. That is the normal result of checking a gap honestly --- not a failure.

#bn[Chapter 26 এই গ্যাপকে এক পৃষ্ঠার প্রপোজালে রূপ দেবে। লক্ষ করুন অনুসন্ধান কী বদলাল: গ্যাপটি সংকীর্ণ ও সুনির্দিষ্ট হলো, তাই আরও বেশি রক্ষণযোগ্য। সৎভাবে গ্যাপ যাচাই করার এটিই স্বাভাবিক ফল --- ব্যর্থতা নয়।]

== Exercises
<exercises-24>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ Processing a set of English documents through an API costs US\$12. Using the 2023 token ratios in Section 24.1, estimate the cost of the same content in Bangla with a tokeniser at 5.84 times and with one at 1.38 times. How would you measure the ratio for the tokeniser you actually use?

  #bni[API দিয়ে একসেট ইংরেজি নথি প্রক্রিয়ার খরচ ১২ মার্কিন ডলার। Section 24.1-এর ২০২৩ সালের অনুপাত দিয়ে একই বিষয়ের বাংলার খরচ অনুমান করুন --- ৫.৮৪ গুণ ও ১.৩৮ গুণ tokeniser-এ। আপনার ব্যবহৃত tokeniser-এর অনুপাত কীভাবে মাপবেন?]

+ One dataset types য় as a single code point and another as য plus nukta. What happens to vocabulary counts and exact-match scores if you merge them without normalising? Does NFC solve the problem for ৎ as well?

  #bni[একটি ডেটাসেটে য় একটি code point, আরেকটিতে য + নুক্তা। Normalise না করে মেলালে শব্দভান্ডারের গণনা ও exact-match স্কোরে কী হবে? ৎ-এর ক্ষেত্রেও কি NFC সমাধান করে?]

+ On a test set of about 1,570 items, model A scores 70.5% accuracy and model B 69.8%. Using the worked example in Section 24.3, can you conclude that A is better? What would you do instead?

  #bni[প্রায় ১,৫৭০টি উদাহরণের test set-এ মডেল A ৭০.৫%, মডেল B ৬৯.৮%। Section 24.3-এর উদাহরণ অনুযায়ী কি বলা যায় A ভালো? এর বদলে কী করবেন?]

+ Name the gap type (Chapter 13) of each: (a) a Bangla question-answering benchmark created only by translating an English one; (b) a hate-speech classifier trained on posts from 2019 and deployed in 2026; (c) a named-entity recogniser trained on news and applied to Sylheti social-media posts.

  #bni[প্রতিটির গ্যাপের ধরন বলুন: (ক) শুধু ইংরেজি থেকে অনুবাদ করে বানানো বাংলা প্রশ্নোত্তর benchmark; (খ) ২০১৯ সালের পোস্টে train করে ২০২৬-এ চালু করা hate-speech classifier; (গ) সংবাদে train করা named-entity recogniser সিলেটি সোশ্যাল মিডিয়া পোস্টে প্রয়োগ।]

+ You plan to collect and label 5,000 Bangla YouTube comments. List at least six items your data statement and datasheet should contain.

  #bni[আপনি ৫,০০০টি বাংলা YouTube মন্তব্য সংগ্রহ ও label করতে চান। আপনার data statement ও datasheet-এ অন্তত ছয়টি বিষয়ের তালিকা দিন।]

+ Repeat the search of Section 24.7 today. Record your search terms and what you found. Is the narrowed gap still open? If not, how would you narrow it further?

  #bni[Section 24.7-এর অনুসন্ধানটি আজ আবার করুন। সার্চ-শব্দ ও ফলাফল লিখে রাখুন। সংকীর্ণ গ্যাপটি কি এখনো খোলা? না হলে কীভাবে আরও সংকীর্ণ করবেন?]

#recap[
- Bangla has over 300 million native speakers but is low-resource: short of labelled data, native benchmarks, mature tools and compute --- and it costs more tokens with English-centred tokenisers.

  #bni[বাংলার ৩০ কোটির বেশি স্থানীয় ভাষাভাষী, তবু এটি স্বল্প-সম্পদের: লেবেলযুক্ত ডেটা, মৌলিক benchmark, পরিণত টুল ও compute-এর ঘাটতি --- আর ইংরেজি-কেন্দ্রিক tokeniser-এ বেশি token লাগে।]

- Normalise Unicode identically in every split, state the scripts your data covers, and keep translated and native text apart.

  #bni[প্রতিটি split-এ একইভাবে Unicode normalise করুন, ডেটা কোন হরফ কভার করে লিখুন, আর অনূদিত ও মৌলিক লেখা আলাদা রাখুন।]

- Read how labels were made before combining datasets; "neutral" from star ratings is not "neutral" from annotators.

  #bni[ডেটাসেট মেলানোর আগে label কীভাবে তৈরি তা পড়ুন; rating-এর "নিরপেক্ষ" আর annotator-এর "নিরপেক্ষ" এক নয়।]

- With little data: compare Bangla-specific and multilingual models, keep simple baselines, augment only training data, and evaluate on native text.

  #bni[কম ডেটায়: বাংলা-নির্দিষ্ট ও বহুভাষিক মডেল তুলনা করুন, সহজ বেসলাইন রাখুন, শুধু training ডেটা বাড়ান, আর মৌলিক লেখায় মূল্যায়ন করুন।]

- Checking a gap usually narrows it. A narrower, verified gap is stronger, not weaker.

  #bni[গ্যাপ যাচাই করলে সাধারণত তা সংকীর্ণ হয়। সংকীর্ণ ও যাচাইকৃত গ্যাপ দুর্বল নয়, বরং শক্তিশালী।]

]
