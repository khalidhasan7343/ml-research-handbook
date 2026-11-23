#import "../template.typ": *

= Case Study: Reading the AlexNet Paper
<case-study-reading-the-alexnet-paper>
#bnsub(1)[কেস স্টাডি: AlexNet পেপার বিশ্লেষণ]
Every framework in Chapters 8--13 is easier to understand applied to one real paper, start to finish. This case study uses #strong[Krizhevsky, Sutskever & Hinton (2012), “ImageNet Classification with Deep Convolutional Neural Networks”] #cite(<ref36>) --- the “AlexNet” paper --- because it is short, extremely well-documented, and its facts are easy to independently verify. Every factual claim below is drawn directly from the paper and standard secondary accounts of it; nothing is invented.

#bn[Chapter ৮--১৩-এর প্রতিটি কাঠামো একটি বাস্তব পেপারে শুরু থেকে শেষ পর্যন্ত প্রয়োগ করলে বোঝা সহজ হয়। এই কেস স্টাডিতে #strong[Krizhevsky, Sutskever ও Hinton (2012)]-এর “AlexNet” পেপার #cite(<ref36>) ব্যবহার করা হয়েছে, কারণ এটি সংক্ষিপ্ত, অত্যন্ত সুপরিচিত, এবং এর তথ্য স্বাধীনভাবে যাচাই করা সহজ। নিচের প্রতিটি তথ্য সরাসরি পেপার ও প্রমিত সেকেন্ডারি উৎস থেকে নেওয়া --- কিছুই বানানো হয়নি।]

== First Pass (Three-Pass Method, Chapter 8)
<first-pass-three-pass-method-chapter-8>
#bnsub(2)[প্রথম পাস]
#strong[Title/Abstract/Intro skim:] The paper claims a deep convolutional neural network, trained on the ImageNet Large Scale Visual Recognition Challenge (ILSVRC-2012) dataset, achieved a top-5 test error rate of #strong[15.3%] --- compared to #strong[26.2%] for the second-best entry in the same competition, a gap of roughly 10.9 percentage points.

#strong[First-pass verdict:] A \~11-point improvement over the field's best alternative, on a competition benchmark, from a clearly stated architecture --- worth reading further.

#bn[পেপারটি দাবি করে যে তাদের deep CNN ImageNet প্রতিযোগিতায় (ILSVRC-2012) #strong[১৫.৩%] top-5 error rate অর্জন করেছে, যেখানে দ্বিতীয় সেরা মডেলের error ছিল #strong[২৬.২%] --- প্রায় ১০.৯ পয়েন্টের ব্যবধান। #strong[প্রথম পাসের সিদ্ধান্ত:] একটি সুপরিচিত বেঞ্চমার্কে প্রতিদ্বন্দ্বীদের চেয়ে বিশাল ব্যবধানে এগিয়ে থাকা ফলাফল --- আরও পড়া উচিত।]

