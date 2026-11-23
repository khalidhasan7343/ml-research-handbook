#import "../template.typ": *

= Comparing Papers: The Literature Matrix
<comparing-papers-the-literature-matrix>
#bnsub(1)[লিটারেচার রিভিউ তুলনামূলক ম্যাট্রিক্স]
One paper tells you what one group of authors did. A research gap is a statement about a whole #emph[body] of work, so you can only see it by comparing many papers side by side. The literature matrix is the tool for that comparison. Webster and Watson recommend organising a review around #emph[concepts] rather than around individual authors, using exactly this kind of concept matrix #cite(<ref23>).

#bn[একটি পেপার শুধু জানায় একদল লেখক কী করেছেন। কিন্তু রিসার্চ গ্যাপ হলো পুরো গবেষণা-সমষ্টি সম্পর্কে একটি দাবি, তাই অনেক পেপার পাশাপাশি তুলনা না করলে এটি দেখা যায় না। Literature matrix হলো সেই তুলনার হাতিয়ার। Webster ও Watson পরামর্শ দেন review-কে লেখকভিত্তিক নয়, বরং #emph[ধারণা] (concept)-ভিত্তিকভাবে সাজাতে --- ঠিক এই ধরনের concept matrix ব্যবহার করে #cite(<ref23>)।]

== The Matrix
<the-matrix>
#bnsub(2)[ম্যাট্রিক্স]
#figure(
  align(center)[#table(
    columns: (9.66%, 6.72%, 10.81%, 10.81%, 9.48%, 9.48%, 9.48%, 14.63%, 5.56%, 13.38%),
    align: (left,left,left,left,left,left,left,left,left,left,),
    table.header([Paper], [Year], [Problem], [Dataset], [Method], [Metric], [Result], [Limitation], [Gap], [Possible Extension],),
    table.hline(),
    [#emph[\(fill in)]], [], [], [], [], [], [], [], [], [],
    [#emph[\(fill in)]], [], [], [], [], [], [], [], [], [],
  )]
  , kind: table
  )

