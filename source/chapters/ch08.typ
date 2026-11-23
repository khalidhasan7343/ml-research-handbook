#import "../template.typ": *

= How to Read a Research Paper
<how-to-read-a-research-paper>
#bnsub(1)[গবেষণাপত্র পড়ার তিন-ধাপ পদ্ধতি]
Most researchers read far more papers than they could ever study in depth. The skill is not reading faster; it is deciding #emph[how deeply] each paper deserves to be read. Keshav's three-pass method #cite(<ref19>) gives you that decision structure: each pass goes deeper than the last, and after each one you decide whether the paper deserves the next. This chapter adds what you need for ML papers in particular: what to extract from the abstract, how to trace the logic of an introduction, and how to read results tables without being fooled.

#bn[বেশিরভাগ গবেষককে যত পেপার পড়তে হয়, তার সবগুলো গভীরভাবে পড়া সম্ভব নয়। তাই আসল দক্ষতা দ্রুত পড়া নয় --- বরং কোন পেপার #emph[কতটা গভীরভাবে] পড়ার যোগ্য তা ঠিক করা। Keshav-এর three-pass method #cite(<ref19>) এই সিদ্ধান্তের একটি কাঠামো দেয়: প্রতিটি pass আগেরটির চেয়ে গভীরে যায়, এবং প্রতিটির শেষে আপনি ঠিক করেন পরের pass-এ যাবেন কিনা। এই chapter-এ ML পেপারের জন্য বাড়তি যা দরকার তাও যোগ করা হয়েছে: abstract থেকে কী বের করবেন, introduction-এর যুক্তি কীভাবে অনুসরণ করবেন, এবং results table পড়ার সময় কীভাবে বিভ্রান্তি এড়াবেন।]

#threepass-diagram()
== The First Pass: A Bird's-Eye View
<the-first-pass-a-birds-eye-view>
#bnsub(2)[প্রথম পাস: এক নজরে পুরো পেপার]
#strong[Time:] about 5--10 minutes #cite(<ref19>). For a dense ML paper, allow up to 15.

#strong[Read only these, in order:]

+ the title, abstract and introduction;
+ the section and sub-section headings (ignore their content);
+ the conclusion;
+ the reference list, noting which papers you have already read.

#bn[প্রথম পাসে সময় লাগে প্রায় ৫--১০ মিনিট (ঘন ML পেপারে ১৫ মিনিট পর্যন্ত)। শুধু title, abstract ও introduction পড়ুন; তারপর section ও sub-section-এর শিরোনাম দেখুন (ভেতরের লেখা নয়); conclusion পড়ুন; এবং reference তালিকায় চোখ বুলিয়ে দেখুন কোন পেপারগুলো আগেই পড়েছেন।]

At the end of the first pass you should be able to answer Keshav's #strong[five Cs] #cite(<ref19>):

