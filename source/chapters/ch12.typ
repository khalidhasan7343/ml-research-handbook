#import "../template.typ": *

= Reproducibility
<reproducibility>
#bnsub(1)[রিপ্রোডিউসিবিলিটি]
A result that nobody else can reproduce is an anecdote, not evidence. Reproducibility is what lets other researchers check a claim, build on it, or find out that it was wrong. In ML it has received serious attention: the NeurIPS conference, for example, introduced a reproducibility programme that included a code-submission policy and a reproducibility checklist for authors #cite(<ref15>), and data leakage has been documented as a source of irreproducible results in ML-based science across many fields #cite(<ref13>).

#bn[যে ফলাফল অন্য কেউ পুনরায় পেতে পারে না, তা প্রমাণ নয় --- নিছক একটি গল্প। Reproducibility-র কারণেই অন্য গবেষকরা একটি দাবি যাচাই করতে, তার ওপর কাজ করতে, বা দাবিটি ভুল প্রমাণ করতে পারেন। ML-এ বিষয়টি গুরুত্বের সাথে দেখা হচ্ছে: যেমন NeurIPS কনফারেন্স একটি reproducibility কর্মসূচি চালু করেছিল, যাতে কোড জমা দেওয়ার নীতি ও লেখকদের জন্য একটি reproducibility checklist ছিল #cite(<ref15>)\; আর বহু ক্ষেত্রে ML-ভিত্তিক গবেষণায় data leakage-কে অপুনরুৎপাদনযোগ্য ফলাফলের একটি কারণ হিসেবে নথিভুক্ত করা হয়েছে #cite(<ref13>)।]

== Reproduce, Replicate, Generalize
<reproduce-replicate-generalize>
#bnsub(2)[রিপ্রোডিউস, রেপ্লিকেট ও জেনারেলাইজ]
The words are used differently across fields, so always check how a paper defines them. A common usage in ML is:

