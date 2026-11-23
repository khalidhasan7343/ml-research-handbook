#import "../template.typ": *
#set heading(numbering: none)
#heading(level: 1, numbering: none)[Preface]
<preface>
#bnsub(1)[ভূমিকা]
This is a study and reference handbook for students and early-career researchers who want to move from #emph[understanding machine learning] to #emph[critically evaluating machine learning research]. It starts with the vocabulary and workflow of machine learning, then teaches you how to read a research paper, how to judge whether its evidence is convincing, how to find a genuine research gap, and how to turn that gap into a research question you can actually test.

#bn[এটি সেইসব শিক্ষার্থী ও নবীন গবেষকদের জন্য একটি অধ্যয়ন ও রেফারেন্স হ্যান্ডবুক, যারা মেশিন লার্নিং #emph[বোঝা] থেকে মেশিন লার্নিং গবেষণাকে #emph[সমালোচনামূলকভাবে মূল্যায়ন] করা পর্যন্ত এগোতে চান। বইটি শুরু হয় ML-এর শব্দভাণ্ডার ও workflow দিয়ে, তারপর শেখায় কীভাবে একটি গবেষণাপত্র পড়তে হয়, এর প্রমাণ বিশ্বাসযোগ্য কিনা কীভাবে বিচার করতে হয়, কীভাবে একটি আসল রিসার্চ গ্যাপ খুঁজতে হয়, এবং সেই গ্যাপকে কীভাবে একটি পরীক্ষাযোগ্য রিসার্চ প্রশ্নে রূপ দিতে হয়।]

Every important idea is explained twice: first in English, then in natural Bangla. The Bangla is not a word-for-word translation. It is a second explanation, written so that a Bangla-speaking CSE student can actually understand the idea. Technical terms stay in English where that is how you will meet them in papers.

#bn[প্রতিটি গুরুত্বপূর্ণ ধারণা দুবার ব্যাখ্যা করা হয়েছে: প্রথমে ইংরেজিতে, তারপর সহজ বাংলায়। বাংলা অংশটি শব্দে-শব্দে অনুবাদ নয় --- এটি একটি দ্বিতীয় ব্যাখ্যা, যাতে একজন বাংলাভাষী CSE শিক্ষার্থী ধারণাটি সত্যিই বুঝতে পারেন। পেপারে যেসব technical term ইংরেজিতেই দেখবেন, সেগুলো ইংরেজিতেই রাখা হয়েছে।]

== What you will be able to do
<what-you-will-be-able-to-do>
#bnsub(2)[এই বই শেষে আপনি যা পারবেন]
After working through this handbook you should be able to take an unfamiliar AI/ML research paper and:

+ understand its problem, method, data and results in a structured way (Chapters 7--9);
+ judge whether its experiments and comparisons are trustworthy (Chapters 5, 6 and 10--12);
+ separate its #emph[limitations] from genuine, field-wide #emph[research gaps] (Chapters 13--14);
+ verify a candidate gap against the literature instead of assuming it (Chapter 15);
+ turn a verified gap into a specific, testable research question with a clear contribution (Chapters 16--17).

#bn[এই বইটি শেষ করার পর আপনি অপরিচিত যেকোনো AI/ML পেপার হাতে নিয়ে এর সমস্যা, পদ্ধতি, ডেটা ও ফলাফল কাঠামোবদ্ধভাবে বুঝতে পারবেন; এর experiment ও তুলনা বিশ্বাসযোগ্য কিনা বিচার করতে পারবেন; পেপারের নিজস্ব limitation আর পুরো ক্ষেত্রের আসল research gap আলাদা করতে পারবেন; সম্ভাব্য গ্যাপকে অনুমানের বদলে সাহিত্য দিয়ে যাচাই করতে পারবেন; এবং যাচাইকৃত গ্যাপ থেকে একটি নির্দিষ্ট, পরীক্ষাযোগ্য রিসার্চ প্রশ্ন তৈরি করতে পারবেন।]

Parts VII and VIII go further. They show you how to read and judge papers about large language models, how to use AI tools in research responsibly, how to work with Bangla and other low-resource languages, and how to take a verified gap all the way to a submitted paper: a proposal, a sound experiment, an honest write-up and a response to reviewers (Chapters 22--29).