#figure(
  align(center)[#table(
    columns: (15.96%, 43.02%, 41.02%),
    align: (left,left,left,),
    table.header([C], [Question], [বাংলা],),
    table.hline(),
    [#strong[Category]], [What kind of paper is it --- a new method, an analysis of an existing system, a new dataset, a benchmark study, a survey?], [এটি কোন ধরনের পেপার --- নতুন পদ্ধতি, বিদ্যমান সিস্টেমের বিশ্লেষণ, নতুন ডেটাসেট, benchmark study, নাকি survey?],
    [#strong[Context]], [Which other papers is it related to, and which theoretical basis does it build on?], [এটি কোন কোন পেপারের সাথে সম্পর্কিত, এবং কোন তাত্ত্বিক ভিত্তির ওপর দাঁড়িয়ে?],
    [#strong[Correctness]], [Do the assumptions appear to be valid?], [এর অনুমানগুলো (assumptions) কি গ্রহণযোগ্য মনে হচ্ছে?],
    [#strong[Contributions]], [What are the paper's main contributions?], [পেপারের প্রধান অবদান কী কী?],
    [#strong[Clarity]], [Is the paper well written?], [পেপারটি কি পরিষ্কারভাবে লেখা?],
  )]
  , kind: table
  )

For an ML paper, also write down six facts in one line each. If you cannot find one of them after the first pass, that absence is itself worth noting.

#bn[ML পেপারের ক্ষেত্রে আরও ছয়টি তথ্য এক লাইনে করে লিখে ফেলুন। প্রথম পাসের পরও যদি এর কোনোটি খুঁজে না পান, সেই অনুপস্থিতিটিও নোট করার মতো বিষয়।]

#figure(
  align(center)[#table(
    columns: (18.94%, 39.99%, 41.07%),
    align: (left,left,left,),
    table.header([Extract], [Where it usually is], [বাংলা],),
    table.hline(),
    [#strong[Problem]], [First paragraph of the abstract and introduction], [সমস্যা --- abstract ও introduction-এর প্রথম অনুচ্ছেদ],
    [#strong[Motivation]], [Introduction: "This matters because…"], [কেন গুরুত্বপূর্ণ --- introduction],
    [#strong[Method]], [Abstract, contribution list, Figure 1], [পদ্ধতি --- abstract, contribution তালিকা, Figure 1],
    [#strong[Dataset]], [Abstract or the experiments heading], [ডেটাসেট --- abstract বা experiments অংশের শিরোনাম],
    [#strong[Main result]], [Abstract: the headline number], [প্রধান ফলাফল --- abstract-এর মূল সংখ্যা],
    [#strong[Contribution]], [The bulleted list at the end of the introduction], [অবদান --- introduction-এর শেষের bullet তালিকা],
  )]
  , kind: table
  )

#strong[Decide.] Most papers you meet only deserve a first pass. Stop here if the paper is outside your topic, if its assumptions look wrong, or if you simply needed to know that it exists. Otherwise continue.

#bn[#strong[সিদ্ধান্ত নিন।] বেশিরভাগ পেপার শুধু প্রথম পাসেরই যোগ্য। পেপারটি আপনার বিষয়ের বাইরে হলে, এর অনুমান ভুল মনে হলে, বা শুধু এর অস্তিত্ব জানাই যথেষ্ট হলে এখানেই থামুন। নইলে দ্বিতীয় পাসে যান।]

== The Second Pass: Grasp the Content
<the-second-pass-grasp-the-content>
#bnsub(2)[দ্বিতীয় পাস: বিষয়বস্তু আয়ত্ত করা]
#strong[Time:] up to about an hour #cite(<ref19>).

Read the whole paper with care, but skip details such as proofs. Write the key points in the margin as you go. Look especially carefully at the figures, diagrams and tables: are the axes labelled properly, and are results shown with error bars so that you can tell whether a difference is meaningful? Mark the references you have not read but will need #cite(<ref19>).

#bn[দ্বিতীয় পাসে প্রায় এক ঘণ্টা পর্যন্ত সময় দিন। পুরো পেপারটি মনোযোগ দিয়ে পড়ুন, তবে প্রমাণ (proof)-এর মতো খুঁটিনাটি বাদ দিন। পড়তে পড়তে মার্জিনে মূল কথাগুলো লিখে রাখুন। চিত্র, ডায়াগ্রাম ও টেবিল বিশেষভাবে খেয়াল করুন: axis-এর লেবেল ঠিক আছে কি, এবং ফলাফল error bar-সহ দেখানো হয়েছে কি, যাতে বোঝা যায় পার্থক্যটি অর্থপূর্ণ কিনা? যেসব reference পড়েননি কিন্তু দরকার হবে, সেগুলো চিহ্নিত করে রাখুন।]

For an ML paper, the second pass is where you analyse the experimental core. Answer each question in a sentence or two:

#figure(
  align(center)[#table(
    columns: (13.07%, 45.52%, 41.41%),
    align: (left,left,left,),
    table.header([Analyse], [Ask], [বাংলা],),
    table.hline(),
    [#strong[Methodology]], [Can I draw the pipeline from input to output? Is every component explained, or only named?], [Input থেকে output পর্যন্ত pipeline কি আঁকতে পারি? প্রতিটি অংশ কি ব্যাখ্যা করা, নাকি শুধু নাম দেওয়া?],
    [#strong[Dataset]], [Source, size, class balance, split method --- and could anything leak from test to train? (Chapter 3)], [উৎস, আকার, class balance, split পদ্ধতি --- test থেকে train-এ কিছু leak হতে পারে কি?],
    [#strong[Baselines]], [Are the baselines recent, strong and tuned with the same effort as the proposed model?], [বেসলাইনগুলো কি সাম্প্রতিক, শক্তিশালী, এবং প্রস্তাবিত মডেলের মতো একই যত্নে tune করা?],
    [#strong[Metrics]], [Do the metrics fit the task and the class balance? (Chapter 5)], [মেট্রিকগুলো কি টাস্ক ও class balance-এর সাথে মানানসই?],
    [#strong[Experimental design]], [Multiple seeds or folds? Mean ± std? A significance test? (Chapter 6)], [একাধিক seed বা fold? Mean ± std? Significance test আছে কি?],
    [#strong[Results]], [Is the improvement larger than the run-to-run noise?], [উন্নতিটি কি run-to-run noise-এর চেয়ে বড়?],
    [#strong[Limitations]], [Are the stated limitations specific, or generic boilerplate?], [ঘোষিত limitation কি নির্দিষ্ট, নাকি গৎবাঁধা?],
  )]
  , kind: table
  )

After the second pass you should be able to summarise the paper's main argument, with its supporting evidence, to someone else. If you still cannot follow it, Keshav notes three options: set the paper aside, come back after reading background material, or persist with the third pass #cite(<ref19>).

#bn[দ্বিতীয় পাসের পর আপনি পেপারের মূল যুক্তি ও তার পক্ষের প্রমাণ অন্য কাউকে সংক্ষেপে বোঝাতে পারার কথা। তবুও না বুঝলে Keshav তিনটি পথ বলেন: পেপারটি আপাতত সরিয়ে রাখা, প্রয়োজনীয় background পড়ে পরে ফিরে আসা, অথবা ধৈর্য ধরে তৃতীয় পাসে যাওয়া।]

== The Third Pass: Virtually Re-implement the Paper
<the-third-pass-virtually-re-implement-the-paper>
#bnsub(2)[তৃতীয় পাস: মনে মনে পেপারটি পুনর্নির্মাণ]
#strong[Time:] Keshav estimates four to five hours for a beginner and about an hour for an experienced reader #cite(<ref19>).

The key to the third pass is to #emph[re-create the work]: make the same assumptions as the authors and rebuild their argument yourself. Then compare your version with theirs. The differences reveal both the paper's real innovations and its hidden failings and assumptions. By the end you should be able to reconstruct the paper's structure from memory and name its strong and weak points --- including implicit assumptions, missing citations and possible problems with the experimental or analytical techniques #cite(<ref19>).

#bn[তৃতীয় পাসের মূল কথা হলো কাজটি #emph[নিজে পুনর্নির্মাণ করা]: লেখকদের মতো একই অনুমান ধরে নিয়ে তাদের যুক্তি নিজে আবার গড়ে তোলা। তারপর আপনার সংস্করণের সাথে তাদেরটির তুলনা করুন। পার্থক্যগুলোই দেখিয়ে দেয় পেপারের আসল উদ্ভাবন কোথায়, আর লুকানো দুর্বলতা ও অনুমান কোথায়। শেষে আপনি স্মৃতি থেকেই পেপারের গঠন আবার সাজাতে পারবেন এবং এর শক্তি ও দুর্বলতা --- অপ্রকাশিত অনুমান, বাদ পড়া সাইটেশন, experiment বা বিশ্লেষণ পদ্ধতির সম্ভাব্য সমস্যা --- চিহ্নিত করতে পারবেন।]

For an ML paper, "re-implementing" means checking whether you could actually rebuild the experiment:

#figure(
  align(center)[#table(
    columns: (15.65%, 44.76%, 39.6%),
    align: (left,left,left,),
    table.header([Investigate], [What to check], [বাংলা],),
    table.hline(),
    [#strong[Mathematical details]], [Does every symbol have a definition? Do the dimensions of each equation match?], [প্রতিটি symbol-এর সংজ্ঞা আছে কি? সমীকরণের dimension মিলছে কি?],
    [#strong[Algorithm]], [Could you write the pseudocode from the text alone?], [শুধু লেখা পড়ে কি pseudocode লিখতে পারবেন?],
    [#strong[Architecture]], [Layer sizes, connections, activations, normalisation --- all stated?], [Layer size, connection, activation, normalisation --- সব উল্লেখ আছে কি?],
    [#strong[Hyperparameters]], [Learning rate, batch size, epochs, optimiser, schedule --- and how were they chosen?], [Learning rate, batch size, epoch, optimiser --- এবং এগুলো কীভাবে বাছাই করা হলো?],
    [#strong[Ablation]], [Is every new component's contribution shown separately? (Section 6.2)], [প্রতিটি নতুন অংশের অবদান কি আলাদাভাবে দেখানো হয়েছে?],
    [#strong[Statistical significance]], [Is the gain tested, or just reported? (Section 6.7, Section 19.7)], [উন্নতিটি কি পরীক্ষা করা হয়েছে, নাকি শুধু রিপোর্ট করা?],
    [#strong[Reproducibility]], [Code, data, seeds, environment? (Chapter 12)], [কোড, ডেটা, seed, environment আছে কি?],
    [#strong[Hidden assumptions]], [What must be true for the result to hold --- same data distribution at deployment? clean labels? unlimited compute?], [ফলাফল সত্য হতে হলে কী সত্য থাকতে হবে --- deployment-এ একই data distribution? পরিষ্কার label? সীমাহীন compute?],
  )]
  , kind: table
  )

The third pass is expensive, so reserve it for papers you will build on, reproduce, review, or cite as central evidence for your own research gap.

#bn[তৃতীয় পাস সময়সাপেক্ষ, তাই এটি রাখুন সেইসব পেপারের জন্য যেগুলোর ওপর আপনি কাজ করবেন, যেগুলো reproduce বা review করবেন, অথবা যেগুলোকে নিজের রিসার্চ গ্যাপের মূল প্রমাণ হিসেবে সাইট করবেন।]

== Abstract Analysis
<abstract-analysis>
#bnsub(2)[অ্যাবস্ট্রাক্ট বিশ্লেষণ]
An abstract is the whole paper compressed into 150--250 words. A well-written one answers nine questions in miniature. Fill this template for every paper you first-pass; a field you cannot fill is a signal to look for in the full text.

#bn[Abstract হলো পুরো পেপারের ১৫০--২৫০ শব্দের সংক্ষিপ্ত রূপ। ভালো abstract নয়টি প্রশ্নের ছোট উত্তর দেয়। প্রথম পাস করা প্রতিটি পেপারের জন্য এই টেমপ্লেট পূরণ করুন; যে ঘর পূরণ করতে পারবেন না, সেটি পুরো লেখায় খুঁজে দেখার সংকেত।]

#figure(
  align(center)[#table(
    columns: (20.76%, 40.99%, 38.26%),
    align: (left,left,left,),
    table.header([Field], [Question to answer], [বাংলা],),
    table.hline(),
    [#strong[Problem]], [What challenge is addressed?], [কোন সমস্যা সমাধান করা হচ্ছে?],
    [#strong[Motivation]], [Why does solving it matter?], [এটি সমাধান করা কেন জরুরি?],
    [#strong[Research gap]], [What is missing or weak in existing work?], [বিদ্যমান কাজে কী অনুপস্থিত বা দুর্বল?],
    [#strong[Objective]], [What exactly does this study aim to do?], [এই গবেষণার সুনির্দিষ্ট লক্ষ্য কী?],
    [#strong[Method]], [What approach or architecture is introduced?], [কোন পদ্ধতি বা আর্কিটেকচার প্রস্তাব করা হয়েছে?],
    [#strong[Dataset]], [Which data was used?], [কোন ডেটা ব্যবহার করা হয়েছে?],
    [#strong[Main result]], [What is the headline number, compared with what?], [মূল সংখ্যাটি কী, এবং কিসের তুলনায়?],
    [#strong[Contribution]], [What is new --- scientifically or practically?], [বৈজ্ঞানিক বা ব্যবহারিকভাবে নতুন কী?],
    [#strong[Limitation]], [Is any weakness declared?], [কোনো দুর্বলতা স্বীকার করা হয়েছে কি?],
  )]
  , kind: table
  )

=== Practice: an illustrative abstract · অনুশীলন
<practice-an-illustrative-abstract-অনশলন>
The abstract below is #strong[invented for practice]. It does not describe a real paper.

#bn[নিচের abstract-টি #strong[শুধু অনুশীলনের জন্য বানানো] --- এটি কোনো বাস্তব পেপার নয়।]

#quote(block: true)[
#emph[Detecting hate speech in Bangla social-media text remains difficult because existing models are trained on small, private datasets and rarely handle code-mixed Bangla--English posts. We introduce a public corpus of 40,000 annotated posts and fine-tune a multilingual transformer with a code-mixing-aware tokenizer. On a held-out test set, our model reaches a macro-F1 of 0.81, compared with 0.74 for the strongest baseline. All data and code are released. Our corpus covers only two platforms, and annotations reflect the judgments of six annotators.]
]

#figure(
  align(center)[#table(
    columns: (27.99%, 72.01%),
    align: (left,left,),
    table.header([Field], [Extracted],),
    table.hline(),
    [Problem], [Bangla hate-speech detection],
    [Motivation], [Implied (harmful content); not stated explicitly --- note this],
    [Research gap], [Small private datasets; code-mixed text not handled (dataset gap + methodological gap)],
    [Objective], [Build a public corpus and a code-mixing-aware model],
    [Method], [Multilingual transformer, fine-tuned, with a code-mixing-aware tokenizer],
    [Dataset], [New corpus, 40,000 posts],
    [Main result], [Macro-F1 0.81 vs 0.74 for the strongest baseline],
    [Contribution], [New dataset + adapted method + released code],
    [Limitation], [Two platforms only; six annotators],
  )]
  , kind: table
  )

#strong[What the template exposes.] The abstract gives one number with no spread across runs, so the 0.07 gain cannot yet be judged against noise (second pass: look for mean ± std). "Strongest baseline" is unnamed (look for it in the results table). The limitation sentence is specific --- a good sign.

#bn[#strong[টেমপ্লেট কী ধরিয়ে দিল।] Abstract-এ একটিমাত্র সংখ্যা আছে, একাধিক run-এর বিস্তার নেই --- তাই ০.০৭-এর উন্নতি noise-এর চেয়ে বড় কিনা এখনো বলা যায় না (দ্বিতীয় পাসে mean ± std খুঁজুন)। "Strongest baseline"-এর নাম নেই (results table-এ খুঁজুন)। Limitation বাক্যটি নির্দিষ্ট --- এটি ভালো লক্ষণ।]

== Introduction Analysis
<introduction-analysis>
#bnsub(2)[ইন্ট্রোডাকশন বিশ্লেষণ]
Introductions are built like an inverted funnel: they start broad and narrow down, step by step, to the paper's own contribution. Once you can see the funnel, you can read an introduction in minutes and find the exact sentence where the authors claim their gap.

#bn[Introduction সাধারণত উল্টানো ফানেলের মতো গঠিত: বিস্তৃত বিষয় থেকে শুরু করে ধাপে ধাপে সংকুচিত হয়ে পেপারের নিজস্ব অবদানে পৌঁছায়। এই ফানেলটি চিনতে পারলে কয়েক মিনিটেই introduction পড়ে ফেলতে পারবেন, এবং লেখকরা ঠিক কোন বাক্যে তাদের গ্যাপ দাবি করেছেন তা খুঁজে পাবেন।]

#funnel-diagram()
#figure(
  align(center)[#table(
    columns: (17.62%, 28.74%, 30.59%, 23.06%),
    align: (left,left,left,left,),
    table.header([Stage], [What the authors are doing], [Typical signal phrases], [বাংলা],),
    table.hline(),
    [#strong[General problem]], [Establish that the area matters], ["X is a fundamental task in…"], [ক্ষেত্রটির গুরুত্ব প্রতিষ্ঠা],
    [#strong[Existing situation]], [Describe the current state of practice], ["Recently, … has become widely used"], [বর্তমান অবস্থার বর্ণনা],
    [#strong[Existing methods]], [Summarise prior approaches], ["Prior work has addressed this by…"], [পূর্ববর্তী পদ্ধতির সারাংশ],
    [#strong[Limitations]], [Show where those approaches fall short], ["However, these methods…"], [সেই পদ্ধতিগুলোর ঘাটতি দেখানো],
    [#strong[Research gap]], [State what is missing across the field], ["To the best of our knowledge, no…" / "remains unexplored"], [পুরো ক্ষেত্রে কী অনুপস্থিত তা বলা],
    [#strong[Motivation]], [Explain why closing the gap matters], ["This is critical because…"], [গ্যাপ পূরণ কেন জরুরি],
    [#strong[Proposed approach]], [Introduce their idea], ["In this paper, we propose…"], [নিজেদের ধারণা উপস্থাপন],
    [#strong[Objective]], [State the precise aim], ["Our goal is to…"], [সুনির্দিষ্ট লক্ষ্য],
    [#strong[Contributions]], [List what is new], ["Our contributions are threefold:"], [নতুন কী কী, তার তালিকা],
  )]
  , kind: table
  )

#strong[How to use it.] Label each paragraph of the introduction with one stage. Three things to check:

+ #strong[Is the gap supported?] A sentence such as "to the best of our knowledge, no prior work…" is a claim, not evidence. Check whether it is backed by citations or a survey (Chapter 15).
+ #strong[Does the limitation match the method?] The proposed approach should answer the limitation the authors named --- not a different one.
+ #strong[Is every listed contribution tested later?] Each bullet in the contribution list should have a matching experiment or result. A contribution without an experiment is a claim you cannot accept yet.

#bn[#strong[কীভাবে ব্যবহার করবেন।] Introduction-এর প্রতিটি অনুচ্ছেদকে একটি stage দিয়ে লেবেল করুন, তারপর তিনটি জিনিস দেখুন: (১) গ্যাপ দাবিটি কি প্রমাণসহ? "আমাদের জানামতে আগে কেউ করেনি" একটি দাবি, প্রমাণ নয় --- এর পেছনে সাইটেশন বা survey আছে কিনা দেখুন। (২) প্রস্তাবিত পদ্ধতি কি ঠিক সেই limitation-টিরই উত্তর দেয় যা লেখকরা উল্লেখ করেছেন? (৩) প্রতিটি ঘোষিত contribution-এর জন্য কি পরে একটি experiment বা ফলাফল আছে? Experiment ছাড়া contribution এখনো গ্রহণযোগ্য দাবি নয়।]

== Reading Figures and Results Tables
<reading-figures-and-results-tables>
#bnsub(2)[চিত্র ও ফলাফলের টেবিল পড়া]
The results table is where most papers make their case, and where most misreadings happen. Before you accept a bold number, run through these checks.

#bn[বেশিরভাগ পেপার তাদের মূল যুক্তি দাঁড় করায় results table-এ, আর ভুল বোঝাও সবচেয়ে বেশি হয় এখানেই। Bold করা সংখ্যাটি মেনে নেওয়ার আগে নিচের বিষয়গুলো যাচাই করুন।]

#figure(
  align(center)[#table(
    columns: (13.96%, 45.63%, 40.41%),
    align: (left,left,left,),
    table.header([Check], [Why it matters], [বাংলা],),
    table.hline(),
    [#strong[Which split?]], [Numbers on the validation set are optimistic if hyperparameters were tuned on it], [Validation set-এ tune করা হলে সেখানের সংখ্যা অতিরিক্ত আশাবাদী],
    [#strong[Mean ± std, or one run?]], [A gain smaller than the spread across seeds may be noise], [Seed-এর বিস্তারের চেয়ে ছোট উন্নতি নিছক noise হতে পারে],
    [#strong[Re-run or copied baselines?]], [Baseline numbers copied from other papers may use different splits or preprocessing], [অন্য পেপার থেকে কপি করা baseline ভিন্ন split বা preprocessing-এ হতে পারে],
    [#strong[Same budget?]], [A tuned proposed model against untuned baselines is not a fair race], [Tune করা মডেলের সাথে untuned baseline-এর তুলনা ন্যায্য নয়],
    [#strong[Right metric for the data?]], [Accuracy on imbalanced data hides minority-class failure (Chapter 5)], [Imbalanced ডেটায় accuracy minority class-এর ব্যর্থতা লুকায়],
    [#strong[Axis ranges]], [A y-axis that does not start at zero can make a 1-point gain look large], [শূন্য থেকে শুরু না হওয়া y-axis ১ পয়েন্টের উন্নতিকেও বড় দেখায়],
    [#strong[Missing rows]], [A strong recent method absent from the table is a question to ask], [টেবিলে সাম্প্রতিক শক্তিশালী পদ্ধতি না থাকলে প্রশ্ন তুলুন],
    [#strong[Cost columns]], [Better accuracy at ten times the compute may not be progress], [দশগুণ compute খরচে সামান্য ভালো accuracy সবসময় অগ্রগতি নয়],
  )]
  , kind: table
  )

#recap[
- The first pass (5--10 minutes) decides whether a paper deserves more time; answer the five Cs and extract problem, method, dataset, result and contribution.

  #bni[প্রথম পাস (৫--১০ মিনিট) ঠিক করে পেপারটি আরও সময়ের যোগ্য কিনা; five Cs-এর উত্তর দিন এবং সমস্যা, পদ্ধতি, ডেটাসেট, ফলাফল ও অবদান বের করুন।]

- The second pass (up to an hour) analyses the experimental core: dataset, baselines, metrics, design, results and limitations.

  #bni[দ্বিতীয় পাস (এক ঘণ্টা পর্যন্ত) experiment-এর মূল অংশ বিশ্লেষণ করে: ডেটাসেট, বেসলাইন, মেট্রিক, ডিজাইন, ফলাফল ও সীমাবদ্ধতা।]

- The third pass virtually re-implements the paper; reserve it for papers you will build on or rely on.

  #bni[তৃতীয় পাসে মনে মনে পেপারটি পুনর্নির্মাণ করা হয়; এটি শুধু সেইসব পেপারের জন্য যেগুলোর ওপর আপনি নির্ভর করবেন।]

- The gap claim usually sits just before "In this paper, we propose…" --- check that it is supported, and that every contribution is tested.

  #bni[গ্যাপ দাবিটি সাধারণত "In this paper, we propose…"-এর ঠিক আগে থাকে --- এটি প্রমাণসহ কিনা, এবং প্রতিটি contribution পরীক্ষিত কিনা যাচাই করুন।]

]
