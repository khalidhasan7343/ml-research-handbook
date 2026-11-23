#import "../template.typ": *

= Finding and Verifying a Research Gap
<finding-and-verifying-a-research-gap>
#bnsub(1)[রিসার্চ গ্যাপ খোঁজা ও যাচাই করা]
Chapter 13 described #emph[what kinds] of gaps exist. This chapter is about the process: how to find a gap systematically, how to check that it is real, and how to write it down so that a reviewer will accept it.

#bn[Chapter 13-এ দেখানো হয়েছে কী #emph[ধরনের] গ্যাপ থাকতে পারে। এই chapter প্রক্রিয়া নিয়ে: কীভাবে পদ্ধতিগতভাবে গ্যাপ খুঁজবেন, কীভাবে যাচাই করবেন এটি আসল কিনা, এবং কীভাবে লিখবেন যাতে একজন reviewer তা গ্রহণ করেন।]

== The Golden Rule
<the-golden-rule>
#bnsub(2)[মূল সোনালী নিয়ম]
#strong["Nobody has done this before" is not sufficient evidence of a research gap.]

#bn[#strong["এর আগে কেউ এটি করেনি" --- এটি একা কোনো রিসার্চ গ্যাপের যথেষ্ট প্রমাণ নয়।]]

Two things must both be true. The gap must be #strong[real] --- the missing piece is genuinely missing, not just missing from your search results. And it must be #strong[meaningful] --- filling it would advance understanding, performance or practice. Applying an off-the-shelf classifier to a new local dataset, with no methodological change, domain insight or resolution of a real limitation, usually meets neither test.

#bn[দুটি শর্তই পূরণ হতে হবে। গ্যাপটি #strong[আসল] হতে হবে --- অনুপস্থিত অংশটি সত্যিই অনুপস্থিত, শুধু আপনার সার্চ ফলাফলে নেই এমন নয়। এবং এটি #strong[অর্থপূর্ণ] হতে হবে --- পূরণ করলে বোঝাপড়া, পারফরম্যান্স বা প্রয়োগে সত্যিকারের অগ্রগতি হবে। কোনো পদ্ধতিগত পরিবর্তন, domain insight বা বাস্তব সীমাবদ্ধতার সমাধান ছাড়া off-the-shelf classifier নতুন local ডেটাসেটে চালানো সাধারণত কোনো শর্তই পূরণ করে না।]

