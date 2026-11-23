#import "../template.typ": *

= Fairness, Ethics and Responsible Research
<fairness-ethics-and-responsible-research>
#bnsub(1)[ন্যায্যতা, নৈতিকতা ও দায়িত্বশীল গবেষণা]
Increasingly, reviewers at major venues explicitly assess ethics and societal impact. A technically strong paper can still be rejected for ignoring this section entirely.

#bn[বড় ভেন্যুর reviewer-রা এখন স্পষ্টভাবে নৈতিকতা ও সামাজিক প্রভাব মূল্যায়ন করেন। কারিগরিভাবে শক্তিশালী পেপারও কেবল এই দিকটি উপেক্ষা করার কারণে প্রত্যাখ্যাত হতে পারে।]

== Where Bias Enters a Machine Learning System
<where-bias-enters-a-machine-learning-system>
#bnsub(2)[কোথায় বায়াস ঢোকে]
#figure(
  align(center)[#table(
    columns: (16.81%, 49.65%, 33.53%),
    align: (auto,auto,auto,),
    table.header([Stage], [How bias enters], [বাংলা],),
    table.hline(),
    [#strong[Historical bias]], [The world itself is unequal, and the data faithfully records that inequality], [বাস্তব জগতের বৈষম্যই ডেটায় প্রতিফলিত হয়],
    [#strong[Representation bias]], [Some groups are under-sampled relative to the real population], [কিছু গোষ্ঠী ডেটায় কম প্রতিনিধিত্ব পায়],
    [#strong[Measurement bias]], [The chosen proxy variable measures something subtly different from the real target], [ব্যবহৃত proxy ভেরিয়েবল আসল টার্গেট থেকে ভিন্ন কিছু মাপে],
    [#strong[Aggregation bias]], [One single model is forced onto groups that genuinely behave differently], [ভিন্ন আচরণের গোষ্ঠীর ওপর একই মডেল চাপিয়ে দেওয়া],
    [#strong[Evaluation bias]], [The benchmark itself is unrepresentative of deployment reality], [বেঞ্চমার্কই বাস্তবতার প্রতিনিধিত্ব করে না],
    [#strong[Deployment bias]], [The system is used in a context it was never designed or validated for], [যে প্রেক্ষাপটে ডিজাইন হয়নি সেখানে ব্যবহার করা],
  )]
  , kind: table
  )

== Fairness Metrics --- and Why They Conflict
<fairness-metrics-and-why-they-conflict>
#bnsub(2)[ন্যায্যতার পরিমাপক ও তাদের দ্বন্দ্ব]
“Fair” is not one thing. Several mathematically precise definitions exist, and they frequently #strong[cannot all be satisfied simultaneously].

#figure(
  align(center)[#table(
    columns: (18.72%, 39.19%, 42.09%),
    align: (auto,auto,auto,),
    table.header([Metric], [Definition], [Plain meaning],),
    table.hline(),
    [#strong[Demographic parity]], [Positive prediction rate is equal across groups], [The model selects each group at the same rate],
    [#strong[Equal opportunity]], [True positive rate is equal across groups], [Qualified members of each group are found equally well],
    [#strong[Equalized odds]], [Both TPR and FPR are equal across groups], [Both error types are balanced across groups],
    [#strong[Predictive parity]], [Precision is equal across groups], [A positive prediction means the same thing for each group],
    [#strong[Individual fairness]], [Similar individuals receive similar predictions], [Like cases treated alike],
  )]
  , kind: table
  )

#strong[The crucial point:] it has been formally shown that when base rates genuinely differ between groups, several of these criteria are #strong[mathematically incompatible] --- you must choose which definition matters for your context and #emph[justify that choice explicitly]. A paper that claims its model is simply “fair” without naming the criterion has not actually said anything.

#bn[“ন্যায্য” এক জিনিস নয়। একাধিক গাণিতিকভাবে সুনির্দিষ্ট সংজ্ঞা আছে এবং প্রায়ই সেগুলো একসাথে পূরণ করা অসম্ভব। যখন গোষ্ঠীগুলোর মধ্যে base rate সত্যিই ভিন্ন, তখন এই মানদণ্ডগুলোর কয়েকটি গাণিতিকভাবে পরস্পরবিরোধী --- আপনাকে বেছে নিতে হবে কোন সংজ্ঞাটি আপনার প্রেক্ষাপটে গুরুত্বপূর্ণ এবং সেই পছন্দের যুক্তি স্পষ্টভাবে দিতে হবে। কোন মানদণ্ড তা উল্লেখ না করে কেবল “আমাদের মডেল ন্যায্য” বলা অর্থহীন।]

== Documentation Standards
<documentation-standards>
#bnsub(2)[ডকুমেন্টেশন স্ট্যান্ডার্ড]
Two widely adopted standards that strengthen any paper:

- #strong[Datasheets for Datasets] #cite(<ref55>) --- a structured document describing a dataset's motivation, composition, collection process, preprocessing, intended uses, and known limitations. Think of it as a “nutrition label” for data.
- #strong[Model Cards] #cite(<ref56>) --- a short structured report accompanying a released model: intended use, out-of-scope uses, training data, evaluation data, #strong[performance disaggregated by group], and ethical considerations.

#bn[#emph[Datasheets for Datasets] #cite(<ref55>) --- ডেটাসেটের উদ্দেশ্য, গঠন, সংগ্রহ প্রক্রিয়া, preprocessing, অভিপ্রেত ব্যবহার ও সীমাবদ্ধতার কাঠামোবদ্ধ বর্ণনা (ডেটার “nutrition label”)। #emph[Model Cards] #cite(<ref56>) --- প্রকাশিত মডেলের সাথে দেওয়া সংক্ষিপ্ত রিপোর্ট: অভিপ্রেত ব্যবহার, যেসব ব্যবহার উপযুক্ত নয়, ট্রেনিং ও মূল্যায়ন ডেটা, গোষ্ঠীভিত্তিক পৃথক পারফরম্যান্স, এবং নৈতিক বিবেচনা।]

== Research Ethics Essentials
<research-ethics-essentials>
#bnsub(2)[গবেষণা নৈতিকতার মৌলিক বিষয়]
- #strong[Informed consent & IRB/ethics approval] --- required for human-subject data; papers using clinical or personal data should state their approval status.
- #strong[Privacy & anonymization] --- removing direct identifiers is often #emph[not] sufficient; individuals can be re-identified by combining quasi-identifiers.
- #strong[Data licensing] --- scraped data is not automatically free to redistribute. Check the licence before publishing a dataset.
- #strong[Dual-use risk] --- consider whether the method could cause foreseeable harm if misused, and say so honestly.
- #strong[Environmental cost] --- training large models consumes significant energy; reporting compute cost is increasingly expected.
- #strong[Authorship integrity] --- authorship requires genuine intellectual contribution. Gift authorship and ghost authorship are research-misconduct issues.
- #strong[Plagiarism & self-plagiarism] --- reusing your own previously published text without citation is still a violation at most venues.
- #strong[Disclosure of AI assistance] --- many venues now require you to state how generative AI tools were used in preparing the work. Check your target venue's current policy.

#bn[Informed consent ও IRB অনুমোদন (মানব-বিষয়ক ডেটার জন্য বাধ্যতামূলক), গোপনীয়তা ও anonymization (শুধু নাম মুছে দেওয়া প্রায়ই যথেষ্ট নয় --- quasi-identifier মিলিয়ে ব্যক্তি চিহ্নিত করা যায়), ডেটা লাইসেন্সিং (scrape করা ডেটা স্বয়ংক্রিয়ভাবে পুনঃপ্রকাশযোগ্য নয়), Dual-use ঝুঁকি, পরিবেশগত খরচ, Authorship সততা (gift/ghost authorship গবেষণা-অসদাচরণ), Plagiarism ও self-plagiarism, এবং AI সহায়তার ঘোষণা (অনেক ভেন্যু এখন এটি বাধ্যতামূলক করেছে --- আপনার লক্ষ্য ভেন্যুর বর্তমান নীতি দেখে নিন)।]

#recap[
- Bias can enter at every stage, from historical data to deployment; ask where it could have entered in the paper you are reading.

  #bni[ডেটা সংগ্রহ থেকে deployment --- প্রতিটি ধাপে bias ঢুকতে পারে; যে পেপার পড়ছেন সেখানে কোথায় ঢুকতে পারে তা জিজ্ঞেস করুন।]

- "Fair" has several precise definitions that can be mathematically incompatible; a paper must name the one it uses and justify it.

  #bni["ন্যায্য"-এর একাধিক সুনির্দিষ্ট সংজ্ঞা আছে যেগুলো গাণিতিকভাবে পরস্পরবিরোধী হতে পারে; পেপারকে কোনটি ব্যবহার করছে তা নাম ধরে বলতে ও যুক্তি দিতে হবে।]

- Datasheets and model cards, ethics approval and honest disclosure are now part of what reviewers expect.

  #bni[Datasheet ও model card, নৈতিক অনুমোদন এবং সৎ ঘোষণা এখন reviewer-দের প্রত্যাশার অংশ।]

]
