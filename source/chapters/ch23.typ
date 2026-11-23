#import "../template.typ": *

= AI Tools in Research
<ai-tools-in-research>
#bnsub(1)[গবেষণায় এআই টুল]
Chapter 22 was about reading papers whose #emph[subject] is large language models. This chapter is about using LLM-based assistants as #emph[tools] in your own research: to search the literature, to read, to write code and to write papers. These tools are fast and fluent, and fluent is not the same as correct. Every policy discussed in this chapter agrees on one point: you remain fully responsible for everything that carries your name, including every reference #cite(<ref91>) #cite(<ref94>). The chapter shows where assistants help and where they mislead, how to verify citations, why a summary cannot replace reading, how to use coding assistants safely, how to get writing help without losing your own voice, what venues required as of late 2026, and a checklist for responsible use.

#bn[Chapter 22 ছিল এমন পেপার পড়া নিয়ে যাদের #emph[বিষয়]ই large language model। এই chapter-এর বিষয় হলো নিজের গবেষণায় LLM-ভিত্তিক সহকারীকে #emph[হাতিয়ার] হিসেবে ব্যবহার: সাহিত্য খোঁজা, পড়া, কোড লেখা ও পেপার লেখা। এই টুলগুলো দ্রুত ও সাবলীল, কিন্তু সাবলীল মানেই সঠিক নয়। এখানে আলোচিত প্রতিটি নীতিমালা একটি বিষয়ে একমত: আপনার নামে যা প্রকাশিত হয় --- প্রতিটি তথ্যসূত্রসহ --- তার পূর্ণ দায় আপনার #cite(<ref91>) #cite(<ref94>)। এই chapter-এ আছে: সহকারী কোথায় সাহায্য করে আর কোথায় বিভ্রান্ত করে, কীভাবে সাইটেশন যাচাই করবেন, কেন সারাংশ পড়ার বিকল্প নয়, কোডিং সহকারী নিরাপদে ব্যবহারের নিয়ম, নিজের ভাষা না হারিয়ে লেখায় সাহায্য নেওয়া, ২০২৬ সালের শেষ নাগাদ venue-গুলোর নিয়ম, এবং দায়িত্বশীল ব্যবহারের একটি চেকলিস্ট।]

== Where AI Assistants Help, and Where They Mislead
<where-ai-assistants-help-and-where-they-mislead>
#bnsub(2)[এআই সহকারী কোথায় সাহায্য করে, কোথায় বিভ্রান্ত করে]
A useful rule of thumb: use an assistant where you can check its output quickly and cheaply, and be most careful where checking is slow or impossible. A suggested search term costs nothing to test. A confident claim about what a paper found costs a full reading to check --- so it is exactly where errors slip through.