#bn[Part VII ও VIII আরও এগিয়ে নেয়: large language model নিয়ে লেখা পেপার কীভাবে পড়বেন ও বিচার করবেন, গবেষণায় এআই টুল কীভাবে দায়িত্বশীলভাবে ব্যবহার করবেন, বাংলা ও অন্যান্য স্বল্প-সম্পদের ভাষা নিয়ে কীভাবে কাজ করবেন, এবং একটি যাচাইকৃত গ্যাপকে কীভাবে জমা দেওয়া পেপার পর্যন্ত নেবেন --- প্রপোজাল, নির্ভরযোগ্য experiment, সৎ লেখা ও reviewer-দের জবাবসহ (Chapter 22--29)।]

== How the book is organised
<how-the-book-is-organised>
#bnsub(2)[বইটির গঠন]
#figure(
  align(center)[#table(
    columns: (23.2%, 12.6%, 64.19%),
    align: (left,left,left,),
    table.header([Part], [Chapters], [What it gives you],),
    table.hline(),
    [#strong[I. Machine Learning Foundations]], [1--6], [Vocabulary, the project pipeline, data quality, algorithms, metrics, experimental design],
    [#strong[II. Reading Research Papers]], [7--9], [Paper anatomy, the three-pass reading method, abstract and introduction analysis, the literature matrix],
    [#strong[III. Critical Analysis]], [10--12], [A 14-dimension critique framework, red flags, judging the venue, reproducibility],
    [#strong[IV. Research Gaps, Questions and Novelty]], [13--17], [Gap types, gap vs limitation, finding and verifying gaps, research questions, novelty],
    [#strong[V. Practice]], [18--19], [A full case study of a landmark paper and hand-computed worked examples],
    [#strong[VI. Beyond the Core]], [20--21], [Modern ML concepts and responsible research],
    [#strong[VII. Research in the Age of LLMs]], [22--25], [Reading LLM papers, AI tools in research, Bangla and low-resource ML, a case study of the Transformer paper],
    [#strong[VIII. From Question to Publication]], [26--29], [Proposal, running a study with sound statistics, writing the paper, submission and peer review],
    [#strong[Appendices]], [A--E], [Templates, formula sheet, glossary, one-page cheat sheet, answers to the exercises of Chapters 22--29],
  )]
  , kind: table
  )

== Reading paths
<reading-paths>
#bnsub(2)[কীভাবে পড়বেন]
#figure(
  align(center)[#table(
    columns: (53.09%, 46.91%),
    align: (left,left,),
    table.header([If you want to…], [Read],),
    table.hline(),
    [Learn ML from the beginning], [Chapters 1--6 (start with Section 1.1 if words like #emph[feature] or #emph[hyperparameter] are new)],
    [Understand a specific algorithm], [Chapter 4, then Chapter 19 for worked numbers],
    [Interpret a results table correctly], [Chapter 5, Sections 19.1--19.8],
    [Read a paper efficiently], [Chapter 8, then Appendix D],
    [Judge whether an experiment is trustworthy], [Chapters 6, 10 and 11],
    [See every framework applied to a real paper], [Chapter 18],
    [Find and verify a research gap], [Chapters 13--15],
    [Turn a gap into a research question], [Chapters 16 and 17],
    [Take notes on a paper], [Appendix A],
    [Judge a paper about large language models], [Chapter 22],
    [Use AI tools in research responsibly], [Chapter 23],
    [Do research on Bangla or another low-resource language], [Chapter 24],
    [Plan, run, write up and publish your own study], [Chapters 26--29, starting from Section 24.7],
  )]
  , kind: table
  )

#bn[যদি ML একদম শুরু থেকে শিখতে চান, Chapter 1--6 পড়ুন। পেপার দ্রুত পড়তে চাইলে Chapter 8 ও Appendix D, আর রিসার্চ গ্যাপ খুঁজতে ও যাচাই করতে চাইলে Chapter 13--15 পড়ুন। গ্যাপ থেকে রিসার্চ প্রশ্ন তৈরি করতে Chapter 16--17 দেখুন। LLM-বিষয়ক পেপার বিচার করতে Chapter 22, এআই টুলের দায়িত্বশীল ব্যবহারে Chapter 23, বাংলা ও স্বল্প-সম্পদের ভাষার গবেষণায় Chapter 24, আর নিজের গবেষণা পরিকল্পনা থেকে প্রকাশ পর্যন্ত নিতে Chapter 26--29 (শুরু Section 24.7 থেকে) পড়ুন।]

== Conventions
<conventions>
#bnsub(2)[এই বইয়ের নিয়মকানুন]
- #strong[English first, Bangla second.] A Bangla paragraph is marked by a thin gold rule in the margin, so you can read in either language without losing your place.
- #strong[Quick Recap boxes] close most chapters. Read them before an exam or before reviewing a paper.
- #strong[Cross-references] use #emph[Chapter 13] for a whole chapter and #emph[Section 13.4] for a part of one.
- #strong[Numbered citations] such as \[19\] point to the References at the end of the book.
- #strong[Worked examples with invented numbers] are labelled as illustrations. They teach a calculation; they are not research findings.
- #strong[Exercises] close Chapters 22--29, with answers and hints in Appendix E. The short Python snippets in those chapters may be reused freely under the MIT licence.
- #strong[Dated facts.] Fast-changing details --- venue policies, models, benchmarks --- are marked "as of late 2026"; check the current version before relying on them.

#bn[বাংলা অনুচ্ছেদের পাশে একটি সরু সোনালি রেখা থাকে, যাতে যেকোনো ভাষায় পড়তে গিয়ে জায়গা হারিয়ে না যায়। বেশিরভাগ chapter-এর শেষে একটি #strong[Quick Recap] বক্স আছে। পুরো chapter বোঝাতে #emph[Chapter 13] এবং chapter-এর একটি অংশ বোঝাতে #emph[Section 13.4] লেখা হয়েছে। \[19\]-এর মতো সংখ্যাযুক্ত সাইটেশন বইয়ের শেষের References তালিকা নির্দেশ করে। কাল্পনিক সংখ্যা দিয়ে তৈরি উদাহরণগুলো শুধু হিসাব শেখানোর জন্য --- এগুলো গবেষণার ফলাফল নয়। Chapter 22--29-এর শেষে অনুশীলনী আছে, যার উত্তর ও ইঙ্গিত Appendix E-তে; ওই chapter-গুলোর ছোট Python কোড MIT লাইসেন্সে অবাধে ব্যবহারযোগ্য। দ্রুত বদলায় এমন তথ্য --- venue-এর নীতি, মডেল, benchmark --- "২০২৬ সালের শেষ নাগাদ" বলে চিহ্নিত; নির্ভর করার আগে বর্তমান সংস্করণ দেখে নিন।]

== A note on sources and integrity
<a-note-on-sources-and-integrity>
#bnsub(2)[উৎস ও সততা সম্পর্কে]
The foundations draw on standard textbooks and course materials --- Géron's #emph[Hands-On Machine Learning], Stanford CS229, Goodfellow, Bengio and Courville's #emph[Deep Learning], and others listed in the References --- together with the #emph[Machine Learning Methods Guide] acknowledged at the front of this book. The research-methodology chapters draw on published work on paper reading, literature reviews and research-gap identification. Concepts are explained in this book's own words; no text, figures or worked examples are reproduced from copyrighted textbooks. Where a specific factual claim comes from a source, it is cited at that point. Standard textbook material (for example, the definition of precision) is not individually cited, in line with normal academic practice.

#bn[ভিত্তি অংশটি প্রমিত পাঠ্যপুস্তক ও কোর্স ম্যাটেরিয়াল --- Géron-এর #emph[Hands-On Machine Learning], Stanford CS229, Goodfellow-Bengio-Courville-এর #emph[Deep Learning] ইত্যাদি --- এবং বইয়ের শুরুতে কৃতজ্ঞতার সাথে উল্লেখিত #emph[Machine Learning Methods Guide] থেকে নেওয়া। গবেষণা-পদ্ধতির অংশগুলো পেপার পড়া, literature review ও research gap শনাক্তকরণ নিয়ে প্রকাশিত কাজের ওপর ভিত্তি করে লেখা। সব ধারণা এই বইয়ের নিজের ভাষায় ব্যাখ্যা করা হয়েছে; কোনো কপিরাইটযুক্ত পাঠ্যপুস্তকের লেখা, চিত্র বা উদাহরণ পুনরুৎপাদন করা হয়নি। কোনো নির্দিষ্ট তথ্য কোনো উৎস থেকে এলে সেখানেই সাইট করা হয়েছে।]
