#import "../template.typ": *

= Case Study: Reading "Attention Is All You Need"
<case-study-reading-attention-is-all-you-need>
#bnsub(1)[কেস স্টাডি: "Attention Is All You Need" পেপার বিশ্লেষণ]
Chapter 18 applied the frameworks of this book to AlexNet, a landmark of the convolutional era. This chapter repeats the exercise for #strong[Vaswani et al. (2017), "Attention Is All You Need"] #cite(<ref39>), the paper that introduced the #strong[Transformer] --- the architecture behind BERT #cite(<ref40>), GPT-3 #cite(<ref71>) and the large language models of Chapter 22. Every fact about the paper below comes from its final arXiv version or from the sources cited. Compared with Chapter 18, this case study goes further: the second pass includes attention computed by hand, the critique covers all fourteen dimensions of Chapter 10, and the chapter ends by setting the two landmark papers side by side.

#bn[Chapter 18-এ এই বইয়ের কাঠামোগুলো convolutional যুগের landmark AlexNet-এ প্রয়োগ করা হয়েছিল। এই chapter-এ একই অনুশীলন করা হয়েছে #strong[Vaswani ও সহকর্মীদের (2017) "Attention Is All You Need"] #cite(<ref39>) পেপারে, যেটি #strong[Transformer] চালু করেছিল --- BERT #cite(<ref40>), GPT-3 #cite(<ref71>) এবং Chapter 22-এর large language model-গুলোর পেছনের আর্কিটেকচার। পেপার সম্পর্কে নিচের প্রতিটি তথ্য এর চূড়ান্ত arXiv সংস্করণ বা উল্লিখিত উৎস থেকে নেওয়া। Chapter 18-এর তুলনায় এখানে আরও গভীরে যাওয়া হয়েছে: দ্বিতীয় পাসে হাতে-কলমে attention হিসাব, Chapter 10-এর চৌদ্দটি মাত্রাতেই সমালোচনা, আর শেষে দুটি landmark পেপারের পাশাপাশি তুলনা।]

== First Pass: The Five Cs
<first-pass-the-five-cs>
#bnsub(2)[প্রথম পাস: পাঁচটি C]
The abstract makes three claims to check: the Transformer is #emph[better in quality], #emph[more parallelizable], and requires #emph[significantly less time to train]. A first pass (Section 8.1) answers Keshav's five Cs #cite(<ref19>):

