#import "../template.typ": *

= Answers to Exercises
<answers-to-exercises>
#bnsub(1)[অনুশীলনীর উত্তর]
These are answers and hints for the exercises at the end of Chapters 22--29. Where an exercise asks about your own project, the answer describes what a good response contains.

#bn[এখানে Chapter 22--29-এর শেষের অনুশীলনীর উত্তর ও ইঙ্গিত দেওয়া আছে। যেখানে প্রশ্নটি আপনার নিজের প্রজেক্ট নিয়ে, সেখানে একটি ভালো উত্তরে কী থাকা উচিত তা বলা হয়েছে।]

== Chapter 22 --- Reading LLM-Era Papers
<answers-chapter-22>
#bnsub(2)[Chapter 22 --- এলএলএম যুগের পেপার পড়া]
+ Any three of: a single prompt can move scores by many points, so the difference may come from the prompt (Section 22.4); a single run gives no estimate of variance and no confidence interval (flag 23); an estimated 6.49% of MMLU questions contain errors, far more than 0.5 points (Section 22.2); contamination was not checked (Section 22.3); scores near the ceiling leave little room for real differences.

  #bni[যেকোনো তিনটি: একটি প্রম্পটেই স্কোর অনেক পয়েন্ট বদলাতে পারে (Section 22.4); একবার চালালে variance বা confidence interval পাওয়া যায় না (flag ২৩); MMLU-র আনুমানিক ৬.৪৯% প্রশ্নে ভুল আছে, যা ০.৫ পয়েন্টের চেয়ে অনেক বেশি (Section 22.2); contamination যাচাই হয়নি (Section 22.3); সর্বোচ্চ সীমার কাছাকাছি স্কোরে আসল পার্থক্যের জায়গা কম।]

+ Overall: $0.25 times 92 + 0.75 times 81 = 23 + 60.75 = 83.75%$, so the headline is 2.75 points above the clean score of 81%. Other explanations: the flagged questions may be easier or about more common topics; the overlap detector may flag generic phrases rather than real leaks; and a 500-question subset has its own sampling noise.

  #bni[মোট: ০.২৫ × ৯২ + ০.৭৫ × ৮১ = ৮৩.৭৫%, অর্থাৎ শিরোনাম পরিষ্কার স্কোরের (৮১%) চেয়ে ২.৭৫ পয়েন্ট বেশি। অন্য ব্যাখ্যা: চিহ্নিত প্রশ্নগুলো হয়তো সহজ বা বেশি পরিচিত বিষয়ের; overlap detector হয়তো সাধারণ শব্দগুচ্ছকেও চিহ্নিত করেছে; আর ৫০০ প্রশ্নের অংশেও নিজস্ব sampling noise আছে।]