#figure(
  align(center)[#table(
    columns: (14.32%, 43.74%, 41.94%),
    align: (left,left,left,),
    table.header([Term], [Meaning], [বাংলা],),
    table.hline(),
    [#strong[Reproduce]], [Same code, same data → same numbers], [একই কোড ও ডেটা দিয়ে একই সংখ্যা পাওয়া],
    [#strong[Replicate]], [Independent re-implementation, or new data from the same setting → same conclusion], [স্বাধীনভাবে নতুন করে বানিয়ে, বা একই পরিস্থিতির নতুন ডেটায় একই সিদ্ধান্ত পাওয়া],
    [#strong[Generalize]], [A different setting or population → the conclusion still holds], [ভিন্ন পরিস্থিতি বা population-এও সিদ্ধান্তটি টিকে থাকা],
  )]
  , kind: table
  )

Each level is a stronger test than the one before. A paper that only reaches the first level has shown that its code runs, not that its idea works.

#bn[এই শব্দগুলোর ব্যবহার ক্ষেত্রভেদে ভিন্ন, তাই পেপারে কীভাবে সংজ্ঞায়িত তা দেখে নিন। প্রতিটি স্তর আগেরটির চেয়ে কঠিন পরীক্ষা। যে পেপার শুধু প্রথম স্তরে পৌঁছায়, সে প্রমাণ করেছে কোডটি চলে --- ধারণাটি কাজ করে তা নয়।]

== The Ten Pillars
<the-ten-pillars>
#bnsub(2)[রিপ্রোডিউসিবিলিটির ১০টি স্তম্ভ]
#figure(
  align(center)[#table(
    columns: (4.46%, 16.56%, 42.21%, 36.77%),
    align: (left,left,left,left,),
    table.header([\#], [Pillar], [What to report], [বাংলা],),
    table.hline(),
    [1], [#strong[Code]], [A public repository with a clear README and the exact commit used for the paper], [পাবলিক রিপোজিটরি, পরিষ্কার README, এবং পেপারে ব্যবহৃত নির্দিষ্ট commit],
    [2], [#strong[Dataset]], [The data itself, or exact download and preparation instructions], [ডেটা নিজে, বা সুনির্দিষ্ট ডাউনলোড ও প্রস্তুতির নির্দেশনা],
    [3], [#strong[Random seed]], [The seeds used, and how many runs were averaged], [ব্যবহৃত seed, এবং কতগুলো run-এর গড় নেওয়া হয়েছে],
    [4], [#strong[Environment]], [A Conda/virtual-environment file or a Docker image], [Conda/virtual-environment ফাইল বা Docker image],
    [5], [#strong[Dependencies]], [Exact package versions (for example, a pinned `requirements.txt`)], [প্যাকেজের সুনির্দিষ্ট ভার্সন],
    [6], [#strong[Hyperparameters]], [A table of final values #emph[and] the search space used to choose them], [চূড়ান্ত মানের টেবিল #emph[এবং] বাছাইয়ের search space],
    [7], [#strong[Training details]], [Epochs, optimiser, schedule, early stopping, training curves], [Epoch, optimiser, schedule, early stopping, training curve],
    [8], [#strong[Evaluation protocol]], [Exact splits, metrics, averaging method and CV configuration], [সুনির্দিষ্ট split, মেট্রিক, averaging পদ্ধতি ও CV কনফিগারেশন],
    [9], [#strong[Hardware]], [GPU/TPU type and count, memory, and total training time], [GPU/TPU-এর ধরন ও সংখ্যা, মেমরি, মোট ট্রেনিং সময়],
    [10], [#strong[Model checkpoints]], [The trained weights, so results can be checked without retraining], [ট্রেইনড weight, যাতে আবার ট্রেন না করেই ফলাফল যাচাই করা যায়],
  )]
  , kind: table
  )

== A Ten-Minute Reproducibility Check
<a-ten-minute-reproducibility-check>
#bnsub(2)[দশ মিনিটে রিপ্রোডিউসিবিলিটি যাচাই]
When you second-pass a paper, spend ten minutes on these questions:

+ Is there a code link, and does the repository actually contain training #emph[and] evaluation code?
+ Can you obtain the exact data, including the split?
+ Is there a hyperparameter table, and does it say how the values were chosen?
+ Are results averaged over several seeds, and is the number of seeds stated?
+ Does the paper (or its appendix) describe the hardware and training time?

Missing two or three of these --- especially code, seeds and hyperparameters --- makes the headline claims effectively unverifiable. That is a #emph[reproducibility gap] (Section 13.12), and re-implementing such a paper carefully can itself be a publishable contribution.

#bn[দ্বিতীয় পাসের সময় এই প্রশ্নগুলোতে দশ মিনিট দিন: (১) কোডের লিংক আছে কি, এবং রিপোজিটরিতে training ও evaluation --- দুই কোডই আছে কি? (২) Split-সহ হুবহু ডেটা পাওয়া যাবে কি? (৩) Hyperparameter টেবিল আছে কি, এবং মানগুলো কীভাবে বাছাই হলো বলা আছে কি? (৪) ফলাফল কি একাধিক seed-এর গড়, এবং seed-এর সংখ্যা উল্লেখ আছে কি? (৫) Hardware ও training সময় বর্ণিত কি? এর দুই-তিনটি অনুপস্থিত থাকলে --- বিশেষত কোড, seed ও hyperparameter --- মূল দাবিগুলো কার্যত যাচাই-অযোগ্য। এটি একটি #emph[reproducibility gap], এবং এমন পেপার যত্ন নিয়ে পুনর্বাস্তবায়ন করাও একটি প্রকাশযোগ্য অবদান হতে পারে।]

#recap[
- Reproduce (same code and data), replicate (independent re-implementation or new data) and generalize (new setting) are increasingly strong tests.

  Reproduce, replicate ও generalize --- ক্রমশ কঠিনতর পরীক্ষা।

- Missing code, seeds or hyperparameters makes a claim effectively unverifiable; careful replication of such work can itself be a contribution.

  #bni[কোড, seed বা hyperparameter না থাকলে দাবি কার্যত যাচাই-অযোগ্য; এমন কাজ যত্ন নিয়ে replicate করাও একটি অবদান হতে পারে।]

]