#figure(
  align(center)[#table(
    columns: (17%, 55%, 28%),
    align: (left,left,left,),
    table.header([C], [Answer after the first pass], [বাংলা],),
    table.hline(),
    [#strong[Category]], [A new method: a network architecture for sequence transduction, evaluated mainly on machine translation], [নতুন পদ্ধতি --- একটি আর্কিটেকচার],
    [#strong[Context]], [Encoder--decoder models built on recurrent or convolutional networks and linked by attention #cite(<ref104>)\; this paper removes recurrence and convolution entirely], [RNN/CNN-ভিত্তিক encoder--decoder, attention দিয়ে যুক্ত],
    [#strong[Correctness]], [The argument rests on parallel computation and short paths between distant positions; the experiments test translation quality and training cost], [যুক্তি: সমান্তরাল গণনা ও দূরের অবস্থানের মধ্যে ছোট পথ],
    [#strong[Contributions]], [(1) the Transformer; (2) state-of-the-art BLEU on two WMT 2014 translation tasks at lower training cost; (3) a test on English constituency parsing], [আর্কিটেকচার; কম খরচে সেরা BLEU; parsing-এ পরীক্ষা],
    [#strong[Clarity]], [Short and clearly written, with an architecture figure, a complexity table and an ablation table], [সংক্ষিপ্ত ও স্পষ্ট],
  )]
  , kind: table
  )

#strong[First-pass verdict:] a large claimed gain on standard benchmarks at a fraction of the cost, from a clearly specified architecture --- worth a second pass.

#bn[Abstract তিনটি দাবি করে যা যাচাই করতে হবে: Transformer মানে #emph[ভালো], #emph[বেশি সমান্তরালযোগ্য], এবং train করতে #emph[অনেক কম সময়] লাগে। প্রথম পাসে (Section 8.1) Keshav-এর পাঁচটি C-এর উত্তর পাওয়া যায় #cite(<ref19>): শ্রেণি --- নতুন পদ্ধতি; প্রেক্ষাপট --- attention দিয়ে যুক্ত RNN/CNN-ভিত্তিক encoder--decoder, যেখান থেকে এই পেপার recurrence ও convolution পুরোপুরি বাদ দেয় #cite(<ref104>)\; যথার্থতা --- যুক্তি সমান্তরাল গণনা ও দূরের অবস্থানের মধ্যে ছোট পথের ওপর দাঁড়িয়ে; অবদান --- আর্কিটেকচার, কম খরচে সেরা BLEU, parsing-এ পরীক্ষা; স্পষ্টতা --- সংক্ষিপ্ত ও পরিষ্কার। #strong[প্রথম পাসের সিদ্ধান্ত:] প্রমিত benchmark-এ কম খরচে বড় উন্নতির দাবি --- দ্বিতীয় পাসের যোগ্য।]

== Second Pass: The Method, and Attention by Hand
<second-pass-the-method-and-attention-by-hand>
#bnsub(2)[দ্বিতীয় পাস: পদ্ধতি, এবং হাতে-কলমে attention]
#figure(
  align(center)[#table(
    columns: (20%, 80%),
    align: (left,left,),
    table.header([Aspect], [What the paper reports],),
    table.hline(),
    [#strong[Data]], [WMT 2014 English--German, about 4.5 million sentence pairs, byte-pair encoding with a shared vocabulary of about 37,000 tokens; WMT 2014 English--French, 36 million sentences, 32,000 word pieces],
    [#strong[Architecture]], [Encoder and decoder stacks of 6 layers, each built from multi-head attention and a position-wise feed-forward network, with residual connections and layer normalisation. Base model: width 512, 8 heads, 65 million parameters. Big model: width 1,024, 16 heads, 213 million parameters],
    [#strong[Word order]], [Fixed sinusoidal positional encodings; learned position embeddings gave "nearly identical results"],
    [#strong[Training]], [One machine with 8 NVIDIA P100 GPUs: 100,000 steps (12 hours) for the base model, 300,000 steps (3.5 days) for the big one; dropout and label smoothing],
    [#strong[Model selection]], [Beam size, length penalty and other settings chosen on the development set (newstest2013); final results on newstest2014; the last checkpoints averaged],
    [#strong[Headline results]], [English--German: 28.4 BLEU (big), 27.3 (base). English--French: 41.8 BLEU (big) in the abstract and results table --- but see Section 25.3],
  )]
  , kind: table
  )

#transformer-diagram()

#bn[ডেটা: WMT 2014 ইংরেজি--জার্মান (প্রায় ৪৫ লক্ষ বাক্য-জোড়া) ও ইংরেজি--ফরাসি (৩.৬ কোটি বাক্য)। আর্কিটেকচার: ৬ স্তরের encoder ও decoder, প্রতিটিতে multi-head attention ও feed-forward নেটওয়ার্ক, residual connection ও layer normalisation; base মডেলে ৮টি head ও ৬.৫ কোটি parameter, big মডেলে ১৬টি head ও ২১.৩ কোটি। শব্দের ক্রম বোঝাতে sinusoidal positional encoding (শেখা position embedding প্রায় একই ফল দিয়েছে)। ট্রেনিং: ৮টি P100 GPU-তে base মডেল ১২ ঘণ্টা, big মডেল ৩.৫ দিন। Setting বাছাই development set-এ, চূড়ান্ত ফল newstest2014-এ। প্রধান ফল: ইংরেজি--জার্মানে ২৮.৪ BLEU; ইংরেজি--ফরাসির সংখ্যা নিয়ে Section 25.3 দেখুন। চিত্রে সোনালি বাক্সগুলো attention স্তর।]

The core operation is #strong[scaled dot-product attention]. Every position asks a #emph[query]\; it compares the query with the #emph[key] of every position, turns the comparison scores into weights that sum to 1, and returns the weighted average of the positions' #emph[values]:

$ "Attention"(Q, K, V) = "softmax"((Q K^T) / sqrt(d_k)) V $

#strong[Multi-head attention] runs several such attention functions in parallel on different learned projections of the input and joins their outputs, so different heads can attend to different kinds of relationship.

#strong[Worked example: attention by hand (illustrative numbers).] One query $q = (1, 0)$ attends over three positions whose keys and values are $(1, 0)$, $(0, 1)$ and $(1, 1)$, with $d_k = 2$:

#figure(
  align(center)[#table(
    columns: (34%, 22%, 22%, 22%),
    align: (left,center,center,center,),
    table.header([Step], [Position 1], [Position 2], [Position 3],),
    table.hline(),
    [1\. Score $q dot k$], [1], [0], [1],
    [2\. Scale by $sqrt(2)$], [0.707], [0], [0.707],
    [3\. $e^x$ (sum = 5.056)], [2.028], [1.000], [2.028],
    [4\. Weight = $e^x slash 5.056$], [0.401], [0.198], [0.401],
  )]
  , kind: table
  )

$ "output" = 0.401 (1, 0) + 0.198 (0, 1) + 0.401 (1, 1) = (0.802, 0.599) $

The query matches positions 1 and 3 equally well, so they receive equal and larger weights, and the output is a blend of their values.

#bn[মূল কাজটি হলো #strong[scaled dot-product attention]: প্রতিটি অবস্থান একটি #emph[query] করে, সেটি প্রতিটি অবস্থানের #emph[key]-এর সাথে তুলনা করে, তুলনার স্কোরকে এমন weight-এ রূপ দেয় যার যোগফল ১, আর অবস্থানগুলোর #emph[value]-এর ভারযুক্ত গড় ফেরত দেয়। #strong[Multi-head attention] ইনপুটের ভিন্ন ভিন্ন শেখা projection-এ এমন কয়েকটি attention সমান্তরালে চালিয়ে ফল জোড়া লাগায়, যাতে ভিন্ন head ভিন্ন সম্পর্ক ধরতে পারে। #strong[উদাহরণ (কাল্পনিক সংখ্যা):] query $q = (1, 0)$, তিনটি অবস্থানের key ও value $(1, 0)$, $(0, 1)$, $(1, 1)$, আর $d_k = 2$। স্কোর ১, ০, ১; $sqrt(2)$ দিয়ে ভাগ করলে ০.৭০৭, ০, ০.৭০৭; softmax-এর পর weight ০.৪০১, ০.১৯৮, ০.৪০১; আউটপুট (০.৮০২, ০.৫৯৯)। Query অবস্থান ১ ও ৩-এর সাথে সমান মেলে, তাই তারা সমান ও বেশি weight পায়।]

#strong[Why scale by $sqrt(d_k)$?] The paper explains that for large $d_k$ the dot products grow large, "pushing the softmax function into regions where it has extremely small gradients"; if the components of $q$ and $k$ are independent with mean 0 and variance 1, their dot product has variance $d_k$ #cite(<ref39>). With $d_k = 64$, as in the base model, typical scores therefore have a standard deviation of 8. Scores of $(8, 0, -8)$ give softmax weights $(0.9997, 0.0003, 0.0000)$ --- almost all-or-nothing, so the gradient barely flows to the other positions. Dividing by $sqrt(64) = 8$ gives scores $(1, 0, -1)$ and weights $(0.665, 0.245, 0.090)$, which can still be learned.

#bn[#strong[কেন $sqrt(d_k)$ দিয়ে ভাগ?] পেপার ব্যাখ্যা করে, $d_k$ বড় হলে dot product-ও বড় হয় এবং softmax এমন অঞ্চলে চলে যায় যেখানে gradient খুবই ছোট; $q$ ও $k$-এর উপাদানগুলো স্বাধীন, গড় ০ ও variance ১ হলে dot product-এর variance হয় $d_k$ #cite(<ref39>)। Base মডেলের মতো $d_k = 64$ হলে স্কোরের standard deviation প্রায় ৮। $(8, 0, -8)$ স্কোরে softmax দেয় $(0.9997, 0.0003, 0.0000)$ --- প্রায় সব-বা-কিছুই-না, তাই অন্য অবস্থানে gradient প্রায় পৌঁছায় না। ৮ দিয়ে ভাগ করলে স্কোর $(1, 0, -1)$ আর weight $(0.665, 0.245, 0.090)$ --- যা থেকে এখনো শেখা যায়।]

== Results and Experimental Design
<results-and-experimental-design>
#bnsub(2)[ফলাফল ও experiment-এর নকশা]
#strong[What was compared.] The paper's Table 2 compares the Transformer with published results of earlier systems on newstest2014. On English--German, the big model's 28.4 BLEU is 2.0 points above the best earlier ensemble (26.36), and even the base model (27.3) beats every earlier model and ensemble. On English--French, 41.8 is 1.2 points above the best earlier single model (40.56) and 0.5 above the best ensemble (41.29). Training cost is given in floating-point operations, #emph[estimated] from training time, the number of GPUs and an assumed sustained speed for each GPU type #cite(<ref39>).

#strong[How the comparison was made.] The baseline numbers were taken from earlier papers, not rerun. That matters because BLEU #cite(<ref105>) is not one fixed formula in practice: Post later showed that commonly used BLEU configurations, differing mainly in how the reference text is tokenised and normalised, can disagree by as much as 1.8 points, so scores from different papers "cannot be directly compared" #cite(<ref106>). The English--German margin over the best ensemble, 2.0 points, is of a similar size. On its own, the table is therefore strong but not conclusive evidence; the architecture's rapid adoption and success across the field (Section 25.6) later supplied the stronger evidence.

#bn[#strong[কী তুলনা হয়েছে:] পেপারের Table 2-এ newstest2014-এ আগের সিস্টেমগুলোর প্রকাশিত ফলের সাথে Transformer তুলনা করা হয়েছে। ইংরেজি--জার্মানে big মডেলের ২৮.৪ BLEU আগের সেরা ensemble (২৬.৩৬)-এর চেয়ে ২.০ বেশি, আর base মডেলও (২৭.৩) আগের সব মডেল ও ensemble-কে ছাড়িয়ে যায়; ইংরেজি--ফরাসিতে ৪১.৮ আগের সেরা একক মডেলের (৪০.৫৬) চেয়ে ১.২ এবং সেরা ensemble-এর (৪১.২৯) চেয়ে ০.৫ বেশি। ট্রেনিং খরচ floating-point operation-এ দেওয়া, যা ট্রেনিং সময়, GPU-সংখ্যা ও GPU-র অনুমিত গতি থেকে #emph[অনুমান] করা #cite(<ref39>)। #strong[কীভাবে তুলনা হয়েছে:] বেসলাইনের সংখ্যাগুলো আগের পেপার থেকে নেওয়া, আবার চালানো হয়নি। এটি গুরুত্বপূর্ণ, কারণ বাস্তবে BLEU #cite(<ref105>) একটি স্থির সূত্র নয়: Post পরে দেখান, reference লেখা কীভাবে tokenise ও normalise করা হয় তার ওপর নির্ভর করে প্রচলিত BLEU configuration-গুলোর মধ্যে ১.৮ পয়েন্ট পর্যন্ত পার্থক্য হতে পারে, তাই ভিন্ন পেপারের স্কোর সরাসরি তুলনীয় নয় #cite(<ref106>)। ইংরেজি--জার্মানে ২.০ পয়েন্টের ব্যবধান প্রায় একই মাপের। তাই টেবিলটি একা শক্তিশালী কিন্তু চূড়ান্ত প্রমাণ নয়; পরে পুরো ক্ষেত্রে আর্কিটেকচারটির দ্রুত গ্রহণ ও সাফল্য (Section 25.6) আরও শক্ত প্রমাণ দিয়েছে।]

#strong[Ablations on the development set.] The paper's Table 3 varies one design choice at a time on the #emph[development] set, not the test set --- good practice (Section 5.6). A single attention head was 0.9 BLEU worse than the best setting, while too many heads also hurt; reducing the key size $d_k$ hurt; bigger models were better; dropout helped against overfitting; and learned position embeddings performed almost exactly like the sinusoidal ones.

#strong[Beyond translation.] On English constituency parsing, a 4-layer Transformer reached 91.3 F1 trained on the Wall Street Journal data alone and 92.7 in a semi-supervised setting, better than all previously reported models except one, the Recurrent Neural Network Grammar. The authors describe this as achieved "despite the lack of task-specific tuning", although they did run a small number of experiments on the development set to choose dropout, learning rates and beam size.

#strong[A number that does not match.] The final version reports 41.8 BLEU on English--French in the abstract and in Table 2, but the results text still says that "our big model achieves a BLEU score of 41.0". The first arXiv version gave 41.0 in its abstract, so the mismatch looks like a remnant of a revision. The lesson applies to every paper: cross-check numbers between the abstract, the text and the tables, and when you cite a result, cite the table and the version you read.

#bn[#strong[Development set-এ ablation:] Table 3-এ একবারে একটি নকশা-সিদ্ধান্ত বদলানো হয়েছে, test set-এ নয় #emph[development] set-এ --- ভালো চর্চা (Section 5.6)। একটি attention head সেরা setting-এর চেয়ে ০.৯ BLEU খারাপ, আবার অতিরিক্ত head-ও ক্ষতিকর; key size $d_k$ কমালে ক্ষতি; বড় মডেল ভালো; dropout overfitting কমায়; আর শেখা position embedding প্রায় হুবহু sinusoidal-এর মতো। #strong[অনুবাদের বাইরে:] ইংরেজি constituency parsing-এ ৪ স্তরের Transformer শুধু Wall Street Journal ডেটায় ৯১.৩ F1 এবং semi-supervised পরিস্থিতিতে ৯২.৭ পেয়েছে --- একটি ছাড়া আগের সব মডেলের চেয়ে ভালো। লেখকরা বলেছেন কাজ-নির্দিষ্ট tuning ছাড়াই, যদিও development set-এ dropout, learning rate ও beam size বাছতে কয়েকটি experiment করেছিলেন। #strong[একটি অমিল সংখ্যা:] চূড়ান্ত সংস্করণের abstract ও Table 2-এ ইংরেজি--ফরাসিতে ৪১.৮ BLEU, কিন্তু ফলাফলের লেখায় এখনো ৪১.০। প্রথম arXiv সংস্করণের abstract-এ ছিল ৪১.০, তাই অমিলটি সংশোধনের অবশিষ্ট বলে মনে হয়। শিক্ষা: abstract, মূল লেখা ও টেবিলের সংখ্যা মিলিয়ে দেখুন, আর সাইট করার সময় কোন টেবিল ও কোন সংস্করণ পড়েছেন তা উল্লেখ করুন।]

== Critical Analysis: All Fourteen Dimensions
<critical-analysis-all-fourteen-dimensions>
#bnsub(2)[সমালোচনামূলক বিশ্লেষণ: চৌদ্দটি মাত্রা]
#figure(
  align(center)[#table(
    columns: (4%, 17%, 79%),
    align: (left,left,left,),
    table.header([\#], [Dimension], [Assessment (Chapter 10)],),
    table.hline(),
    [1], [#strong[Problem]], [Sequence transduction, tested on machine translation with standard WMT benchmarks: well defined and important.],
    [2], [#strong[Novelty]], [A new method (Chapter 17, type 1): attention already existed #cite(<ref104>), but an architecture built on attention alone, with multi-head and scaled dot-product attention, was new.],
    [3], [#strong[Method]], [Choices are justified, not just listed: a complexity table argues for self-attention, and the scaling factor is explained.],
    [4], [#strong[Dataset]], [Large standard benchmarks, but only two language pairs, both European and high-resource; low-resource languages (Chapter 24) are not tested.],
    [5], [#strong[Baselines]], [Strong and recent, but copied from earlier papers rather than rerun, with possibly different BLEU configurations #cite(<ref106>).],
    [6], [#strong[Metrics]], [BLEU only for translation, with perplexity on the development set; no human evaluation of translation quality.],
    [7], [#strong[Experiments]], [Each configuration reported from a single run; no spread across seeds.],
    [8], [#strong[Results]], [A gain of 2.0 BLEU over the best English--German ensemble is large by translation standards, and the training-cost reduction is substantial.],
    [9], [#strong[Statistics]], [No confidence intervals or significance tests --- typical for the field in 2017, but a gap by today's standards (Section 6.7).],
    [10], [#strong[Ablation]], [A model of good practice: a systematic table varying heads, key size, model size, dropout and positional encoding, on the development set.],
    [11], [#strong[Reproducibility]], [Code released (tensor2tensor), hyperparameters and hardware stated; a strong record for its time.],
    [12], [#strong[Generalization]], [One extra task (parsing) is encouraging; long sequences, other languages and other modalities are left untested.],
    [13], [#strong[Limitations]], [No limitations section. The quadratic cost of self-attention is visible in the complexity table, and restricted attention for large inputs such as images, audio and video is listed as future work --- honest, but brief.],
    [14], [#strong[Practical value]], [Very high: parallel training cut cost, and the architecture became the foundation of later language and vision models.],
  )]
  , kind: table
  )

#bn[চৌদ্দটি মাত্রার সারাংশ: সমস্যা সুনির্দিষ্ট ও গুরুত্বপূর্ণ; নতুনত্ব --- নতুন পদ্ধতি (attention আগেই ছিল, কিন্তু শুধু attention দিয়ে আর্কিটেকচার নতুন) #cite(<ref104>)\; পদ্ধতির সিদ্ধান্তগুলো যুক্তিসহ; ডেটা বড় ও প্রমিত, কিন্তু মাত্র দুটি ইউরোপীয় উচ্চ-সম্পদের ভাষাজোড়া --- স্বল্প-সম্পদের ভাষা (Chapter 24) পরীক্ষিত নয়; বেসলাইন শক্তিশালী কিন্তু আগের পেপার থেকে নেওয়া, BLEU configuration ভিন্ন হতে পারে #cite(<ref106>)\; মেট্রিক শুধু BLEU, মানব মূল্যায়ন নেই; প্রতিটি configuration একবার চালানো; confidence interval বা significance test নেই --- ২০১৭-র মানদণ্ডে স্বাভাবিক, আজকের মানদণ্ডে ঘাটতি; ablation অনুকরণীয়; কোড প্রকাশিত; জেনারেলাইজেশন --- একটি অতিরিক্ত কাজ (parsing); সীমাবদ্ধতা অংশ নেই, তবে quadratic খরচ টেবিলে দৃশ্যমান ও ভবিষ্যৎ কাজে উল্লিখিত; ব্যবহারিক মূল্য অত্যন্ত বেশি।]

== Red-Flag Check
<red-flag-check-25>
#bnsub(2)[রেড-ফ্ল্যাগ যাচাই]
Against the sixteen flags of Chapter 11, the paper does well: standard datasets (not flag 1 or 15), strong and recent baselines (not flags 2 and 11), an ablation table (not flag 7), detailed implementation and released code (not flags 13 and 14), and an explicit cost analysis (not flag 16). Two flags apply by today's standards: a single metric for translation (flag 5) and no statistical analysis (flag 6). Against the LLM-era flags of Chapter 22, it is notably #emph[better] than many later papers: it reports its training cost (not flag 25).

One claim deserves a caution that the paper itself could not have known. As a "side benefit", the authors suggest that "self-attention could yield more interpretable models" and show attention patterns that look linguistically meaningful. Later work found that attention weights are often uncorrelated with gradient-based measures of feature importance, and that very different attention distributions can produce the same prediction #cite(<ref107>)\; a reply argued that whether attention counts as an explanation depends on how "explanation" is defined and tested #cite(<ref108>). When any paper presents attention maps as explanations, ask what evidence shows that the model actually relies on what the map highlights.

#bn[Chapter 11-এর ষোলোটি flag-এ পেপারটি ভালো করে: প্রমিত ডেটাসেট, শক্তিশালী ও সাম্প্রতিক বেসলাইন, ablation টেবিল, বিস্তারিত বাস্তবায়ন ও প্রকাশিত কোড, এবং খরচের স্পষ্ট বিশ্লেষণ। আজকের মানদণ্ডে দুটি flag প্রযোজ্য: অনুবাদে একটিমাত্র মেট্রিক (flag ৫) ও পরিসংখ্যানগত বিশ্লেষণের অভাব (flag ৬)। Chapter 22-এর LLM-যুগের flag-এর তুলনায় এটি পরের অনেক পেপারের চেয়ে #emph[ভালো]: ট্রেনিং খরচ রিপোর্ট করে (flag ২৫ নয়)। একটি দাবিতে সতর্কতা দরকার, যা পেপারটি তখন জানতে পারত না: লেখকরা "পার্শ্ব-সুবিধা" হিসেবে বলেছেন self-attention মডেলকে বেশি ব্যাখ্যাযোগ্য করতে পারে। পরের গবেষণায় দেখা গেছে attention weight প্রায়ই gradient-ভিত্তিক গুরুত্বের পরিমাপের সাথে সম্পর্কহীন, আর একেবারে ভিন্ন attention বণ্টনও একই prediction দিতে পারে #cite(<ref107>)\; এর জবাবে যুক্তি দেওয়া হয়েছে যে attention ব্যাখ্যা কিনা তা নির্ভর করে "ব্যাখ্যা"-র সংজ্ঞা ও পরীক্ষার ওপর #cite(<ref108>)। কোনো পেপার attention map-কে ব্যাখ্যা হিসেবে দেখালে জিজ্ঞেস করুন: মডেল যে আসলেই map-এ চিহ্নিত অংশের ওপর নির্ভর করে, তার প্রমাণ কী?]

== The Gap It Addressed, and What Came Next
<the-gap-it-addressed-and-what-came-next>
#bnsub(2)[এটি কোন গ্যাপ পূরণ করেছিল, এবং এরপর কী হলো]
#strong[The gap.] Recurrent networks process a sequence one position after another; in the paper's words, this "inherently sequential nature precludes parallelization within training examples, which becomes critical at longer sequence lengths". The complexity table makes the argument precise: a recurrent layer needs $O(n)$ sequential operations and a path of length $O(n)$ between distant positions, while a self-attention layer needs $O(1)$ for both, at a cost of $O(n^2 dot d)$ computation per layer for a sequence of length $n$ and width $d$. In the terms of Chapter 13, this was a methodological and scalability gap (Sections 13.2 and 13.14): existing models could not use parallel hardware well.

#strong[What came next.] As with AlexNet, the paper's own limits became the next research gaps:

- #strong[Quadratic cost.] Attention over long inputs is slow and memory-hungry. FlashAttention, for example, computes exact attention with far fewer memory reads and writes on the GPU #cite(<ref110>).
- #strong[Other modalities] --- the authors' own future work. The Vision Transformer applied a pure Transformer to sequences of image patches and performed very well on image classification when pre-trained on large data #cite(<ref109>), closing the circle with the AlexNet story of Chapter 18.
- #strong[Pretraining at scale.] BERT #cite(<ref40>) and GPT-3 #cite(<ref71>) built on the Transformer and led to the large language models whose papers Chapter 22 taught you to read.

#bn[#strong[গ্যাপ:] Recurrent নেটওয়ার্ক একটির পর একটি অবস্থান প্রক্রিয়া করে; পেপারের ভাষায়, এই অন্তর্নিহিত ধারাবাহিক প্রকৃতি একটি training উদাহরণের ভেতরে সমান্তরাল গণনা আটকে দেয়, যা দীর্ঘ sequence-এ গুরুতর হয়ে ওঠে। জটিলতার টেবিল যুক্তিটি সুনির্দিষ্ট করে: recurrent স্তরে $O(n)$ ধারাবাহিক ধাপ ও দূরের অবস্থানের মধ্যে $O(n)$ দৈর্ঘ্যের পথ লাগে, আর self-attention-এ দুটিই $O(1)$ --- বিনিময়ে প্রতি স্তরে $O(n^2 dot d)$ গণনা। Chapter 13-এর ভাষায় এটি পদ্ধতিগত ও scalability গ্যাপ (Section 13.2 ও 13.14)। #strong[এরপর কী হলো:] AlexNet-এর মতোই পেপারের নিজস্ব সীমাবদ্ধতা পরের গবেষণার গ্যাপ হয়েছে: quadratic খরচ --- যেমন FlashAttention GPU-তে অনেক কম memory পড়া-লেখায় হুবহু attention হিসাব করে #cite(<ref110>)\; অন্য মাধ্যম --- লেখকদের নিজস্ব ভবিষ্যৎ কাজ; Vision Transformer ছবির টুকরোর sequence-এ বিশুদ্ধ Transformer প্রয়োগ করে বড় ডেটায় pre-train করলে image classification-এ খুব ভালো করেছে #cite(<ref109>), যা Chapter 18-এর AlexNet-গল্পের বৃত্ত পূর্ণ করে; বড় পরিসরে pretraining --- BERT #cite(<ref40>) ও GPT-3 #cite(<ref71>) Transformer-এর ওপর গড়ে উঠে Chapter 22-এর large language model-এর পথ খুলেছে।]

== Lessons: Two Landmark Papers Side by Side
<lessons-two-landmark-papers-side-by-side>
#bnsub(2)[শিক্ষা: দুটি landmark পেপার পাশাপাশি]
#figure(
  align(center)[#table(
    columns: (22%, 39%, 39%),
    align: (left,left,left,),
    table.header([Aspect], [AlexNet, 2012 (Chapter 18)], [Transformer, 2017],),
    table.hline(),
    [#strong[Novelty type]], [Combination and scaling of known parts (type 5)], [A new method (type 1)],
    [#strong[Comparison]], [Every entrant in the same competition, under the same rules], [Published numbers copied from earlier papers],
    [#strong[Statistics]], [Single run], [Single run],
    [#strong[Ablation]], [Discussed in the text], [A systematic table on the development set],
    [#strong[Cost reporting]], [Training time and GPU-memory limits], [Training time and estimated floating-point operations],
    [#strong[Limits that became gaps]], [Depth and memory, leading to deeper networks such as ResNet], [Quadratic cost and other modalities, leading to efficient attention and the Vision Transformer],
  )]
  , kind: table
  )

Four lessons carry over to any paper you read. #strong[A landmark is not flawless]: both papers report single runs, which you should neither copy nor use to dismiss them. #strong[Check the numbers yourself]: the 41.0 and 41.8 mismatch was hiding in plain sight. #strong[Read the ablation table]: it tells you which parts of a method actually matter. #strong[Read the future work as a list of gaps]: both papers named the limits that the next generation of research went on to address.

#bn[দুটি পেপারের তুলনা: নতুনত্বের ধরন (AlexNet সংমিশ্রণ ও scaling, Transformer নতুন পদ্ধতি), তুলনার পদ্ধতি (একই প্রতিযোগিতার নিয়ম বনাম আগের পেপার থেকে নেওয়া সংখ্যা), পরিসংখ্যান (দুটিতেই একবার চালানো), ablation (লেখায় আলোচনা বনাম development set-এ পদ্ধতিগত টেবিল), খরচ রিপোর্টিং, এবং যে সীমাবদ্ধতা পরের গ্যাপ হয়েছে। চারটি শিক্ষা যেকোনো পেপারে কাজে লাগে: #strong[landmark মানে ত্রুটিহীন নয়]\; #strong[সংখ্যা নিজে যাচাই করুন] --- ৪১.০ বনাম ৪১.৮ চোখের সামনেই লুকিয়ে ছিল; #strong[ablation টেবিল পড়ুন] --- পদ্ধতির কোন অংশ আসলে কাজ করে তা এখানেই; #strong[ভবিষ্যৎ কাজকে গ্যাপের তালিকা হিসেবে পড়ুন]।]

== Exercises
<exercises-25>
#bnsub(2)[অনুশীলনী]
Answers and hints are in Appendix E.

+ Repeat the worked example of Section 25.2 with the query $q = (0, 1)$ and the same keys and values. Which positions receive the largest weights, and what is the output?

  #bni[Section 25.2-এর উদাহরণটি query $q = (0, 1)$ এবং একই key ও value দিয়ে আবার করুন। কোন অবস্থান সবচেয়ে বেশি weight পায়, আর আউটপুট কী?]

+ If the components of $q$ and $k$ are independent with mean 0 and variance 1, what is the standard deviation of $q dot k$ when $d_k = 256$, and what would the scaling factor be?

  #bni[$q$ ও $k$-এর উপাদান স্বাধীন, গড় ০ ও variance ১ হলে $d_k = 256$-এ $q dot k$-এর standard deviation কত, আর scaling factor কী হবে?]

+ You want to cite the Transformer's English--French result in your own paper. Which number do you report, and how do you make your citation unambiguous?

  #bni[নিজের পেপারে Transformer-এর ইংরেজি--ফরাসি ফল সাইট করতে চান। কোন সংখ্যা দেবেন, এবং সাইটেশন কীভাবে দ্ব্যর্থহীন করবেন?]

+ Your translation model scores 0.8 BLEU higher than a baseline number copied from another paper. Using Section 25.3, what must you check before you claim an improvement?

  #bni[আপনার অনুবাদ-মডেল অন্য পেপার থেকে নেওয়া বেসলাইনের চেয়ে ০.৮ BLEU বেশি পেয়েছে। Section 25.3 অনুযায়ী উন্নতি দাবির আগে কী যাচাই করবেন?]

+ Choose the weakest of the fourteen dimensions in Section 25.4 and design one experiment that would strengthen it.

  #bni[Section 25.4-এর চৌদ্দটির মধ্যে সবচেয়ে দুর্বল মাত্রাটি বেছে নিন এবং তা শক্তিশালী করতে একটি experiment নকশা করুন।]

+ Which two lessons of this case study apply most directly to the mini-project of Part VIII, and how?

  #bni[এই কেস স্টাডির কোন দুটি শিক্ষা Part VIII-এর মিনি-প্রজেক্টে সবচেয়ে সরাসরি প্রযোজ্য, এবং কীভাবে?]

#recap[
- The Transformer replaced recurrence with attention, trading sequential steps for $O(n^2 dot d)$ computation per layer that runs in parallel.

  #bni[Transformer recurrence-এর জায়গায় attention এনেছে --- ধারাবাহিক ধাপের বিনিময়ে প্রতি স্তরে সমান্তরালে চলা $O(n^2 dot d)$ গণনা।]

- Scaled dot-product attention is a weighted average: scores, scaled by $sqrt(d_k)$ so that softmax does not saturate, become weights over the values.

  #bni[Scaled dot-product attention একটি ভারযুক্ত গড়: স্কোরকে $sqrt(d_k)$ দিয়ে ভাগ করা হয় যাতে softmax সম্পৃক্ত না হয়, তারপর value-গুলোর ওপর weight হয়।]

- Its evidence was strong but not airtight: baselines copied from other papers, BLEU configurations that may differ, single runs, and one inconsistent number.

  #bni[এর প্রমাণ শক্তিশালী কিন্তু নিশ্ছিদ্র নয়: অন্য পেপার থেকে নেওয়া বেসলাইন, ভিন্ন হতে পারে এমন BLEU configuration, একবার চালানো, আর একটি অসামঞ্জস্যপূর্ণ সংখ্যা।]

- Its ablation table and released code set a high standard; its stated future work became the next decade's research gaps.

  #bni[এর ablation টেবিল ও প্রকাশিত কোড উঁচু মান স্থাপন করেছে; এর ঘোষিত ভবিষ্যৎ কাজ পরের দশকের রিসার্চ গ্যাপ হয়েছে।]

]