+ A good rewrite names the exact model identifier (#emph[model snapshot ID]) and the provider; the dates of the experiments; temperature, top-p, maximum output tokens, number of samples per question, and the seed if supported; where the full system prompt and few-shot examples can be found; whether raw outputs and code are released; and the number of calls, tokens and approximate cost.

  #bni[ভালো উত্তরে থাকে: সঠিক মডেল identifier ও প্রদানকারী; experiment-এর তারিখ; temperature, top-p, সর্বোচ্চ output token, প্রতি প্রশ্নে কয়টি sample, এবং সম্ভব হলে seed; পূর্ণ system prompt ও few-shot উদাহরণ কোথায় পাওয়া যাবে; কাঁচা আউটপুট ও কোড প্রকাশ করা হয়েছে কিনা; এবং call, token ও আনুমানিক খরচ।]

+ Use the same base model throughout and add: (a) the same eight chain-of-thought examples with a single answer, which isolates the effect of the prompt; (b) chain-of-thought with 20 samples and a majority vote but without the method's other components, which isolates the effect of sampling; (c) an ablation of each remaining component. Run every system on the same prompt formats and report ranges or confidence intervals.

  #bni[পুরো সময় একই base মডেল রেখে যোগ করুন: (ক) একই আটটি chain-of-thought উদাহরণ ও একটি উত্তর --- প্রম্পটের প্রভাব আলাদা করে; (খ) chain-of-thought-সহ ২০টি sample ও সংখ্যাগরিষ্ঠ ভোট, কিন্তু পদ্ধতির অন্য অংশ ছাড়া --- sampling-এর প্রভাব আলাদা করে; (গ) বাকি প্রতিটি অংশের ablation। সব সিস্টেম একই প্রম্পট ফরম্যাটে চালিয়ে পরিসর বা confidence interval রিপোর্ট করুন।]

+ Self-enhancement bias: use a judge from a different family, or several judges. Position bias: swap the order of the two answers and keep only consistent verdicts. Verbosity bias: report answer lengths, or compare answers of similar length. In all cases, check the judge against human labels on a sample and report the agreement.

  #bni[আত্মপক্ষপাত: ভিন্ন পরিবারের বা একাধিক বিচারক ব্যবহার করুন। অবস্থানগত পক্ষপাত: দুটি উত্তরের ক্রম অদলবদল করে শুধু সামঞ্জস্যপূর্ণ রায় রাখুন। দৈর্ঘ্যের পক্ষপাত: উত্তরের দৈর্ঘ্য রিপোর্ট করুন বা কাছাকাছি দৈর্ঘ্যের উত্তর তুলনা করুন। সব ক্ষেত্রে একটি নমুনায় মানুষের label-এর সাথে বিচারকের মিল যাচাই ও রিপোর্ট করুন।]

+ $1.16 times 1.5 approx 1.7$ points, with no real improvement at all.

  #bni[১.১৬ × ১.৫ ≈ ১.৭ পয়েন্ট --- কোনো আসল উন্নতি ছাড়াই।]

== Chapter 23 --- AI Tools in Research
<answers-chapter-23>
#bnsub(2)[Chapter 23 --- গবেষণায় এআই টুল]
+ For each reference: search for the exact title in a scholarly database (the ACL Anthology, arXiv, Google Scholar or the publisher's site); check that the DOI resolves to the same work; compare the authors, title, venue and year; open the paper and confirm it supports the claim; import the entry from the source. A reference you cannot find anywhere should be treated as fabricated: do not cite it. Look for a real source for the claim it was meant to support, or drop the claim.

  #bni[প্রতিটির জন্য: সঠিক শিরোনাম দিয়ে scholarly ডেটাবেসে খুঁজুন (ACL Anthology, arXiv, Google Scholar বা প্রকাশকের সাইট); DOI একই কাজে নিয়ে যায় কিনা দেখুন; লেখক, শিরোনাম, venue ও বছর মেলান; পেপার খুলে দাবিটি সমর্থন করে কিনা নিশ্চিত হোন; উৎস থেকে entry আনুন। কোথাও খুঁজে না পাওয়া তথ্যসূত্রকে বানানো ধরুন --- সাইট করবেন না; যে দাবির জন্য এটি দরকার ছিল, তার আসল উৎস খুঁজুন বা দাবিটি বাদ দিন।]

+ Any three of: the population is widened from 320 undergraduates at two Dhaka universities to "students" in general; "was associated with" becomes the causal "improve"; one specific six-week app becomes "spaced-repetition apps" in general; the comparison with a control condition disappears.

  #bni[যেকোনো তিনটি: ঢাকার দুটি বিশ্ববিদ্যালয়ের ৩২০ জন স্নাতক থেকে সাধারণভাবে "শিক্ষার্থী"; "সম্পর্কিত ছিল" থেকে কার্যকারণ "বাড়ায়"; একটি নির্দিষ্ট ছয় সপ্তাহের অ্যাপ থেকে সাধারণভাবে "spaced-repetition অ্যাপ"; আর control-এর সাথে তুলনাটি হারিয়ে গেছে।]

+ The test set is being used to choose the model, so the reported score is optimistic and no longer an unbiased estimate (Sections 3.6 and 5.6; the plan in Section 26.4 uses the test set once). Fix: choose the epoch on a validation set, or by cross-validation, then evaluate the chosen model once on the test set.

  #bni[মডেল বাছাইয়ে test set ব্যবহার হচ্ছে, তাই রিপোর্ট করা স্কোর আশাবাদী এবং আর নিরপেক্ষ অনুমান নয় (Section 3.6 ও 5.6; Section 26.4-এর পরিকল্পনায় test set একবারই)। সমাধান: validation set বা cross-validation দিয়ে epoch বাছুন, তারপর বাছাই করা মডেলকে test set-এ একবার মূল্যায়ন করুন।]

+ NeurIPS 2026: none of the three needs documenting --- grammar checking is editing help, plotting code is basic code assistance, and the search terms are not part of the method --- though you must still verify every reference. ICLR 2026: all three, because any LLM use must be disclosed. A statement such as: "We used \[tool and version\] between \[dates\] to check grammar throughout the paper, to suggest search terms for related work and to draft plotting code, which we reviewed and tested. All references were located at their sources and read by the authors."

  #bni[NeurIPS 2026: তিনটির কোনোটিই লিপিবদ্ধ করতে হবে না --- ব্যাকরণ যাচাই সম্পাদনা-সহায়তা, plotting কোড মৌলিক কোড-সহায়তা, আর সার্চ-শব্দ পদ্ধতির অংশ নয় --- তবে প্রতিটি তথ্যসূত্র যাচাই করতেই হবে। ICLR 2026: তিনটিই, কারণ যেকোনো LLM ব্যবহার ঘোষণা করতে হয়। ঘোষণায় টুল, version, তারিখ, কাজ এবং আপনি কী যাচাই করেছেন তা লিখুন।]

+ Detectors misclassify non-native English writing as AI-generated at high rates --- on average 61% of TOEFL essays in one study --- so the flag is weak evidence and must not be treated as proof. Next steps: look at the drafts and version history, ask the classmate to explain the work and how it was written, and follow the institution's due process. No penalty should rest on a detector score alone.

  #bni[Detector অ-স্থানীয় ইংরেজি লেখাকে উচ্চ হারে এআই-লেখা বলে ভুল করে --- একটি গবেষণায় TOEFL রচনার গড়ে ৬১% --- তাই এই চিহ্ন দুর্বল প্রমাণ, প্রমাণ হিসেবে ধরা যাবে না। এরপর: খসড়া ও version history দেখুন, সহপাঠীকে কাজটি ও লেখার প্রক্রিয়া ব্যাখ্যা করতে বলুন, এবং প্রতিষ্ঠানের নির্ধারিত প্রক্রিয়া মানুন। শুধু detector-এর স্কোরের ভিত্তিতে কোনো শাস্তি নয়।]

+ The handbook says reviewers must not share, discuss or disclose information about submissions with anyone, "including any unsanctioned LLMs". The submission is unpublished, confidential work; uploading it to a tool that does not protect it could expose it. Read and summarise it yourself (Chapter 29 covers reviewing), or use only a tool the venue explicitly provides.

  #bni[Handbook অনুযায়ী reviewer-রা জমা দেওয়া পেপারের তথ্য কারও সাথে --- অনুমোদনহীন LLM-সহ --- ভাগ, আলোচনা বা প্রকাশ করতে পারবেন না। পেপারটি অপ্রকাশিত ও গোপনীয়; অসুরক্ষিত টুলে দিলে তা ফাঁস হতে পারে। নিজে পড়ে সারাংশ করুন (review নিয়ে Chapter 29), অথবা শুধু venue-এর দেওয়া টুল ব্যবহার করুন।]

== Chapter 24 --- Bangla and Low-Resource ML Research
<answers-chapter-24>
#bnsub(2)[Chapter 24 --- বাংলা ও স্বল্প-সম্পদের ভাষায় ML গবেষণা]
+ $12 times 5.84 approx 70.08$ US dollars and $12 times 1.38 approx 16.56$ US dollars. To measure your own tokeniser, take the same texts in English and Bangla --- for example a sample of parallel sentences such as FLORES-200 --- tokenise both, and divide the total number of Bangla tokens by the total number of English tokens.

  #bni[১২ × ৫.৮৪ ≈ ৭০.০৮ ডলার এবং ১২ × ১.৩৮ ≈ ১৬.৫৬ ডলার। নিজের tokeniser মাপতে একই বিষয়ের ইংরেজি ও বাংলা লেখা (যেমন FLORES-200-এর সমান্তরাল বাক্য) tokenise করে মোট বাংলা token-কে মোট ইংরেজি token দিয়ে ভাগ করুন।]

+ The same word is counted as two vocabulary items, so frequencies are split and the vocabulary is inflated; exact-match evaluation fails whenever a prediction and its reference use different encodings. NFC unifies the two forms of য় (and of ড় and ঢ়), but it does not unify ৎ with ত + hasanta + zero-width joiner; that needs a Bangla-specific normaliser applied to every split.

  #bni[একই শব্দ দুটি আলাদা শব্দ হিসেবে গোনা হয়, তাই ঘনত্ব ভাগ হয়ে যায় ও শব্দভান্ডার ফুলে ওঠে; আর prediction ও reference ভিন্ন encoding-এ থাকলে exact-match ব্যর্থ হয়। NFC য়-এর (এবং ড়, ঢ়-এর) দুই রূপ এক করে, কিন্তু ৎ-কে ত + হসন্ত + zero-width joiner-এর সাথে এক করে না; এর জন্য প্রতিটি split-এ বাংলা-নির্দিষ্ট normaliser লাগে।]

+ No. The difference of 0.7 points is far smaller than the approximate ±2.3-point interval for a single model. Instead, run several seeds, compute bootstrap confidence intervals on paired predictions (Chapter 27), use a paired test (Section 19.7), or evaluate on more data --- and report "no clear difference" if that is what you find.

  #bni[না। ০.৭ পয়েন্টের পার্থক্য একটি মডেলের আনুমানিক ±২.৩ পয়েন্টের interval-এর চেয়ে অনেক ছোট। এর বদলে একাধিক seed চালান, জোড়া prediction-এ bootstrap confidence interval বের করুন (Chapter 27), paired test ব্যবহার করুন (Section 19.7), বা আরও ডেটায় মূল্যায়ন করুন --- আর তা-ই পেলে "স্পষ্ট পার্থক্য নেই" রিপোর্ট করুন।]

+ (a) An evaluation gap (Section 13.11), with the risk of measuring translation artefacts. (b) A temporal gap (Section 13.7). (c) A geographic or population gap (Sections 13.8, 13.6), which is also a generalization question (Section 13.13).

  #bni[(ক) মূল্যায়ন গ্যাপ (Section 13.11), অনুবাদের চিহ্ন মাপার ঝুঁকিসহ। (খ) সময়গত গ্যাপ (Section 13.7)। (গ) ভৌগোলিক বা জনগোষ্ঠী গ্যাপ (Section 13.8, 13.6), যা জেনারেলাইজেশনেরও প্রশ্ন (Section 13.13)।]

+ For example: why and how the comments were collected, from which channels and in which time window; the language variety and scripts (Bangla script, Romanised, code-mixed, regional forms); what is known about the commenters, and what is not; the annotators' backgrounds and training; the labelling guidelines and inter-annotator agreement; how user names and other identifiers were removed; the platform's terms and the licence of the release; how the splits were made; known biases and limitations; intended and inappropriate uses; and who maintains the dataset.

  #bni[যেমন: কেন ও কীভাবে, কোন চ্যানেল থেকে, কোন সময়সীমায় সংগ্রহ; ভাষার রূপ ও হরফ (বাংলা হরফ, রোমান হরফ, মিশ্র, আঞ্চলিক রূপ); মন্তব্যকারীদের সম্পর্কে কী জানা আছে আর কী নেই; annotator-দের পটভূমি ও প্রশিক্ষণ; label দেওয়ার নির্দেশিকা ও মিলের মাত্রা; ব্যবহারকারীর নাম ও পরিচয়-চিহ্ন কীভাবে মোছা হয়েছে; প্ল্যাটফর্মের শর্ত ও প্রকাশের লাইসেন্স; split কীভাবে তৈরি; জানা পক্ষপাত ও সীমাবদ্ধতা; উদ্দিষ্ট ও অনুপযুক্ত ব্যবহার; এবং কে ডেটাসেটটি রক্ষণাবেক্ষণ করবেন।]

+ Open-ended. A good answer records the date of the search, the databases and search terms used, the closest works found and why each does or does not answer the narrowed question. If one does, narrow further --- for example to a single type of social-media domain, to Romanised text, or to the effect of the translated reviews --- or use the fallback question in Section 26.7.

  #bni[উন্মুক্ত প্রশ্ন। ভালো উত্তরে থাকে: অনুসন্ধানের তারিখ, ব্যবহৃত ডেটাবেস ও সার্চ-শব্দ, সবচেয়ে কাছের কাজগুলো এবং প্রতিটি কেন সংকীর্ণ প্রশ্নের উত্তর দেয় বা দেয় না। কোনোটি উত্তর দিলে আরও সংকীর্ণ করুন --- যেমন একটি নির্দিষ্ট সোশ্যাল মিডিয়া domain, রোমান হরফের লেখা, বা অনূদিত রিভিউয়ের প্রভাব --- অথবা Section 26.7-এর বিকল্প প্রশ্ন ব্যবহার করুন।]

== Chapter 25 --- Case Study: Reading "Attention Is All You Need"
<answers-chapter-25>
#bnsub(2)[Chapter 25 --- কেস স্টাডি: "Attention Is All You Need"]
+ Scores $(0, 1, 1)$; scaled $(0, 0.707, 0.707)$; $e^x = (1.000, 2.028, 2.028)$ with sum 5.056; weights $(0.198, 0.401, 0.401)$. Positions 2 and 3 receive the largest weights, and the output is $0.198 (1, 0) + 0.401 (0, 1) + 0.401 (1, 1) = (0.599, 0.802)$ --- the mirror image of the worked example.

  #bni[স্কোর $(0, 1, 1)$; ভাগের পর $(0, 0.707, 0.707)$; weight $(0.198, 0.401, 0.401)$। অবস্থান ২ ও ৩ সবচেয়ে বেশি weight পায়, আর আউটপুট $(0.599, 0.802)$ --- মূল উদাহরণের প্রতিবিম্ব।]

+ The variance of $q dot k$ is $d_k = 256$, so its standard deviation is $sqrt(256) = 16$; the scores are divided by 16.

  #bni[$q dot k$-এর variance $d_k = 256$, তাই standard deviation $sqrt(256) = 16$; স্কোরকে ১৬ দিয়ে ভাগ করা হয়।]

+ Report 41.8 BLEU from Table 2 of the final version, and make the citation unambiguous by naming the table and the version you read (for example, arXiv:1706.03762v7). If you discuss the result in detail, note that the results text of that version says 41.0.

  #bni[চূড়ান্ত সংস্করণের Table 2 থেকে ৪১.৮ BLEU দিন, আর কোন টেবিল ও কোন সংস্করণ পড়েছেন (যেমন arXiv:1706.03762v7) তা উল্লেখ করে সাইটেশন দ্ব্যর্থহীন করুন। বিস্তারিত আলোচনা করলে জানান যে ওই সংস্করণের মূল লেখায় ৪১.০ বলা আছে।]

+ Check that both scores use the same test set and the same BLEU configuration --- the same tokenisation, normalisation and casing --- ideally by computing both with one standard tool and reporting its settings. A difference of 0.8 is smaller than the 1.8 points by which common configurations can disagree. Better still, rerun the baseline yourself, with several seeds and confidence intervals.

  #bni[দুটি স্কোর একই test set ও একই BLEU configuration --- একই tokenisation, normalisation ও casing --- ব্যবহার করেছে কিনা যাচাই করুন; সবচেয়ে ভালো হয় একটি প্রমিত টুল দিয়ে দুটিই হিসাব করে তার settings রিপোর্ট করলে। ০.৮-এর পার্থক্য প্রচলিত configuration-গুলোর মধ্যে সম্ভাব্য ১.৮ পয়েন্টের চেয়ে কম। আরও ভালো: বেসলাইন নিজে আবার চালান, একাধিক seed ও confidence interval-সহ।]

+ Open-ended. Examples: for Statistics and Experiments, retrain the base model with three to five seeds and report mean ± standard deviation with bootstrap intervals; for Metrics, add a human evaluation of a sample of translations; for Dataset and Generalization, test a low-resource pair such as English--Bangla.

  #bni[উন্মুক্ত প্রশ্ন। উদাহরণ: পরিসংখ্যান ও experiment-এর জন্য base মডেল তিন থেকে পাঁচটি seed-এ আবার train করে গড় ± standard deviation ও bootstrap interval দিন; মেট্রিকের জন্য কিছু অনুবাদের মানব মূল্যায়ন যোগ করুন; ডেটা ও জেনারেলাইজেশনের জন্য ইংরেজি--বাংলার মতো স্বল্প-সম্পদের ভাষাজোড়ায় পরীক্ষা করুন।]

+ For example: tune and run ablations on the development data only, as the mini-project does by tuning on BanglaBook validation data (Section 26.7); compute every baseline yourself with the same metric implementation instead of copying numbers; report training cost; and run several seeds, which neither landmark paper did.

  #bni[যেমন: tuning ও ablation শুধু development ডেটায় করুন, যেমন মিনি-প্রজেক্ট BanglaBook validation-এ tuning করে (Section 26.7); সংখ্যা কপি না করে প্রতিটি বেসলাইন একই মেট্রিক-বাস্তবায়নে নিজে হিসাব করুন; ট্রেনিং খরচ রিপোর্ট করুন; আর একাধিক seed চালান, যা কোনো landmark পেপারই করেনি।]

== Chapter 26 --- Writing a Research Proposal
<answers-chapter-26>
#bnsub(2)[Chapter 26 --- রিসার্চ প্রপোজাল লেখা]
+ Good answers are short and concrete: question 1 has no jargon, question 2 cites the closest existing work, and question 8 names a metric and a threshold. The hardest answer usually points to the weakest part of the project --- most often question 2 (the gap is not yet verified) or question 8 (there is no clear test of success).

  #bni[ভালো উত্তর ছোট ও নির্দিষ্ট: ১ নম্বরে কোনো jargon নেই, ২ নম্বরে নিকটতম বিদ্যমান কাজ সাইট করা আছে, ৮ নম্বরে একটি মেট্রিক ও একটি সীমা আছে। যে উত্তরটি সবচেয়ে কঠিন, সেটিই সাধারণত প্রজেক্টের সবচেয়ে দুর্বল অংশ দেখায় --- প্রায়ই ২ নম্বর (গ্যাপ যাচাই হয়নি) বা ৮ নম্বর (সাফল্যের স্পষ্ট পরীক্ষা নেই)।]

+ Sample answers: (a) "By week 5, fine-tune XLM-R on a public Bangla fake-news dataset with five seeds and report macro-F1 on a held-out test split." (b) "By week 3, reproduce the strongest published baseline on the same split; then report the difference from our method with a 95% confidence interval." (c) "By week 6, collect and label 2,000 posts from two platforms, each labelled by two annotators, and report inter-annotator agreement." Each names an output, a measure and a deadline.

  #bni[নমুনা উত্তর: (ক) "সপ্তাহ ৫-এর মধ্যে একটি পাবলিক বাংলা fake-news ডেটাসেটে ৫টি seed-এ XLM-R fine-tune করে held-out test split-এ macro-F1 রিপোর্ট করা।" (খ) "সপ্তাহ ৩-এর মধ্যে একই split-এ সবচেয়ে শক্তিশালী প্রকাশিত বেসলাইন পুনরুৎপাদন করা, তারপর আমাদের পদ্ধতির সাথে পার্থক্য ৯৫% confidence interval-সহ রিপোর্ট করা।" (গ) "সপ্তাহ ৬-এর মধ্যে দুটি প্ল্যাটফর্ম থেকে ২,০০০ পোস্ট সংগ্রহ করে প্রতিটি দুজন annotator দিয়ে label করা এবং inter-annotator agreement রিপোর্ট করা।"]

+ Choosing the metric after seeing the results lets the data decide which claim you make, and then presents that choice as if it had been planned --- a form of HARKing. Preregistration fixes the primary metric in advance. Rewrite: "Our primary metric is macro-F1, because the classes are imbalanced; accuracy and AUC are reported as secondary metrics."

  #bni[ফলাফল দেখার পর মেট্রিক বেছে নিলে ডেটাই ঠিক করে দেয় আপনি কোন দাবি করবেন, আর সেই পছন্দকে পরিকল্পিত বলে দেখানো হয় --- এটি HARKing-এর একটি রূপ। Preregistration প্রধান মেট্রিক আগেই ঠিক করে দেয়। সংশোধিত বাক্য: "আমাদের প্রধান মেট্রিক macro-F1, কারণ শ্রেণিগুলো ভারসাম্যহীন; accuracy ও AUC গৌণ মেট্রিক হিসেবে রিপোর্ট করা হবে।"]

+ Runs: $3 times (8 + 5) = 39$. Time: $39 times 25 = 975$ minutes $approx 16.3$ GPU-hours; with a 50% margin, $approx 24.4$ GPU-hours. At 10 GPU-hours a week that is about 2.4 weeks, so allow three weeks.

  #bni[মোট run ৩৯টি; ৯৭৫ মিনিট ≈ ১৬.৩ GPU-ঘণ্টা; ৫০% বাড়তি ধরে ≈ ২৪.৪ GPU-ঘণ্টা। সপ্তাহে ১০ ঘণ্টা হলে প্রায় ২.৪ সপ্তাহ, তাই সময়রেখায় তিন সপ্তাহ রাখুন।]

+ Tuning on the test set lets information about the test data leak into your choices (Section 3.6), so the final score is optimistic and no longer an honest estimate of out-of-domain performance. The evaluation plan prevents it: hyperparameters are tuned on BanglaBook validation data only, and the SentNoB test set is used once, at the end.

  #bni[Test set-এ tune করলে test ডেটার তথ্য আপনার সিদ্ধান্তে ঢুকে পড়ে (Section 3.6), ফলে চূড়ান্ত স্কোর আশাবাদী হয় এবং আর out-of-domain পারফরম্যান্সের সৎ অনুমান থাকে না। মূল্যায়ন পরিকল্পনার নিয়মটি এটি ঠেকায়: শুধু BanglaBook validation-এ tuning, আর SentNoB test set একবারই, শেষে।]

+ A good answer names the licence (for example CC BY-NC-SA 4.0), where it was found (a LICENSE file, the README, a dataset card or the paper), and a restriction (for example no commercial use, or no distribution of modified versions). If no licence is stated anywhere, do not assume the data is free to use: ask the authors before you plan around it.

  #bni[ভালো উত্তরে থাকে: লাইসেন্সের নাম (যেমন CC BY-NC-SA 4.0), কোথায় পাওয়া গেছে (LICENSE ফাইল, README, dataset card বা পেপার), এবং একটি বিধিনিষেধ (যেমন বাণিজ্যিক ব্যবহার নিষেধ, বা পরিবর্তিত সংস্করণ বিতরণ নিষেধ)। কোথাও লাইসেন্স না থাকলে ধরে নেবেন না যে ডেটা অবাধে ব্যবহারযোগ্য --- পরিকল্পনা করার আগে লেখকদের জিজ্ঞেস করুন।]

== Chapter 27 --- Running Your Own Study
<answers-chapter-27>
#bnsub(2)[Chapter 27 --- নিজের গবেষণা চালানো]
+ The absolute gain is 2 percentage points; the error falls from 8% to 6%, a relative error reduction of 25%. Put the absolute gain, with its interval, in the abstract: it is in the metric's own units. The relative reduction helps near the ceiling, but on its own "25% fewer errors" can sound larger than "+2 points"; giving both prevents either from misleading.

  #bni[পরম উন্নতি ২ শতাংশ পয়েন্ট; ভুল ৮% থেকে ৬%, অর্থাৎ আপেক্ষিক ভুল-হ্রাস ২৫%। Abstract-এ interval-সহ পরম উন্নতি দিন --- এটি মেট্রিকের নিজের এককে। সর্বোচ্চ সীমার কাছে আপেক্ষিক হ্রাস সহায়ক, তবে একা "২৫% কম ভুল" "+২ পয়েন্ট"-এর চেয়ে বড় শোনাতে পারে; দুটিই দিলে কোনোটিই বিভ্রান্ত করে না।]

+ C: mean 0.674, $s = 0.0227$. D: mean 0.683, $s = 0.0254$. Pooled $s_p = 0.0241$ and $d = 0.009 slash 0.0241 = 0.37$ --- small compared with the seed-to-seed spread. Seed by seed, however, D beats C every time: the differences are $+0.007, +0.010, +0.006, +0.015$ and $+0.007$. If the same seed gives both models the same initialisation and data order --- for example, when D is C plus one component --- the runs are paired, and a paired test (Section 19.7) is the right analysis: mean difference 0.009, standard deviation 0.0037, $t = 5.48 > 2.776$. The unpaired $d$ hides a consistent improvement. If the seeds do not make the runs comparable, for example for two different architectures, treat them as unpaired.

  #bni[C-এর গড় ০.৬৭৪, D-এর ০.৬৮৩; মিলিত standard deviation ০.০২৪১, $d$ = ০.৩৭ --- seed-এর ওঠানামার তুলনায় ছোট। কিন্তু seed ধরে দেখলে D প্রতিবারই C-কে হারায়: পার্থক্য +০.০০৭, +০.০১০, +০.০০৬, +০.০১৫, +০.০০৭। একই seed দুটি মডেলকে একই শুরুর মান ও ডেটার ক্রম দিলে (যেমন D = C + একটি অংশ) run-গুলো জোড়াবদ্ধ, তখন paired test (Section 19.7) সঠিক: গড় পার্থক্য ০.০০৯, standard deviation ০.০০৩৭, $t$ = ৫.৪৮ > ২.৭৭৬। জোড়াহীন $d$ একটি সামঞ্জস্যপূর্ণ উন্নতি লুকিয়ে ফেলে। Seed run-গুলোকে তুলনীয় না করলে (যেমন দুটি ভিন্ন আর্কিটেকচার) জোড়াহীন ধরুন।]

+ Without correction, all five ($p <= 0.05$). Bonferroni ($p <= 0.01$): one. Holm: $p_((1)) = 0.001 <= 0.0100$ is rejected, but $p_((2)) = 0.018 > 0.0125$, so the procedure stops: one. Holm never rejects fewer hypotheses than Bonferroni, but it does not always reject more.

  #bni[সংশোধন ছাড়া পাঁচটিই; Bonferroni-তে ($p <= 0.01$) একটি; Holm-এ ০.০০১ বাতিল হয়, কিন্তু ০.০১৮ > ০.০১২৫ বলে প্রক্রিয়া থামে --- একটি। Holm কখনো Bonferroni-র চেয়ে কম hypothesis বাতিল করে না, তবে সবসময় বেশিও করে না।]

+ $1 - 0.95^13 approx 0.487$ --- almost a coin toss. Present the 13 domains as exploratory: report each domain's score with an interval and describe the pattern, without labelling individual domains "significant". If one domain matters in advance, make it a planned comparison; otherwise correct the family with Holm.

  #bni[$1 - 0.95^13 approx 0.487$ --- প্রায় মুদ্রা নিক্ষেপের মতো। ১৩টি domain অনুসন্ধানমূলক হিসেবে দেখান: প্রতিটির স্কোর interval-সহ দিন ও প্যাটার্ন বর্ণনা করুন, কোনো domain-কে আলাদাভাবে "উল্লেখযোগ্য" বলবেন না। কোনো domain আগে থেকেই গুরুত্বপূর্ণ হলে তাকে পরিকল্পিত তুলনা করুন; নইলে পুরো পরিবার Holm দিয়ে সংশোধন করুন।]

+ Reporting the best of five is cherry-picking (Chapter 11, flag 8): the maximum of several noisy runs is biased upwards, just like the best of many leaderboard tries in Section 22.2. Report all five --- mean ± standard deviation, minimum and maximum --- and treat any diverged run by the rule written before training, reporting how many there were.

  #bni[পাঁচটির সেরাটি রিপোর্ট করা cherry-picking (Chapter 11, flag ৮): কয়েকটি noisy run-এর সর্বোচ্চটি ওপরের দিকে পক্ষপাতদুষ্ট, ঠিক Section 22.2-এর leaderboard-এর বহু চেষ্টার সেরাটির মতো। পাঁচটিই রিপোর্ট করুন --- গড় ± standard deviation, সর্বনিম্ন ও সর্বোচ্চ --- আর ভেঙে পড়া run ট্রেনিংয়ের আগে লেখা নিয়মে সামলে তাদের সংখ্যা জানান।]

+ Accuracy is 0.896. The F1 of the positive class is $2 times 0.896 slash (0.896 + 1) = 0.945$, the other two classes score 0, and macro-F1 is $0.945 slash 3 = 0.315$. A useless model scores 89.6% accuracy on such imbalanced data; macro-F1 exposes it, which is why the mini-project uses macro-F1 as its primary metric (Section 26.7).

  #bni[Accuracy ০.৮৯৬; ইতিবাচক শ্রেণির F1 ০.৯৪৫, বাকি দুটির ০, তাই macro-F1 ০.৩১৫। এমন ভারসাম্যহীন ডেটায় অকেজো মডেলও ৮৯.৬% accuracy পায়; macro-F1 তা ধরিয়ে দেয় --- এ কারণেই মিনি-প্রজেক্টের প্রধান মেট্রিক macro-F1 (Section 26.7)।]

== Chapter 28 --- Writing the Paper
<answers-chapter-28>
#bnsub(2)[Chapter 28 --- পেপার লেখা]
+ For example: "We show that a skin-lesion classifier trained at one hospital loses \[N\] points of F1 at two other hospitals and that domain adaptation recovers part of that loss, which matters because clinics that deploy such classifiers rarely have labelled images from their own equipment." The bracket is filled from the results, never before.

  #bni[যেমন: "আমরা দেখাই যে এক হাসপাতালে train করা skin-lesion classifier অন্য দুটি হাসপাতালে F1-এ \[N\] পয়েন্ট হারায় এবং domain adaptation সেই ক্ষতির কিছুটা পূরণ করে, যা গুরুত্বপূর্ণ কারণ এমন classifier ব্যবহারকারী ক্লিনিকের হাতে নিজেদের যন্ত্রের লেবেলযুক্ত ছবি খুব কমই থাকে।" বন্ধনী পূরণ হবে ফলাফল থেকে, তার আগে কখনো নয়।]

+ "Our method scores 0.6 macro-F1 points higher than the strongest baseline on one dataset of Bangla social-media comments, but the 95% confidence interval (−0.2 to 1.4) includes zero, so we cannot conclude that it is better; we have not tested other kinds of Bangla text."

  #bni["আমাদের পদ্ধতি একটি বাংলা সোশ্যাল মিডিয়া ডেটাসেটে সবচেয়ে শক্তিশালী বেসলাইনের চেয়ে ০.৬ macro-F1 পয়েন্ট বেশি পায়, কিন্তু ৯৫% confidence interval (−০.২ থেকে ১.৪) শূন্য অন্তর্ভুক্ত করে, তাই একে ভালো বলা যায় না; অন্য ধরনের বাংলা লেখায় আমরা পরীক্ষা করিনি।"]

+ For example: "Public Bangla sentiment datasets differ sharply in source and labelling: SentNoB contains social-media comments labelled by annotators, BanglaBook contains book reviews labelled from star ratings, and SentiGOLD spans 30 domains annotated by linguists. Most results are reported within a single dataset; we instead measure how models trained on one source perform on another."

  #bni[যেমন: "পাবলিক বাংলা sentiment ডেটাসেটগুলো উৎস ও label-এ অনেক আলাদা: SentNoB-এ annotator-এর label-যুক্ত সোশ্যাল মিডিয়া মন্তব্য, BanglaBook-এ star rating থেকে label-যুক্ত বই-রিভিউ, আর SentiGOLD-এ ভাষাবিদদের label-যুক্ত ৩০টি domain। বেশিরভাগ ফল একটি ডেটাসেটের ভেতরে রিপোর্ট করা; আমরা বরং মাপি এক উৎসে train করা মডেল অন্য উৎসে কেমন করে।"]

+ For example: (1) "We evaluate on two European, high-resource language pairs only; performance on low-resource languages is unknown." (2) "Each configuration was trained once, so we cannot report variance across seeds, and small BLEU differences may not be reliable." (3) "The cost of self-attention grows quadratically with sequence length; we have not tested very long inputs."

  #bni[যেমন: (১) "আমরা শুধু দুটি ইউরোপীয় উচ্চ-সম্পদের ভাষাজোড়ায় মূল্যায়ন করেছি; স্বল্প-সম্পদের ভাষায় পারফরম্যান্স অজানা।" (২) "প্রতিটি configuration একবার train করা হয়েছে, তাই seed-এর মধ্যে variance রিপোর্ট করা যায় না, আর ছোট BLEU পার্থক্য নির্ভরযোগ্য না-ও হতে পারে।" (৩) "Self-attention-এর খরচ sequence-এর দৈর্ঘ্যের সাথে বর্গাকারে বাড়ে; খুব দীর্ঘ ইনপুটে আমরা পরীক্ষা করিনি।"]

+ "Table 3 shows BanglaBERT's macro-F1 on the SentNoB test set." The subject and verb are now close, the passive "were obtained by" and "are shown" are gone, and the familiar element, Table 3, comes first.

  #bni["Table 3 shows BanglaBERT's macro-F1 on the SentNoB test set." --- কর্তা ও ক্রিয়া এখন কাছাকাছি, কর্মবাচ্য বাদ গেছে, আর পরিচিত অংশ (Table 3) আগে এসেছে।]

+ For example: "… All models lose about 9 macro-F1 points out of domain. BanglaBERT and XLM-R lose about the same amount: the 95% confidence interval for the difference in their drops is −0.8 to 1.2 points. In our setting, Bangla-specific pretraining does not reduce the cost of this domain shift, so practitioners can choose between the two models on other grounds, such as computational cost and licence. We release our code and data splits."

  #bni[যেমন: "… সব মডেল নিজের domain-এর বাইরে প্রায় ৯ macro-F1 পয়েন্ট হারায়। BanglaBERT ও XLM-R প্রায় সমান হারায়: তাদের পতনের পার্থক্যের ৯৫% confidence interval −০.৮ থেকে ১.২ পয়েন্ট। আমাদের পরিস্থিতিতে বাংলা-নির্দিষ্ট pretraining এই domain পরিবর্তনের ক্ষতি কমায় না, তাই ব্যবহারকারীরা খরচ ও লাইসেন্সের মতো অন্য বিবেচনায় দুটির মধ্যে বেছে নিতে পারেন।"]

== Chapter 29 --- Submission and Peer Review
<answers-chapter-29>
#bnsub(2)[Chapter 29 --- জমা দেওয়া ও peer review]
+ The email shows several warning signs at once: aggressive, unsolicited invitation; guaranteed acceptance within days; a fee revealed only after acceptance; and a generic, impressive-sounding name. Together they fit the consensus definition of a predatory venue. Do not submit. Check any indexing the journal claims, ask your supervisor, and choose a reputable venue instead.

  #bni[ইমেইলে একসাথে কয়েকটি সতর্কসংকেত: অযাচিত আক্রমণাত্মক আমন্ত্রণ, কয়েক দিনে নিশ্চিত গ্রহণ, গ্রহণের পরে ফি জানানো, আর সাধারণ কিন্তু জমকালো নাম --- সব মিলে প্রিডেটরি venue-এর সংজ্ঞার সাথে মেলে। জমা দেবেন না; দাবি করা index যাচাই করুন, supervisor-কে জিজ্ঞেস করুন, আর একটি নির্ভরযোগ্য venue বাছুন।]

+ "Hasan et al. (2025) built a Bangla sentiment dataset." Refer to your own earlier work in the third person, exactly as you would to anyone else's.

  #bni["Hasan et al. (2025) built a Bangla sentiment dataset." --- নিজের আগের কাজকে অন্যের কাজের মতোই তৃতীয় পুরুষে উল্লেখ করুন।]

+ (a) A fixable weakness: state the number of seeds and report the spread (Section 27.3). (b) Weak reasoning of the kind ARR's guidelines warn against: explain why monolingual work matters, and make sure the limitations section is honest about other languages. (c) Weak reasoning: simplicity is a merit if the method works; point to the evidence. (d) A misunderstanding if the table already reports test results --- clarify the caption; if the table really shows validation results, it is a fixable weakness, and the test results must be reported.

  #bni[(ক) ঠিক করা যায় এমন দুর্বলতা: seed-এর সংখ্যা ও ওঠানামা জানান (Section 27.3)। (খ) ARR-এর নির্দেশিকায় সতর্ক করা দুর্বল যুক্তি: একভাষিক কাজের গুরুত্ব ব্যাখ্যা করুন, আর সীমাবদ্ধতায় অন্য ভাষা নিয়ে সৎ থাকুন। (গ) দুর্বল যুক্তি: পদ্ধতি কাজ করলে সরলতা গুণ; প্রমাণ দেখান। (ঘ) টেবিল আগেই test-এর ফল দেখালে ভুল বোঝা --- caption স্পষ্ট করুন; সত্যিই validation-এর ফল হলে ঠিক করা যায় এমন দুর্বলতা, test-এর ফল দিতেই হবে।]

+ For example: "We focus on Bangla deliberately: it has more than 300 million native speakers, yet controlled studies of domain shift are scarce (Section 2). ARR's reviewer guidelines note that the same concern would apply to studies that test only on English. We agree that transfer to other languages is untested and state this in our limitations; our code applies directly to other languages with suitable datasets."

  #bni[যেমন: "আমরা ইচ্ছা করেই বাংলায় মনোযোগ দিয়েছি: এর ৩০ কোটির বেশি স্থানীয় ভাষাভাষী, অথচ domain পরিবর্তনের নিয়ন্ত্রিত গবেষণা বিরল। ARR-এর নির্দেশিকা মনে করিয়ে দেয়, শুধু ইংরেজিতে পরীক্ষিত গবেষণার ক্ষেত্রেও একই আপত্তি খাটে। অন্য ভাষায় স্থানান্তর পরীক্ষিত নয় --- আমরা মানি এবং সীমাবদ্ধতায় তা লিখেছি; উপযুক্ত ডেটাসেট পেলে আমাদের কোড সরাসরি অন্য ভাষায় চলে।"]

+ Treat the repeated criticism as real. Add strong, recent baselines and tune them with the same budget as your method (Section 27.2); rerun the comparison with several seeds and intervals; update the related work; narrow any claim the new results no longer support; and describe these changes if the venue allows a resubmission note.

  #bni[বারবার আসা সমালোচনাকে আসল ধরুন: শক্তিশালী ও সাম্প্রতিক বেসলাইন যোগ করে নিজের পদ্ধতির সমান বাজেটে tune করুন (Section 27.2); একাধিক seed ও interval-সহ তুলনা আবার চালান; related work হালনাগাদ করুন; নতুন ফল যে দাবি আর সমর্থন করে না তা সংকীর্ণ করুন; আর venue অনুমতি দিলে পরিবর্তনগুলোর বর্ণনা দিন।]

+ For example. #emph[Summary:] an encoder--decoder architecture built only on attention, evaluated on two translation tasks and one parsing task. #emph[Strengths:] state-of-the-art BLEU at a fraction of the training cost, a clear ablation table, and released code. #emph[Weaknesses:] single runs with no variance; baselines copied from other papers, possibly with different BLEU configurations; only two high-resource language pairs. #emph[Questions:] how much do results vary across seeds, and how does the model behave on very long sequences? #emph[Suggestions:] report several seeds and compute all BLEU scores the same way. #emph[Recommendation:] accept, with high confidence.

  #bni[যেমন। সারাংশ: শুধু attention-ভিত্তিক encoder--decoder, দুটি অনুবাদ ও একটি parsing কাজে মূল্যায়িত। শক্তি: কম খরচে সেরা BLEU, স্পষ্ট ablation, প্রকাশিত কোড। দুর্বলতা: একবার চালানো, variance নেই; অন্য পেপার থেকে নেওয়া বেসলাইন, BLEU configuration ভিন্ন হতে পারে; মাত্র দুটি উচ্চ-সম্পদের ভাষাজোড়া। প্রশ্ন: seed-ভেদে ফল কতটা বদলায়, খুব দীর্ঘ sequence-এ কেমন? পরামর্শ: কয়েকটি seed দিন, সব BLEU একইভাবে হিসাব করুন। সুপারিশ: গ্রহণ, উচ্চ আস্থায়।]