== Second Pass --- Method, Dataset, Results
<second-pass-method-dataset-results>
#bnsub(2)[দ্বিতীয় পাস]
#figure(
  align(center)[#table(
    columns: (22.14%, 77.86%),
    align: (auto,auto,),
    table.header([Aspect], [What the paper reports],),
    table.hline(),
    [#strong[Dataset]], [ImageNet / ILSVRC-2012 subset, roughly 1.2 million training images across 1,000 categories],
    [#strong[Architecture]], [8 learned layers: 5 convolutional + 3 fully connected, \~60 million parameters],
    [#strong[Key innovations]], [ReLU activations (faster convergence than tanh/sigmoid); training split across two GPUs; Local Response Normalization; overlapping max-pooling],
    [#strong[Regularization]], [Dropout in the fully connected layers; data augmentation via random crops and horizontal reflections],
    [#strong[Optimizer]], [Stochastic Gradient Descent (SGD) with momentum],
    [#strong[Headline result]], [Top-5 error 15.3% vs.~26.2% for the runner-up on ILSVRC-2012],
  )]
  , kind: table
  )

#strong[Second-pass verdict:] The architecture, dataset, and training details are all concretely specified. This looks like a real engineering + empirical contribution, not a vague claim.

#bn[ডেটাসেট (ImageNet, \~১২ লক্ষ ছবি, ১,০০০ ক্যাটাগরি), আর্কিটেকচার (৮ স্তর, \~৬ কোটি প্যারামিটার), মূল উদ্ভাবন (ReLU, দুই GPU-তে ট্রেনিং, Local Response Normalization), regularization (dropout, data augmentation), এবং optimizer (SGD with momentum) --- সবকিছু সুনির্দিষ্টভাবে বলা আছে। #strong[দ্বিতীয় পাসের সিদ্ধান্ত:] এটি একটি বাস্তব ইঞ্জিনিয়ারিং ও experimental অবদান, অস্পষ্ট দাবি নয়।]

== Applying the Critical Paper Analysis Framework (Chapter 10)
<applying-the-critical-paper-analysis-framework-chapter-10>
#bnsub(2)[সমালোচনামূলক বিশ্লেষণ প্রয়োগ]
#figure(
  align(center)[#table(
    columns: (11.56%, 88.44%),
    align: (auto,auto,),
    table.header([Dimension], [Assessment],),
    table.hline(),
    [#strong[\1. Problem]], [Large-scale image classification --- well-defined, and ILSVRC provides an objective, standardized benchmark.],
    [#strong[\2. Novelty]], [A #emph[combination] novelty (Chapter 17, Type 5): CNNs, ReLU, dropout, and GPU training were each known in isolation; the paper's contribution was combining and scaling them successfully on a dataset far larger than prior CNN work had attempted.],
    [#strong[\3. Method]], [Architecture choices (filter sizes, layer depths) are justified partly by ablation-style reasoning in the paper's own discussion (e.g., they note that removing a convolutional layer hurt performance).],
    [#strong[\4. Dataset]], [ILSVRC-2012 is large and standardized --- a strong choice, though (as later work would note) ImageNet's category distribution and image sources carry their own population and geographic biases (Section 13.6, 12.8).],
    [#strong[\5. Baselines]], [Directly compared against every other ILSVRC-2012 entrant under identical competition rules --- about as fair a baseline comparison as is possible.],
    [#strong[\8. Results]], [An 11-point error reduction on a major benchmark is a large, meaningful jump, not a marginal one.],
    [#strong[\13. Limitations]], [The original paper is candid that training took 5--6 days on two GPUs and that larger/deeper networks were limited mainly by available GPU memory --- a limitation explicitly acknowledged, not hidden.],
  )]
  , kind: table
  )

#bn[সমস্যা সুনির্দিষ্ট ও objectively বেঞ্চমার্ক করা; নতুনত্ব মূলত #emph[সংমিশ্রণ]-ভিত্তিক (বিদ্যমান উপাদান একত্রিত ও বড় স্কেলে সফল করা); বেসলাইন তুলনা অত্যন্ত ন্যায্য (একই প্রতিযোগিতার একই শর্তে); ফলাফলের উন্নতি (১১ পয়েন্ট) বড় ও অর্থপূর্ণ; সীমাবদ্ধতা (GPU মেমরির সীমাবদ্ধতা, ৫-৬ দিনের ট্রেনিং সময়) সততার সাথে স্বীকৃত।]

== Red-Flag Check (Chapter 11)
<red-flag-check-chapter-11>
#bnsub(2)[রেড-ফ্ল্যাগ যাচাই]
Running down the 16 red flags: this paper does #strong[not] exhibit most of them --- it uses a large standardized dataset (not flag \#1), compares against every real competitor under the same competition rules (not flag \#2 or \#11), and openly discusses its computational limitations (not flag \#16). Two points worth noting rather than treating as flaws:

- #strong[Single-metric emphasis:] The headline result is top-5 error rate; the paper does report top-1 error too, but a modern paper would be expected to report a broader metric suite (Chapter 5) --- this reflects the evaluation norms of 2012, not a red flag by the standards of its time.
- #strong[Statistical significance (flag \#6):] As is common for single, large-scale competition entries of that era, the paper reports single-run results rather than mean ± std across multiple seeds --- reasonable given the multi-day training cost per run, but a genuine gap by today's standards (Section 6.7).

#bn[১৬টি red flag-এর বেশিরভাগ এই পেপারে অনুপস্থিত --- বড় প্রমিত ডেটাসেট ব্যবহার, একই প্রতিযোগিতার নিয়মে সব প্রতিদ্বন্দ্বীর সাথে তুলনা, এবং কম্পিউটেশনাল সীমাবদ্ধতা খোলাখুলি আলোচনা। তবে দুটি বিষয় লক্ষণীয়: metric emphasis (মূলত top-5 error, যদিও এটি ২০১২ সালের মানদণ্ড অনুযায়ী স্বাভাবিক), এবং statistical significance-এর অভাব (একাধিক seed-এ গড় ± std রিপোর্ট করা হয়নি, যা আজকের মানে একটি প্রকৃত ঘাটতি)।]

== What Research Gap Did It Address? (Chapter 13)
<what-research-gap-did-it-address-chapter-13>
#bnsub(2)[এটি কোন রিসার্চ গ্যাপ সমাধান করেছিল?]
Before AlexNet, image classification relied heavily on hand-engineered features (SIFT, HOG) combined with shallower classifiers --- a #strong[Methodological Gap] (Section 13.2): existing feature-engineering approaches plateaued in performance and did not scale well with dataset size. AlexNet's novelty (Chapter 17, Types 1 and 2 --- new/improved method) was demonstrating that a sufficiently large CNN, trained with sufficient data and compute, could learn better features automatically than decades of manual feature engineering had produced.

#bn[AlexNet-এর আগে image classification মূলত হাতে-তৈরি ফিচারের (SIFT, HOG) ওপর নির্ভর করতো --- এটি একটি #strong[Methodological Gap] (Section 13.2): বিদ্যমান পদ্ধতি একটি নির্দিষ্ট সীমার পর আর উন্নত হচ্ছিল না। AlexNet-এর নতুনত্ব ছিল প্রমাণ করা যে পর্যাপ্ত বড় CNN, পর্যাপ্ত ডেটা ও কম্পিউট দিয়ে, দশকের হাতে-তৈরি ফিচারের চেয়ে ভালো ফিচার নিজে থেকেই শিখতে পারে।]

== What Happened Next --- Why This Matters for Reading Papers
<what-happened-next-why-this-matters-for-reading-papers>
#bnsub(2)[এরপর কী হলো — কেন এটি গুরুত্বপূর্ণ]
AlexNet's own limitations (GPU memory constraints, only 8 layers) became exactly the research gaps that follow-up papers targeted: deeper architectures with skip connections to fight vanishing gradients (ResNet #cite(<ref37>)), and, later, entirely attention-based architectures for vision (Vision Transformers, building on the Transformer #cite(<ref39>)). This illustrates a pattern worth remembering: #strong[a landmark paper's own stated limitations are often the most reliable source of the field's next research gap.]

#bn[AlexNet-এর নিজস্ব সীমাবদ্ধতাগুলো (GPU মেমরি সীমা, মাত্র ৮ স্তর) পরবর্তী গবেষণার রিসার্চ গ্যাপ হয়ে উঠেছিল: skip connection দিয়ে গভীর আর্কিটেকচার (ResNet #cite(<ref37>)), এবং পরে vision-এর জন্য সম্পূর্ণ attention-ভিত্তিক আর্কিটেকচার (Vision Transformer)। এখান থেকে একটি গুরুত্বপূর্ণ প্যাটার্ন শেখা যায়: #strong[একটি landmark পেপারের নিজস্ব স্বীকৃত সীমাবদ্ধতাই প্রায়ই ক্ষেত্রের পরবর্তী রিসার্চ গ্যাপের সবচেয়ে নির্ভরযোগ্য উৎস।]]

#recap[
- Applying the three-pass method to AlexNet takes minutes and immediately surfaces its contribution, method, and honestly stated limitations.

  #bni[AlexNet-এ three-pass method প্রয়োগ করলে মিনিটেই এর অবদান, পদ্ধতি ও সততার সাথে বলা সীমাবদ্ধতা বোঝা যায়।]

- A landmark paper can pass nearly every red flag check and still have gaps (single-run results) that reflect its era rather than negligence.

  #bni[একটি landmark পেপার প্রায় সব red-flag চেক পাস করেও তার যুগের সীমাবদ্ধতা (একক-রান ফলাফল) বহন করতে পারে।]

- A paper's own declared limitations are frequently tomorrow's research gaps --- read the Limitations section as a source of ideas, not just caveats.

  #bni[পেপারের নিজস্ব স্বীকৃত সীমাবদ্ধতাই প্রায়ই আগামী দিনের রিসার্চ গ্যাপ --- Limitations অংশকে শুধু সতর্কতা নয়, ধারণার উৎস হিসেবেও পড়ুন।]

]