== The Fourteen-Step Detection Framework
<the-fourteen-step-detection-framework>
#bnsub(2)[১৪-ধাপ গ্যাপ শনাক্তকরণ কাঠামো]
#figure(
  align(center)[#table(
    columns: (4.7%, 44.57%, 35.02%, 15.71%),
    align: (left,left,left,left,),
    table.header([Step], [What to do], [বাংলা], [Output],),
    table.hline(),
    [1], [#strong[Understand the problem.] State it precisely, in technical and in practical terms.], [সমস্যাটি গাণিতিক ও ব্যবহারিক --- দুই ভাষাতেই সুনির্দিষ্টভাবে বলুন।], [A one-paragraph problem statement],
    [2], [#strong[Find the important existing research.] Use the search procedure in the next section.], [গুরুত্বপূর্ণ বিদ্যমান গবেষণা খুঁজুন (পরের অংশের পদ্ধতি দেখুন)।], [A seed list of key papers],
    [3], [#strong[Read survey and review papers.] They summarise the field and often list open problems.], [Survey ও review পেপার পড়ুন --- এগুলো প্রায়ই open problem তালিকা দেয়।], [Known open problems],
    [4], [#strong[Build a literature matrix.] One row per paper (Chapter 9).], [প্রতিটি পেপারের জন্য একটি সারি দিয়ে matrix তৈরি করুন।], [The filled matrix],
    [5], [#strong[Identify common approaches.] Which methods does almost everyone use?], [প্রায় সবাই কোন পদ্ধতি ব্যবহার করে তা চিহ্নিত করুন।], [The dominant methods],
    [6], [#strong[Identify limitations.] Both declared and observed, per paper.], [প্রতিটি পেপারের স্বীকৃত ও পর্যবেক্ষিত সীমাবদ্ধতা লিখুন।], [A limitations column],
    [7], [#strong[Compare datasets.] Size, source, public or private, population.], [ডেটাসেট তুলনা করুন: আকার, উৎস, পাবলিক কিনা, population।], [Dataset patterns],
    [8], [#strong[Compare methodologies.] Validation schemes, baselines, assumptions.], [পদ্ধতি তুলনা করুন: validation, বেসলাইন, অনুমান।], [Methodological patterns],
    [9], [#strong[Compare evaluation metrics.] Is one metric used everywhere, regardless of the data?], [মেট্রিক তুলনা করুন --- ডেটা যাই হোক, সবখানে কি একই মেট্রিক?], [Evaluation patterns],
    [10], [#strong[Compare recent state-of-the-art.] What do the newest papers report, and what do they still not handle?], [সাম্প্রতিক SOTA তুলনা করুন --- নতুনতম পেপারগুলো কী পারে, কী এখনো পারে না?], [The current frontier],
    [11], [#strong[Identify what has not been investigated.] Look across columns for the empty cells and repeated weaknesses.], [কী এখনো পরীক্ষা করা হয়নি তা খুঁজুন --- ফাঁকা ঘর ও পুনরাবৃত্ত দুর্বলতা।], [Candidate gaps],
    [12], [#strong[Decide whether it is meaningful.] Who benefits if it is filled, and by how much?], [এটি অর্থপূর্ণ কিনা ঠিক করুন --- পূরণ হলে কে, কতটা উপকৃত হবে?], [A short justification],
    [13], [#strong[Verify through additional search.] Apply the verification methods below.], [নিচের যাচাই পদ্ধতিগুলো দিয়ে আবার সার্চ করুন।], [A verified gap, with evidence],
    [14], [#strong[Convert it into a research question.] (Chapter 16)], [গ্যাপটিকে রিসার্চ প্রশ্নে রূপ দিন।], [A testable research question],
  )]
  , kind: table
  )

== Finding the Important Papers
<finding-the-important-papers>
#bnsub(2)[গুরুত্বপূর্ণ পেপার খুঁজে বের করা]
Keshav describes a practical procedure for surveying a new area #cite(<ref19>):

+ Use an academic search engine with well-chosen keywords to find #strong[three to five recent, highly cited papers].
+ Do a first pass on each, then read their related-work sections. This gives a summary of recent work and may point you to a survey.
+ Look for #strong[citations and author names that appear repeatedly] across those bibliographies. These are the key papers and researchers.
+ Check where the key researchers have published recently. This identifies the #strong[top venues] in the area.
+ Browse those venues' recent proceedings for relevant new work.

Webster and Watson add two directions of search around your key papers #cite(<ref23>): go #strong[backward] by reading the papers they cite, and go #strong[forward] by finding the newer papers that cite them.

#bn[নতুন কোনো ক্ষেত্রে survey করার জন্য Keshav একটি ব্যবহারিক পদ্ধতি দেন: (১) ভালোভাবে বাছাই করা keyword দিয়ে academic search engine-এ #strong[৩--৫টি সাম্প্রতিক, বেশি-সাইটেড পেপার] খুঁজুন; (২) প্রতিটির প্রথম পাস করুন, তারপর তাদের related work পড়ুন --- এতে সাম্প্রতিক কাজের সারাংশ এবং হয়তো একটি survey-এর খোঁজ পাবেন; (৩) এসব reference তালিকায় #strong[বারবার আসা সাইটেশন ও লেখকের নাম] খুঁজুন --- এরাই মূল পেপার ও গবেষক; (৪) মূল গবেষকরা সম্প্রতি কোথায় প্রকাশ করেছেন দেখুন --- এতে #strong[শীর্ষ ভেন্যু] চেনা যাবে; (৫) সেসব ভেন্যুর সাম্প্রতিক proceedings দেখুন। Webster ও Watson আরও দুই দিকে খোঁজার পরামর্শ দেন: #strong[পেছনের দিকে] (মূল পেপারগুলো যাদের সাইট করেছে) এবং #strong[সামনের দিকে] (পরবর্তী যেসব পেপার মূল পেপারগুলোকে সাইট করেছে)।]

== Why Does the Gap Exist?
<why-does-the-gap-exist>
#bnsub(2)[গ্যাপটি কেন আছে?]
It helps to say not only #emph[what] is missing but #emph[why]. Robinson and colleagues, working on systematic reviews, classify the reasons a gap exists as insufficient or imprecise information, biased information, inconsistent results, or simply not the right information #cite(<ref21>). Naming the reason tells you what kind of evidence will convince a reviewer --- and what kind of study would close the gap.

#bn[গ্যাপে #emph[কী] অনুপস্থিত, শুধু তা নয় --- #emph[কেন] অনুপস্থিত, তাও বলা কাজে লাগে। Systematic review নিয়ে কাজ করা Robinson ও সহকর্মীরা গ্যাপের কারণগুলোকে ভাগ করেছেন: অপর্যাপ্ত বা অস্পষ্ট তথ্য, পক্ষপাতদুষ্ট তথ্য, পরস্পরবিরোধী ফলাফল, অথবা প্রয়োজনীয় তথ্যটিই না থাকা #cite(<ref21>)। কারণটির নাম দিলে বোঝা যায় কোন ধরনের প্রমাণ reviewer-কে সন্তুষ্ট করবে, এবং কোন ধরনের গবেষণা গ্যাপটি পূরণ করবে।]

#figure(
  align(center)[#table(
    columns: (18.37%, 34.7%, 31.25%, 15.68%),
    align: (left,left,left,left,),
    table.header([Reason], [ML example], [Evidence that shows it], [বাংলা],),
    table.hline(),
    [#strong[Insufficient or imprecise information]], [Only two small studies on a task, with wide variance], [Few papers; small samples; large spread in results], [অপর্যাপ্ত বা অস্পষ্ট তথ্য],
    [#strong[Biased information]], [All results come from leaky splits or untuned baselines], [Methodological flaws shared across papers], [পক্ষপাতদুষ্ট তথ্য],
    [#strong[Inconsistent results]], [Papers disagree on whether method A beats method B], [Contradictory rows in your matrix], [পরস্পরবিরোধী ফলাফল],
    [#strong[Not the right information]], [Every paper reports accuracy, but deployment needs recall], [A mismatch between what is measured and what matters], [প্রয়োজনীয় তথ্যটিই নেই],
  )]
  , kind: table
  )

== Verifying the Gap
<verifying-the-gap>
#bnsub(2)[গ্যাপ যাচাই করা]
Before you build on a gap, try hard to prove that it is #emph[not] a gap. If you cannot, you can be confident in it.

#bn[গ্যাপের ওপর কাজ শুরু করার আগে জোর দিয়ে চেষ্টা করুন প্রমাণ করতে যে এটি গ্যাপ #emph[নয়]। যদি না পারেন, তবেই আপনি এর ওপর আস্থা রাখতে পারেন।]

#figure(
  align(center)[#table(
    columns: (15.97%, 47.65%, 36.38%),
    align: (left,left,left,),
    table.header([Method], [How to apply it], [বাংলা],),
    table.hline(),
    [#strong[Literature search]], [Search at least two academic databases, not one], [অন্তত দুটি academic database-এ সার্চ করুন],
    [#strong[Survey papers]], [Check whether recent surveys list it as open --- or as solved], [সাম্প্রতিক survey-তে এটি open নাকি solved হিসেবে আছে দেখুন],
    [#strong[Systematic reviews]], [Their documented search strategies show what has been covered #cite(<ref24>) #cite(<ref25>)], [এদের নথিভুক্ত সার্চ কৌশল দেখায় কী কী আগে খোঁজা হয়েছে],
    [#strong[Recent papers]], [Search the last 12--24 months, including preprints], [গত ১২--২৪ মাসের পেপার, preprint-সহ, সার্চ করুন],
    [#strong[Citation chains]], [Follow citations backward and forward from the key papers #cite(<ref23>)], [মূল পেপার থেকে পেছনে ও সামনে citation অনুসরণ করুন],
    [#strong[Different keywords]], [Synonyms: "weight decay" vs "L2 regularization"\; "concept drift" vs "dataset shift"], [প্রতিশব্দ দিয়ে সার্চ করুন],
    [#strong[Different terminology]], [Neighbouring fields name the same idea differently (statistics, signal processing, operations research)], [পাশের ক্ষেত্রে একই ধারণার ভিন্ন নাম থাকতে পারে],
    [#strong[Different datasets]], [Has the question been studied on a related dataset or domain?], [সম্পর্কিত ডেটাসেট বা domain-এ প্রশ্নটি পরীক্ষিত কিনা],
    [#strong[Different methodologies]], [Has a different method family already addressed it?], [ভিন্ন ধরনের পদ্ধতি দিয়ে এটি আগেই সমাধান হয়েছে কিনা],
  )]
  , kind: table
  )

=== Common false gaps · সাধারণ ভুয়া গ্যাপ
<common-false-gaps-সধরণ-ভয-গযপ>
- #strong[Vocabulary mismatch.] The work exists under another name. · কাজটি অন্য নামে আগেই আছে।
- #strong[A neighbouring field solved it.] The method is standard elsewhere. · পাশের ক্ষেত্রে এটি ইতিমধ্যেই প্রমিত পদ্ধতি।
- #strong[It is very recent.] A preprint or this year's proceedings already covers it. · সাম্প্রতিক preprint বা এ বছরের proceedings-এ আগেই আছে।
- #strong[It is trivial.] Combining two off-the-shelf tools closes it with no new insight. · দুটি প্রচলিত টুল জোড়া দিলেই সমাধান, নতুন কোনো insight নেই।
- #strong[It is too narrow to matter.] Nobody would act differently if it were filled. · এত সংকীর্ণ যে পূরণ হলেও কারও কিছু বদলাবে না।
- #strong[It is infeasible.] The data or compute needed is out of reach. · প্রয়োজনীয় ডেটা বা compute নাগালের বাইরে।

== Writing the Gap Statement
<writing-the-gap-statement>
#bnsub(2)[গ্যাপ স্টেটমেন্ট লেখা]
A good gap statement names the existing work, the specific limitation, the evidence, and the consequence:

#quote(block: true)[
#emph[Although] \[existing work\] #emph[has achieved] \[what it achieved\], \[specific limitation\] #emph[remains, as shown by] \[evidence: several papers or a survey\]. #emph[This matters because] \[consequence\]. #emph[We therefore investigate] \[direction\].
]

#strong[Example (hypothetical).] #emph[Although transformer models achieve strong results on English hate-speech benchmarks, Bangla studies rely on small private datasets and rarely evaluate code-mixed text, as the papers in our literature matrix show. This matters because code-mixed posts are common on Bangla social media. We therefore investigate whether a public, code-mixed corpus improves macro-F1 on held-out platforms.]

#bn[একটি ভালো গ্যাপ স্টেটমেন্টে থাকে: বিদ্যমান কাজ, নির্দিষ্ট সীমাবদ্ধতা, প্রমাণ এবং পরিণতি। উপরের ছাঁচটি ব্যবহার করুন: "যদিও \[বিদ্যমান কাজ\] \[এটি\] অর্জন করেছে, \[নির্দিষ্ট সীমাবদ্ধতা\] এখনো রয়ে গেছে, যা \[প্রমাণ\] দেখায়। এটি গুরুত্বপূর্ণ কারণ \[পরিণতি\]। তাই আমরা \[দিক\] অনুসন্ধান করি।" উদাহরণটি কাল্পনিক।]

== The Research Gap Checklist
<the-research-gap-checklist>
#bnsub(2)[রিসার্চ গ্যাপ চেকলিস্ট]
Tick every box before you claim a gap --- and certainly before you invest months in it.

#bn[গ্যাপ দাবি করার আগে --- এবং অবশ্যই এর পেছনে মাসের পর মাস বিনিয়োগ করার আগে --- প্রতিটি বক্সে টিক দিন।]

#checklist[
- #cbox() #strong[I understand the problem.] I can state it precisely in technical and practical terms. · আমি সমস্যাটি সুনির্দিষ্টভাবে ব্যাখ্যা করতে পারি।
- #cbox() #strong[I reviewed important previous work.] I found the key papers through repeated citations. · বারবার সাইট হওয়া মূল পেপারগুলো পড়েছি।
- #cbox() #strong[I checked recent research.] I searched the last 12--24 months, including preprints. · গত ১২--২৪ মাসের গবেষণা, preprint-সহ, দেখেছি।
- #cbox() #strong[I read relevant survey or review papers.] I checked whether the gap is already listed as open or solved. · Survey-তে গ্যাপটি open নাকি solved, দেখেছি।
- #cbox() #strong[I compared multiple papers.] My literature matrix has enough rows to show a pattern. · Matrix-এ প্যাটার্ন দেখানোর মতো যথেষ্ট পেপার আছে।
- #cbox() #strong[I understand existing methods.] I know which approaches dominate and why. · কোন পদ্ধতি প্রাধান্য পায় এবং কেন, জানি।
- #cbox() #strong[I understand the limitations.] I have categorised them by gap type (Chapter 13). · সীমাবদ্ধতাগুলো গ্যাপ-ধরন অনুযায়ী সাজিয়েছি।
- #cbox() #strong[I checked datasets.] No existing public dataset already resolves this. · কোনো পাবলিক ডেটাসেট এটি আগেই সমাধান করেনি।
- #cbox() #strong[I checked evaluation methods.] The gap is not an artefact of one poorly chosen metric. · গ্যাপটি কোনো একটি ভুল মেট্রিকের ফল নয়।
- #cbox() #strong[I checked the current state of the art.] The newest methods still leave it open. · সর্বশেষ পদ্ধতিগুলোও এটি সমাধান করেনি।
- #cbox() #strong[The gap is meaningful.] Filling it would change something for someone. · গ্যাপ পূরণ হলে কারও জন্য কিছু বদলাবে।
- #cbox() #strong[The gap is supported by evidence.] I can cite several papers, or a survey, that show it. · কয়েকটি পেপার বা একটি survey দিয়ে এটি দেখাতে পারি।
- #cbox() #strong[The gap is not caused by lack of searching.] I tried synonyms, neighbouring fields and citation chains. · প্রতিশব্দ, পাশের ক্ষেত্র ও citation chain দিয়ে খুঁজেছি।
- #cbox() #strong[I can formulate a research question.] It meets the criteria in Chapter 16. · Chapter 16-এর মানদণ্ড মেনে রিসার্চ প্রশ্ন লিখতে পারি।
- #cbox() #strong[The question can be tested experimentally.] I have, or can get, the data and compute. · প্রয়োজনীয় ডেটা ও compute আছে বা পাওয়া সম্ভব।
- #cbox() #strong[I can explain the expected contribution.] I know which novelty type it would be (Chapter 17). · প্রত্যাশিত অবদান এবং তার নতুনত্বের ধরন ব্যাখ্যা করতে পারি।

]
#recap[
- A gap must be both real (not just missing from your search) and meaningful (worth filling).

  #bni[গ্যাপ হতে হবে আসল (শুধু আপনার সার্চে অনুপস্থিত নয়) এবং অর্থপূর্ণ (পূরণ করার যোগ্য)।]

- Find the field's key papers through repeated citations, then search backward and forward along citation chains.

  #bni[বারবার আসা সাইটেশন দিয়ে মূল পেপার খুঁজুন, তারপর citation chain ধরে পেছনে ও সামনে খুঁজুন।]

- Try hard to disprove your gap --- synonyms, neighbouring fields, recent preprints --- before you build on it.

  #bni[গ্যাপের ওপর কাজ শুরুর আগে প্রতিশব্দ, পাশের ক্ষেত্র ও সাম্প্রতিক preprint দিয়ে একে ভুল প্রমাণের চেষ্টা করুন।]

]