== How to Fill Each Column
<how-to-fill-each-column>
#bnsub(2)[প্রতিটি কলাম কীভাবে পূরণ করবেন]
#figure(
  align(center)[#table(
    columns: (14.85%, 45.85%, 39.3%),
    align: (left,left,left,),
    table.header([Column], [What to write], [বাংলা],),
    table.hline(),
    [#strong[Paper]], [Short ID (first author + year) linked to your reference manager], [সংক্ষিপ্ত ID (প্রথম লেখক + সাল)],
    [#strong[Year]], [Publication year --- lets you see how the field moved over time], [প্রকাশের সাল --- ক্ষেত্রটি সময়ের সাথে কীভাবে বদলেছে বোঝা যায়],
    [#strong[Problem]], [The exact task, in one line], [সুনির্দিষ্ট টাস্ক, এক লাইনে],
    [#strong[Dataset]], [Name, size, and whether it is public], [নাম, আকার, এবং পাবলিক কিনা],
    [#strong[Method]], [The core model, named specifically (not just "deep learning")], [মূল মডেল, নির্দিষ্ট নামে ("deep learning" নয়)],
    [#strong[Metric]], [Which metrics --- flag accuracy-only on imbalanced data], [কোন মেট্রিক --- imbalanced ডেটায় শুধু accuracy থাকলে চিহ্নিত করুন],
    [#strong[Result]], [The headline number, with its spread if reported], [মূল সংখ্যা, বিস্তার থাকলে সেটিসহ],
    [#strong[Limitation]], [The authors' stated weakness #emph[and] any you observe --- mark which is which], [লেখকদের স্বীকৃত দুর্বলতা #emph[এবং] আপনার পর্যবেক্ষণ --- কোনটি কার, চিহ্নিত করুন],
    [#strong[Gap]], [What remains unaddressed even after this paper], [এই পেপারের পরও কী অমীমাংসিত],
    [#strong[Possible Extension]], [One concrete next step this row suggests], [এই সারি থেকে আসা একটি নির্দিষ্ট পরবর্তী ধাপ],
  )]
  , kind: table
  )

== A Filled Example
<a-filled-example>
#bnsub(2)[পূরণ করা উদাহরণ]
The rows below are #strong[hypothetical], written to show the technique. They are not real papers.

#bn[নিচের সারিগুলো #strong[কাল্পনিক] --- কৌশলটি দেখানোর জন্য লেখা, বাস্তব পেপার নয়।]

#figure(
  align(center)[#table(
    columns: (5.63%, 4.66%, 15.93%, 8.57%, 10.15%, 9.28%, 6.57%, 13.18%, 13.51%, 12.52%),
    align: (left,left,left,left,left,left,left,left,left,left,),
    table.header([Paper], [Year], [Problem], [Dataset], [Method], [Metric], [Result], [Limitation], [Gap], [Possible Extension],),
    table.hline(),
    [P1], [2021], [Bangla fake-news detection], [Private, 6k], [BiLSTM], [Accuracy], [0.89], [Single source; no code], [Dataset], [Public corpus],
    [P2], [2023], [Bangla fake-news detection], [Private, 9k], [Fine-tuned BERT], [Accuracy, F1], [0.92 / 0.71], [Single source], [Dataset, generalization], [Cross-source test],
    [P3], [2024], [Bangla fake-news detection], [Private, 12k], [BERT + LSTM], [Accuracy], [0.94], [Single run; no ablation], [Evaluation], [Seeds + ablation],
  )]
  , kind: table
  )

== Spotting Patterns Across Rows
<spotting-patterns-across-rows>
#bnsub(2)[সারিজুড়ে প্যাটার্ন খোঁজা]
Read the matrix #emph[by column], not by row. Five patterns are worth looking for:

+ #strong[A repeated limitation.] If three or more papers share the same weakness --- here, every dataset is private and comes from a single source --- that pattern is far stronger evidence of a gap than any single paper's limitation section.
+ #strong[A metric monoculture.] If most papers report accuracy only (P1 and P3), the sub-field may have an #emph[evaluation gap]. Notice that P2's F1 (0.71) is much lower than its accuracy (0.92) --- a hint that the classes are imbalanced.
+ #strong[A dataset monoculture.] Everyone tests on the same benchmark, or nobody tests on an external one: a #emph[generalization gap].
+ #strong[Contradictory results.] Two papers report opposite findings on similar data. Explaining the contradiction can itself be a contribution.
+ #strong[An empty cell in the method × setting grid.] A method that is mature in one setting has never been tried in another. This can be a #emph[context gap] --- but only if trying it there is meaningful (Chapter 17).

#bn[Matrix-টি #emph[সারি ধরে নয়, কলাম ধরে] পড়ুন। পাঁচটি প্যাটার্ন খুঁজুন: (১) #strong[পুনরাবৃত্ত সীমাবদ্ধতা] --- তিন বা তার বেশি পেপারে একই দুর্বলতা থাকলে (এখানে সব ডেটাসেট ব্যক্তিগত ও এক উৎসের) তা একটি পেপারের limitation-এর চেয়ে অনেক শক্তিশালী গ্যাপ-প্রমাণ; (২) #strong[একই মেট্রিকের একাধিপত্য] --- বেশিরভাগ পেপার শুধু accuracy দিলে evaluation gap থাকতে পারে (P2-এর F1 ০.৭১ কিন্তু accuracy ০.৯২ --- ক্লাস imbalance-এর ইঙ্গিত); (৩) #strong[একই ডেটাসেটের একাধিপত্য] --- সবাই একই benchmark-এ পরীক্ষা করে, বা কেউ external ডেটায় করে না: generalization gap; (৪) #strong[পরস্পরবিরোধী ফলাফল] --- বিরোধের ব্যাখ্যা দেওয়াটাই একটি অবদান হতে পারে; (৫) #strong[method × setting গ্রিডে ফাঁকা ঘর] --- এটি context gap হতে পারে, তবে কেবল তখনই যদি সেখানে চেষ্টা করা অর্থপূর্ণ হয়।]

#strong[Practical tips.] Keep the matrix in a spreadsheet so you can sort and filter by column. Add a column for the venue and one for "my confidence" (how carefully you read it: first, second or third pass). Re-sort by year before you write a gap statement --- a "gap" that the most recent row already closes is not a gap.

#bn[#strong[ব্যবহারিক পরামর্শ।] Matrix-টি spreadsheet-এ রাখুন, যাতে কলাম অনুযায়ী sort ও filter করা যায়। Venue-এর জন্য এবং "আমার আস্থা" (কোন pass পর্যন্ত পড়েছেন) এর জন্য বাড়তি কলাম রাখুন। গ্যাপ লেখার আগে সাল অনুযায়ী sort করুন --- সবচেয়ে সাম্প্রতিক সারিই যদি গ্যাপটি পূরণ করে ফেলে, তাহলে সেটি আর গ্যাপ নয়।]

#recap[
- A gap is a property of a body of work, so you can only see it by comparing papers side by side.

  #bni[গ্যাপ পুরো গবেষণা-সমষ্টির বৈশিষ্ট্য, তাই পেপারগুলো পাশাপাশি তুলনা করলেই কেবল এটি দেখা যায়।]

- Read the matrix by column: a limitation repeated across three or more papers is much stronger evidence than any single paper's claim.

  #bni[Matrix কলাম ধরে পড়ুন: তিন বা তার বেশি পেপারে পুনরাবৃত্ত সীমাবদ্ধতা যেকোনো একক পেপারের দাবির চেয়ে অনেক শক্তিশালী প্রমাণ।]

]