#figure(
  align(center)[#table(
    columns: (15%, 29%, 28%, 28%),
    align: (left,left,left,left,),
    table.header([Task], [Useful for], [Main risk], [Rule],),
    table.hline(),
    [#strong[Searching]], [Search terms, synonyms, neighbouring fields], [Invented or misattributed references], [Cite only what you have opened and checked (Section 23.2)],
    [#strong[Understanding]], [Explaining a term, an equation or a method in simpler words], [Confident but wrong explanations], [Check against the paper or a textbook],
    [#strong[Summarising]], [A first map of a long paper], [Overstated findings], [A summary never replaces your own reading (Section 23.3)],
    [#strong[Coding]], [Boilerplate, plots, an unfamiliar library], [Silent bugs, insecure code, wrong statistics], [Understand and test every line you keep (Section 23.4)],
    [#strong[Writing]], [Grammar, clarity, help for non-native writers], [Meaning drift, lost voice, undisclosed content], [Write the ideas yourself; follow your venue's rules (Sections 23.5--23.6)],
    [#strong[Ideas]], [Brainstorming, critiquing your plan], [Someone else's published idea presented as new], [Trace and cite the source, or verify novelty (Chapter 15)],
  )]
  , kind: table
  )

Your own sense of how much a tool helps is not reliable evidence. In a randomised trial with 16 experienced open-source developers working on 246 real tasks in projects they knew well, allowing AI tools made them 19% #emph[slower] --- yet afterwards they believed the tools had made them about 20% faster #cite(<ref88>). The study covers one setting and early-2025 tools, so it does not prove that AI tools always slow people down. It does show that "it felt faster" is not a measurement.

#bn[একটি কাজের নিয়ম: যেখানে সহকারীর আউটপুট দ্রুত ও সহজে যাচাই করা যায়, সেখানে ব্যবহার করুন; যেখানে যাচাই ধীর বা অসম্ভব, সেখানে সবচেয়ে সতর্ক থাকুন। একটি সার্চ-শব্দ পরীক্ষা করতে কিছুই লাগে না; কিন্তু কোনো পেপার কী পেয়েছে সে সম্পর্কে আত্মবিশ্বাসী দাবি যাচাই করতে পুরো পেপার পড়তে হয় --- ঠিক সেখানেই ভুল ঢুকে পড়ে। আর টুল কতটা সাহায্য করছে, সে বিষয়ে নিজের অনুভূতিও নির্ভরযোগ্য প্রমাণ নয়: ১৬ জন অভিজ্ঞ open-source developer-এর ২৪৬টি বাস্তব কাজের একটি randomised trial-এ এআই টুল ব্যবহারের অনুমতি দিলে তাঁরা ১৯% #emph[ধীর] হয়েছিলেন, অথচ পরে মনে করেছিলেন টুল তাঁদের প্রায় ২০% দ্রুত করেছে #cite(<ref88>)। গবেষণাটি একটি নির্দিষ্ট পরিস্থিতি ও ২০২৫ সালের শুরুর টুল নিয়ে; তবু এটি দেখায় যে "দ্রুত মনে হয়েছে" কোনো পরিমাপ নয়।]

== Literature Search: Verify Every Citation
<literature-search-verify-every-citation>
#bnsub(2)[সাহিত্য অনুসন্ধান: প্রতিটি সাইটেশন যাচাই করুন]
Language models can produce references that look perfect and do not exist. When Walters and Wilder asked ChatGPT to write short literature reviews on 42 topics, 55% of the GPT-3.5 citations and 18% of the GPT-4 citations were fabricated; among the real ones, 43% and 24% respectively contained substantive errors #cite(<ref84>). Newer tools that search the web make this rarer, but not impossible.

By late 2026 the consequences had become concrete. The NeurIPS 2026 handbook notes "many cases of hallucinated citations in literature review", which it treats as a violation of the conference's Code of Conduct #cite(<ref91>). ICLR 2026 checked the references of every submission automatically, had each flagged paper reviewed by at least three people, and desk-rejected all submissions with confirmed hallucinated references #cite(<ref93>).

#bn[ভাষা মডেল এমন তথ্যসূত্র বানাতে পারে যা দেখতে নিখুঁত, কিন্তু আসলে নেই। Walters ও Wilder যখন ChatGPT-কে ৪২টি বিষয়ে ছোট literature review লিখতে বলেন, GPT-3.5-এর ৫৫% আর GPT-4-এর ১৮% সাইটেশন ছিল বানানো; আসলগুলোর মধ্যেও যথাক্রমে ৪৩% ও ২৪%-এ গুরুতর ভুল ছিল #cite(<ref84>)। ওয়েবে খোঁজে এমন নতুন টুলে এটি কমেছে, কিন্তু শূন্য হয়নি। ২০২৬ সালের শেষ নাগাদ এর পরিণতি স্পষ্ট: NeurIPS 2026 handbook জানায় literature review-তে বানানো সাইটেশনের "অনেক ঘটনা" ঘটেছে, যা সম্মেলনের Code of Conduct লঙ্ঘন #cite(<ref91>)\; আর ICLR 2026 প্রতিটি জমা দেওয়া পেপারের তথ্যসূত্র স্বয়ংক্রিয়ভাবে পরীক্ষা করে, প্রতিটি সন্দেহজনক পেপার অন্তত তিনজন মানুষ দিয়ে যাচাই করায়, এবং নিশ্চিতভাবে বানানো তথ্যসূত্রযুক্ত সব পেপার desk-reject করে #cite(<ref93>)।]

The safe procedure takes a few minutes per reference:

+ Never paste a reference from an AI answer into your bibliography. Treat it as a #emph[lead] to search for.
+ Find the work at its source: the DOI, the publisher's page, the ACL Anthology, arXiv or a library database.
+ Check the authors, title, venue and year against the source, and import the entry into your reference manager from there.
+ Open the paper and confirm that it actually says what you cite it for. A real paper cited for a claim it does not make is still a wrong citation.

#strong[A note for Bangla-language sources.] ICLR's automatic checker wrongly flagged, among other cases, a paper with a non-English title that the authors had translated into English #cite(<ref93>). When you cite a work published in Bangla, give the original title (in Bangla script or a standard transliteration), add your English translation in square brackets, and include a DOI or stable URL. Readers --- and checking tools --- can then find it.

#bn[নিরাপদ পদ্ধতিতে প্রতি তথ্যসূত্রে কয়েক মিনিট লাগে: (১) এআই-এর উত্তর থেকে কোনো তথ্যসূত্র সরাসরি bibliography-তে বসাবেন না --- এটিকে খোঁজার #emph[সূত্র] হিসেবে দেখুন; (২) উৎসে কাজটি খুঁজে বের করুন: DOI, প্রকাশকের পাতা, ACL Anthology, arXiv বা লাইব্রেরি ডেটাবেস; (৩) লেখক, শিরোনাম, venue ও বছর উৎসের সাথে মিলিয়ে সেখান থেকেই reference manager-এ আনুন; (৪) পেপারটি খুলে নিশ্চিত হোন যে আপনি যে দাবির জন্য সাইট করছেন, পেপারটি আসলেই তা বলে। #strong[বাংলা উৎসের জন্য:] ICLR-এর স্বয়ংক্রিয় checker ভুলবশত এমন একটি পেপারও চিহ্নিত করেছিল যার অ-ইংরেজি শিরোনাম লেখকরা ইংরেজিতে অনুবাদ করেছিলেন #cite(<ref93>)। বাংলায় প্রকাশিত কাজ সাইট করলে মূল শিরোনাম (বাংলা হরফে বা প্রমিত প্রতিবর্ণীকরণে) দিন, বর্গবন্ধনীতে ইংরেজি অনুবাদ যোগ করুন, এবং DOI বা স্থায়ী URL দিন।]

== Summaries Are Not Reading
<summaries-are-not-reading>
#bnsub(2)[সারাংশ পড়ার বিকল্প নয়]
AI summaries tend to say more than the paper does. Peters and Chin-Yee compared 4,900 summaries of scientific texts produced by ten LLMs with the original texts. Most models produced broader generalisations than the originals even when asked to prioritise accuracy, some of them in 26--73% of cases, and LLM summaries were nearly five times as likely as expert-written summaries to contain broad generalisations; newer models tended to do worse, not better #cite(<ref85>). The typical error is small and dangerous: a hedge such as "in this sample" or "was associated with" quietly disappears, and a limited finding becomes a general claim.

#bn[এআই-এর সারাংশ প্রায়ই পেপারের চেয়ে বেশি দাবি করে। Peters ও Chin-Yee দশটি LLM-এর তৈরি ৪,৯০০টি বৈজ্ঞানিক সারাংশ মূল লেখার সাথে তুলনা করেন: নির্ভুলতাকে অগ্রাধিকার দিতে বলার পরও বেশিরভাগ মডেল মূল লেখার চেয়ে বিস্তৃত সাধারণীকরণ করেছে, কোনো কোনোটি ২৬--৭৩% ক্ষেত্রে; আর LLM-এর সারাংশে বিশেষজ্ঞের লেখা সারাংশের চেয়ে প্রায় পাঁচ গুণ বেশি বিস্তৃত সাধারণীকরণ ছিল; নতুন মডেলগুলো ভালো নয়, বরং খারাপ করেছে #cite(<ref85>)। সাধারণ ভুলটি ছোট কিন্তু বিপজ্জনক: "এই নমুনায়" বা "সম্পর্কিত ছিল"-এর মতো সতর্ক শব্দ নিঃশব্দে হারিয়ে যায়, আর সীমিত একটি ফলাফল সাধারণ দাবিতে পরিণত হয়।]

Use assistants #emph[around] the three-pass method of Chapter 8, never instead of it:

- #strong[Before the first pass,] a summary can serve as a rough map. Treat every claim in it as unverified.
- #strong[The first pass (Section 8.1) is yours.] Read the title, abstract, introduction, headings and conclusions yourself, then compare them with the summary. Where they differ, the paper wins --- and pay special attention to hedges, sample descriptions and numbers.
- #strong[In the second and third passes,] ask the assistant narrow questions --- "explain this equation", "what does this term mean in this field?" --- and check each answer against the paper.
- #strong[Never let an assistant fill your literature matrix (Chapter 9) unchecked.] One wrong cell can become a wrong gap claim (Chapter 15), and a wrong gap claim can waste months.

#bn[এআই সহকারীকে Chapter 8-এর তিন-ধাপ পদ্ধতির #emph[চারপাশে] ব্যবহার করুন, এর বদলে কখনো নয়। প্রথম পাসের আগে সারাংশ একটি মোটামুটি মানচিত্র হতে পারে --- তবে এর প্রতিটি দাবিকে অযাচাইকৃত ধরুন। প্রথম পাস (Section 8.1) নিজে করুন: শিরোনাম, abstract, ভূমিকা, শিরোনামগুলো ও উপসংহার নিজে পড়ে সারাংশের সাথে মেলান; অমিল হলে পেপারই ঠিক --- বিশেষ করে সতর্ক শব্দ, নমুনার বর্ণনা ও সংখ্যায় নজর দিন। দ্বিতীয় ও তৃতীয় পাসে সহকারীকে সুনির্দিষ্ট প্রশ্ন করুন ("এই সমীকরণটি বুঝিয়ে দাও") এবং প্রতিটি উত্তর পেপারের সাথে মেলান। আর literature matrix (Chapter 9) কখনো যাচাই ছাড়া সহকারীকে দিয়ে পূরণ করাবেন না: একটি ভুল ঘর একটি ভুল গ্যাপ-দাবিতে (Chapter 15) পরিণত হতে পারে।]

== Coding Assistants: Test, Understand, License
<coding-assistants-test-understand-license>
#bnsub(2)[কোডিং সহকারী: পরীক্ষা করুন, বুঝুন, লাইসেন্স দেখুন]
Code that runs is not the same as code that is right. In security-relevant scenarios, about 40% of 1,689 programs generated by GitHub Copilot were vulnerable #cite(<ref86>). In a user study, participants with an AI assistant wrote insecure code more often in four of five tasks --- and were #emph[more] likely to believe their code was secure #cite(<ref87>). For research code, the bigger danger is the silent error that produces plausible numbers: a split that leaks test data (Section 3.6), a "macro" average that is really micro, a test set used to choose the best epoch (Section 5.6), or a seed that was never set.

#bn[চলে এমন কোড মানেই সঠিক কোড নয়। নিরাপত্তা-সংশ্লিষ্ট পরিস্থিতিতে GitHub Copilot-এর তৈরি ১,৬৮৯টি প্রোগ্রামের প্রায় ৪০% ছিল ঝুঁকিপূর্ণ #cite(<ref86>)। এক ব্যবহারকারী-গবেষণায় এআই সহকারী পাওয়া অংশগ্রহণকারীরা পাঁচটির মধ্যে চারটি কাজে বেশি অনিরাপদ কোড লিখেছেন --- এবং নিজেদের কোড নিরাপদ বলে #emph[বেশি] বিশ্বাস করেছেন #cite(<ref87>)। গবেষণার কোডে বড় বিপদ হলো নিঃশব্দ ভুল, যা বিশ্বাসযোগ্য সংখ্যা তৈরি করে: test ডেটা ফাঁস করা split (Section 3.6), নামে "macro" কিন্তু আসলে micro গড়, সেরা epoch বাছতে test set ব্যবহার (Section 5.6), বা কখনো seed না বসানো।]

Five rules keep AI-assisted research code honest:

+ #strong[Understand every line you keep.] If you cannot explain it to your supervisor, rewrite it or remove it.
+ #strong[Test on cases you can compute by hand.] A metric function should reproduce a worked example such as the one in Section 19.1 (see the snippet below).
+ #strong[Check the data path.] Confirm that splitting happens before any fitting, and that the test set is touched only once.
+ #strong[Record the environment.] Pin library versions and save them with your results (Chapter 12).
+ #strong[Respect licences and confidentiality.] Do not paste large generated blocks that you cannot attribute, check the licences of any suggested dependencies, and never paste private data, unpublished results or passwords into a hosted tool.

#bn[পাঁচটি নিয়ম এআই-সহায়িত গবেষণা-কোডকে সৎ রাখে: (১) রাখা প্রতিটি লাইন বুঝুন --- supervisor-কে ব্যাখ্যা করতে না পারলে আবার লিখুন বা বাদ দিন; (২) হাতে হিসাব করা যায় এমন উদাহরণে পরীক্ষা করুন --- মেট্রিকের ফাংশন যেন Section 19.1-এর মতো উদাহরণের ফল মেলায় (নিচের কোড দেখুন); (৩) ডেটার পথ যাচাই করুন: কোনো fitting-এর আগে split, আর test set একবারই; (৪) পরিবেশ লিখে রাখুন: library-র version নির্দিষ্ট করে ফলাফলের সাথে সংরক্ষণ করুন (Chapter 12); (৫) লাইসেন্স ও গোপনীয়তা মানুন: উৎস বলতে পারবেন না এমন বড় কোডের অংশ বসাবেন না, প্রস্তাবিত library-র লাইসেন্স দেখুন, আর ব্যক্তিগত ডেটা, অপ্রকাশিত ফলাফল বা পাসওয়ার্ড কখনো hosted টুলে দেবেন না।]

#strong[Snippet: a hand-checkable test for macro-F1.] Four labels are small enough to compute by hand. Class 1 has precision 1 and recall 1/2, so F1 = 2/3; class 0 has precision 2/3 and recall 1, so F1 = 0.8. The macro average is their mean. If an assistant-written metric fails this test, do not trust any number it has produced.

```python
from sklearn.metrics import f1_score

y_true = [1, 1, 0, 0]
y_pred = [1, 0, 0, 0]
expected = (2/3 + 0.8) / 2          # = 0.7333..., computed by hand
assert abs(f1_score(y_true, y_pred, average="macro") - expected) < 1e-9
```

#bn[#strong[কোড: macro-F1-এর হাতে-যাচাইযোগ্য পরীক্ষা।] চারটি label হাতে হিসাব করার মতো ছোট: class 1-এর precision ১ ও recall ১/২, তাই F1 = ২/৩; class 0-এর precision ২/৩ ও recall ১, তাই F1 = ০.৮; macro গড় এ দুটির গড়। সহকারীর লেখা মেট্রিক এই পরীক্ষায় ব্যর্থ হলে তা থেকে পাওয়া কোনো সংখ্যায় বিশ্বাস করবেন না।]

== Writing Help and Your Own Voice
<writing-help-and-your-own-voice>
#bnsub(2)[লেখায় সাহায্য ও নিজের কণ্ঠস্বর]
For writers whose first language is not English, AI writing help can remove a real barrier, and polishing your own text is widely accepted. ACL's 2023 policy compares it to grammar checkers and spell checkers, and does not require it to be disclosed --- but adds a warning worth taking seriously: "If the authors are not sufficiently fluent to notice when the generated output does not match their intended ideas, using such tools without further checking could yield worse results than simpler-but-more-accurate English" #cite(<ref90>). Simple, accurate English beats polished, inaccurate English.

A workflow that keeps the ideas yours:

- Write the draft yourself. If it helps, think and outline in Bangla first, then write in English.
- Ask for #emph[corrections], not rewrites: "mark the grammatical errors and explain each one" teaches you more and changes less.
- Accept changes one at a time. Re-read every changed sentence for meaning drift --- above all in numbers, technical terms and hedges.
- If the assistant suggests an idea, assume it came from someone's published work; ACL's policy makes the same point #cite(<ref90>). Search for the source and cite it, or check that the idea is genuinely new (Chapter 15).
- Keep your drafts and version history. They show how the work was done.

#bn[যাঁদের প্রথম ভাষা ইংরেজি নয়, তাঁদের জন্য এআই-এর লেখা-সহায়তা একটি বাস্তব বাধা দূর করতে পারে, আর নিজের লেখা মসৃণ করা ব্যাপকভাবে গ্রহণযোগ্য। ACL-এর ২০২৩ সালের নীতি একে grammar checker ও spell checker-এর সাথে তুলনা করে এবং এর ঘোষণা বাধ্যতামূলক করে না --- তবে একটি গুরুত্বপূর্ণ সতর্কবার্তা দেয়: লেখক যদি এতটা সাবলীল না হন যে বুঝতে পারেন তৈরি লেখাটি তাঁর উদ্দেশ্যের সাথে মিলছে না, তাহলে যাচাই ছাড়া এমন টুল ব্যবহার "সহজ-কিন্তু-নির্ভুল ইংরেজি"র চেয়ে খারাপ ফল দিতে পারে #cite(<ref90>)। সহজ, নির্ভুল ইংরেজি মসৃণ কিন্তু ভুল ইংরেজির চেয়ে ভালো। ধারণাগুলো নিজের রাখার পদ্ধতি: খসড়া নিজে লিখুন (প্রয়োজনে আগে বাংলায় ভেবে ও কাঠামো সাজিয়ে); পুনর্লিখন নয়, #emph[সংশোধন] চান --- "ব্যাকরণের ভুলগুলো চিহ্নিত করে ব্যাখ্যা করো"; একটি একটি করে পরিবর্তন গ্রহণ করুন এবং অর্থ বদলেছে কিনা দেখুন, বিশেষত সংখ্যা, পরিভাষা ও সতর্ক শব্দে; সহকারী কোনো ধারণা দিলে ধরে নিন সেটি কারও প্রকাশিত কাজ থেকে এসেছে --- উৎস খুঁজে সাইট করুন বা নতুনত্ব যাচাই করুন (Chapter 15); আর খসড়া ও version history রেখে দিন।]

#strong[A warning about AI detectors.] Tools that claim to detect AI-written text are unreliable, and unfair to exactly the readers of this book. Seven widely used detectors misclassified non-native English writing as AI-generated --- on average 61% of essays written for the TOEFL English test --- while classifying essays by US eighth-grade students almost perfectly #cite(<ref89>). ICLR's program chairs likewise describe the accuracy of LLM-content detection as "far from perfect" #cite(<ref93>). Never treat a detector's score as proof, whether you are a student, a teaching assistant or a reviewer; and if your own work is questioned, your drafts and version history are your best evidence.

#bn[#strong[এআই detector সম্পর্কে সতর্কতা।] এআই-লেখা শনাক্ত করার দাবিদার টুলগুলো অনির্ভরযোগ্য, এবং ঠিক এই বইয়ের পাঠকদের প্রতিই অন্যায্য। বহুল ব্যবহৃত সাতটি detector অ-স্থানীয় ইংরেজি লেখকদের লেখাকে এআই-তৈরি বলে ভুল চিহ্নিত করেছে --- TOEFL পরীক্ষার জন্য লেখা রচনার গড়ে ৬১% --- অথচ মার্কিন অষ্টম শ্রেণির শিক্ষার্থীদের রচনা প্রায় নিখুঁতভাবে চিনেছে #cite(<ref89>)। ICLR-এর program chair-রাও LLM-লেখা শনাক্তকরণের নির্ভুলতাকে "পরিপূর্ণ থেকে অনেক দূরে" বলেছেন #cite(<ref93>)। শিক্ষার্থী, teaching assistant বা reviewer --- যে-ই হোন, detector-এর স্কোরকে কখনো প্রমাণ ধরবেন না; আর আপনার কাজ নিয়ে প্রশ্ন উঠলে খসড়া ও version history-ই আপনার সেরা প্রমাণ।]

== Disclosure Rules (as of Late 2026)
<disclosure-rules-as-of-late-2026>
#bnsub(2)[ঘোষণার নিয়ম (২০২৬ সালের শেষ নাগাদ)]
Section 21.4 asked you to check your venue's policy on AI assistance. Policies change every year, so treat the table below as a dated snapshot and read the current version before you submit. Four principles, however, are shared by every policy discussed here: an AI tool cannot be an author, because it cannot take responsibility for the work #cite(<ref94>) #cite(<ref95>)\; the human authors are responsible for all content, including every reference; substantive use must be disclosed; and confidential material --- above all, papers you are reviewing --- must not be fed into tools that do not protect it.

#figure(
  align(center)[#table(
    columns: (17%, 83%),
    align: (left,left,),
    table.header([Venue or body], [What it asked for, as of late 2026],),
    table.hline(),
    [#strong[NeurIPS 2026]], [Describe LLM use in the experimental setup if it is an important, original or non-standard part of the method; spell checking, grammar suggestions, editing help and basic code assistance need not be documented. Authors are responsible for all text, figures and references; LLMs cannot be authors; prompt injections and other attempts to manipulate reviewing are prohibited; reviewers must not share submissions with unsanctioned LLMs #cite(<ref91>).],
    [#strong[ICLR 2026]], [Authors and reviewers who use an LLM must disclose it and are responsible for its output. Papers with extensive undisclosed LLM use, and papers with hallucinated references, are desk-rejected #cite(<ref92>) #cite(<ref93>).],
    [#strong[ACL]], [The Responsible NLP Checklist asks authors to describe any use of writing assistants. Under the 2023 policy, polishing your own text needs no disclosure, generated "low-novelty" text must be identified and checked, and model-generated ideas should be acknowledged; a contributor of both ideas and text would be a co-author, "which the models cannot be" #cite(<ref90>).],
    [#strong[Publishers]], [COPE and Springer Nature: AI tools cannot be listed as authors, and their use must be documented, for example in the methods or acknowledgements #cite(<ref94>) #cite(<ref95>).],
    [#strong[Your university]], [Thesis rules may be stricter than any conference. Ask your supervisor and read the regulations before you start writing.],
  )]
  , kind: table
  )

#bn[Section 21.4-এ venue-এর নীতি দেখে নিতে বলা হয়েছিল। নীতিগুলো প্রতি বছর বদলায়, তাই ওপরের টেবিলটিকে একটি তারিখযুক্ত চিত্র হিসেবে দেখুন এবং জমা দেওয়ার আগে বর্তমান সংস্করণ পড়ুন। তবে এখানে আলোচিত প্রতিটি নীতিতে চারটি বিষয় এক: এআই টুল লেখক হতে পারে না, কারণ কাজের দায় নিতে পারে না #cite(<ref94>) #cite(<ref95>)\; প্রতিটি তথ্যসূত্রসহ সব বিষয়বস্তুর দায় মানুষ লেখকদের; উল্লেখযোগ্য ব্যবহার ঘোষণা করতে হবে; আর গোপনীয় উপকরণ --- বিশেষত আপনি যে পেপার review করছেন --- এমন টুলে দেওয়া যাবে না যা তা সুরক্ষিত রাখে না। নীতির খুঁটিনাটি venue ভেদে আলাদা: যেমন NeurIPS 2026 ব্যাকরণ-সহায়তা ঘোষণা করতে বলে না, অথচ ICLR 2026 যেকোনো LLM ব্যবহার ঘোষণা করতে বলে।]

A disclosure statement should say which tool, which version, when, for what and what you checked. For example:

#quote(block: true)[
#emph[We used] \[tool and version\] #emph[between] \[dates\] #emph[to check the grammar of Sections 1--5 and to suggest search terms for the literature review. Every reference was located at its source and read by the authors. No AI tool was used to generate ideas, analyses or results. The authors take full responsibility for the content of this paper.]
]

#bn[একটি ঘোষণায় থাকবে: কোন টুল, কোন version, কখন, কী কাজে, এবং আপনি কী যাচাই করেছেন। যেমন: "আমরা \[টুল ও version\] \[তারিখ\]-এর মধ্যে Section 1--5-এর ব্যাকরণ পরীক্ষা ও literature review-এর সার্চ-শব্দ প্রস্তাবের জন্য ব্যবহার করেছি। প্রতিটি তথ্যসূত্র লেখকরা উৎসে খুঁজে পেয়ে পড়েছেন। ধারণা, বিশ্লেষণ বা ফলাফল তৈরিতে কোনো এআই টুল ব্যবহার করা হয়নি। এই পেপারের বিষয়বস্তুর পূর্ণ দায় লেখকদের।"]

== A Responsible-Use Checklist
<a-responsible-use-checklist>
#bnsub(2)[দায়িত্বশীল ব্যবহারের চেকলিস্ট]
Tick every box before you submit a thesis or paper --- including the mini-project paper in Part VIII.

#bn[থিসিস বা পেপার জমা দেওয়ার আগে --- Part VIII-এর মিনি-প্রজেক্টের পেপারসহ --- প্রতিটি বক্সে টিক দিন।]

#checklist[
- #cbox() #strong[Every reference was found and checked at its source;] none was copied from an AI answer. · প্রতিটি তথ্যসূত্র উৎসে খুঁজে যাচাই করেছি।
- #cbox() #strong[Every claim I cite, I read in the paper itself,] not in a summary. · প্রতিটি দাবি মূল পেপারেই পড়েছি, সারাংশে নয়।
- #cbox() #strong[I understand and have tested every line of AI-assisted code I kept.] · রাখা প্রতিটি কোড-লাইন বুঝেছি ও পরীক্ষা করেছি।
- #cbox() #strong[No confidential material went into a tool that does not protect it] --- no papers under review, private data or passwords. · গোপনীয় কিছু অসুরক্ষিত টুলে দিইনি।
- #cbox() #strong[AI-suggested ideas were traced to their sources and cited,] or checked for novelty (Chapter 15). · প্রস্তাবিত ধারণার উৎস খুঁজে সাইট করেছি।
- #cbox() #strong[Every edit to my writing was checked for changes in meaning,] numbers and hedges. · প্রতিটি সম্পাদনায় অর্থ বদলেছে কিনা দেখেছি।
- #cbox() #strong[I followed my venue's and my university's current policy,] and wrote a disclosure statement where required. · venue ও বিশ্ববিদ্যালয়ের নীতি মেনে ঘোষণা দিয়েছি।
- #cbox() #strong[I kept the drafts and version history] that show how the work was done. · খসড়া ও version history রেখেছি।
- #cbox() #strong[There are no hidden instructions for AI reviewers] anywhere in the submission. · জমা দেওয়া লেখায় এআই reviewer-এর জন্য কোনো গোপন নির্দেশ নেই।
]

== Exercises
<exercises-23>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ An assistant gives you five references on Bangla sentiment analysis. Describe, step by step, how you would verify them, and what you would do with one that you cannot find anywhere.

  #bni[একটি সহকারী বাংলা sentiment analysis নিয়ে পাঁচটি তথ্যসূত্র দিল। ধাপে ধাপে বলুন কীভাবে যাচাই করবেন, আর কোথাও খুঁজে না পাওয়া একটি তথ্যসূত্র নিয়ে কী করবেন।]

+ An abstract says: "In a sample of 320 undergraduates at two universities in Dhaka, a six-week spaced-repetition app was associated with higher vocabulary scores than a control condition." An AI summary says: "Spaced-repetition apps improve students' vocabulary." Identify three ways the summary overgeneralises.

  #bni[একটি abstract বলছে: "ঢাকার দুটি বিশ্ববিদ্যালয়ের ৩২০ জন স্নাতক শিক্ষার্থীর নমুনায়, ছয় সপ্তাহের spaced-repetition অ্যাপ control-এর তুলনায় উচ্চতর শব্দভান্ডার-স্কোরের সাথে সম্পর্কিত ছিল।" এআই সারাংশ বলছে: "Spaced-repetition অ্যাপ শিক্ষার্থীদের শব্দভান্ডার বাড়ায়।" সারাংশটি কোন তিনভাবে অতিসাধারণীকরণ করেছে?]

+ An assistant writes training code that keeps the epoch with the best #emph[test-set] score and reports that score. What is wrong, which sections of this book explain it, and how would you fix the code?

  #bni[একটি সহকারী এমন কোড লিখল যা #emph[test set]-এ সেরা স্কোরের epoch রাখে এবং সেই স্কোরই রিপোর্ট করে। ভুলটি কী, বইয়ের কোন অংশ এটি ব্যাখ্যা করে, এবং কোড কীভাবে ঠিক করবেন?]

+ You used an assistant to check the grammar of your whole paper, to suggest search terms for related work, and to write plotting code. According to the table in Section 23.6, which of these would NeurIPS 2026 require you to document, and which would ICLR 2026 require you to disclose? Write a short disclosure statement anyway.

  #bni[আপনি পুরো পেপারের ব্যাকরণ যাচাই, related work-এর সার্চ-শব্দ প্রস্তাব ও plotting-এর কোড লিখতে সহকারী ব্যবহার করেছেন। Section 23.6-এর টেবিল অনুযায়ী NeurIPS 2026 কোনগুলো লিপিবদ্ধ করতে বলবে, আর ICLR 2026 কোনগুলো ঘোষণা করতে বলবে? তারপর একটি ছোট ঘোষণা লিখুন।]

+ A classmate's essay is flagged by an AI detector as "90% AI-written". The classmate is a non-native English writer and says they wrote it alone. What does the evidence in Section 23.5 suggest, and what should happen next?

  #bni[একজন সহপাঠীর রচনাকে একটি এআই detector "৯০% এআই-লেখা" বলেছে। তিনি অ-স্থানীয় ইংরেজি লেখক এবং বলছেন নিজেই লিখেছেন। Section 23.5-এর প্রমাণ কী ইঙ্গিত দেয়, আর এরপর কী হওয়া উচিত?]

+ You are reviewing a submission for a conference and would like an AI tool to summarise it for you. What does the NeurIPS 2026 handbook say, and why?

  #bni[আপনি একটি সম্মেলনের জন্য একটি পেপার review করছেন এবং এআই টুল দিয়ে এর সারাংশ বানাতে চান। NeurIPS 2026 handbook কী বলে, এবং কেন?]

#recap[
- Use assistants where their output is quick to check; be most careful where checking is slow. You remain responsible for everything that carries your name.

  #bni[যেখানে আউটপুট দ্রুত যাচাই করা যায়, সেখানে সহকারী ব্যবহার করুন; যেখানে যাচাই ধীর, সেখানে সবচেয়ে সতর্ক থাকুন। আপনার নামে যা যায়, তার দায় আপনার।]

- Never copy a reference from an AI answer: find it at its source, check its details, and read what you cite it for. Fabricated references now lead to desk rejection.

  #bni[এআই-এর উত্তর থেকে কোনো তথ্যসূত্র কপি করবেন না: উৎসে খুঁজুন, তথ্য মেলান, আর যে দাবির জন্য সাইট করছেন তা পড়ুন। বানানো তথ্যসূত্রে এখন desk rejection হয়।]

- Summaries overgeneralise; use them only as a map around your own three-pass reading.

  #bni[সারাংশ অতিসাধারণীকরণ করে; শুধু নিজের তিন-ধাপ পাঠের চারপাশে মানচিত্র হিসেবে ব্যবহার করুন।]

- Test AI-assisted code on cases you can compute by hand, and never paste confidential material into a tool that does not protect it.

  #bni[এআই-সহায়িত কোড হাতে হিসাবযোগ্য উদাহরণে পরীক্ষা করুন, আর গোপনীয় কিছু অসুরক্ষিত টুলে দেবেন না।]

- Get help with language, not with thinking; AI detectors are unreliable and biased against non-native writers; follow and cite your venue's current disclosure policy.

  #bni[ভাষায় সাহায্য নিন, চিন্তায় নয়; এআই detector অনির্ভরযোগ্য ও অ-স্থানীয় লেখকদের প্রতি পক্ষপাতদুষ্ট; venue-এর বর্তমান ঘোষণা-নীতি মেনে চলুন।]

]
