#import "../template.typ": *

= Gap, Limitation, Future Work and Novelty
<gap-limitation-future-work-and-novelty>
#bnsub(1)[গ্যাপ, সীমাবদ্ধতা, ভবিষ্যৎ কাজ ও নতুনত্বের পার্থক্য]
Beginners frequently confuse these terms --- a major reason papers/theses get rejected or criticized.

#bn[শুরুর দিকের গবেষকরা প্রায়ই এই টার্মগুলো গুলিয়ে ফেলেন --- এটি পেপার/থিসিস প্রত্যাখ্যানের একটি বড় কারণ।]

#figure(
  align(center)[#table(
    columns: (9.04%, 32.35%, 29.36%, 29.25%),
    align: (left,left,left,left,),
    table.header([Term], [English definition], [বাংলা সংজ্ঞা], [Example],),
    table.hline(),
    [#strong[Research Gap]], [A missing scientific link across the #emph[entire field's] literature.], [সমগ্র ক্ষেত্রের সাহিত্যে একটি অনুপস্থিত বৈজ্ঞানিক যোগসূত্র।], [“No existing segmentation model preserves spatial detail under extreme down-sampling.”],
    [#strong[Limitation]], [A design boundary honestly declared by #emph[this paper's] authors.], [এই পেপারের লেখকরা স্বেচ্ছায় জানানো একটি সীমা।], [“Our model was only evaluated on high-resolution grayscale images.”],
    [#strong[Weakness]], [A flaw or poor design choice in a specific paper.], [নির্দিষ্ট পেপারে থাকা একটি ত্রুটি বা দুর্বল ডিজাইন।], [“The authors did not scale features before SVM, making results unstable.”],
    [#strong[Open Problem]], [A massive, well-known challenge the entire global community has struggled with for decades.], [বৈশ্বিক গবেষক সম্প্রদায় দশকের পর দশক ধরে যে বিশাল চ্যালেঞ্জ সমাধান করতে পারেনি।], [“Proving whether P = NP.”],
    [#strong[Future Work]], [Next steps #emph[these specific authors] plan for their own study.], [#emph[এই লেখকদের] নিজেদের গবেষণার পরবর্তী পরিকল্পিত ধাপ।], [“We plan to test this pipeline on 3D volumetric MRI next.”],
    [#strong[Research Opportunity]], [A broad, promising domain where researchers #emph[could] work --- not yet a specific gap.], [একটি বিস্তৃত সম্ভাবনাময় ক্ষেত্র যেখানে গবেষণা করা যেতে পারে --- এখনো নির্দিষ্ট গ্যাপ নয়।], [“Using generative models to synthesize training data.”],
    [#strong[Novelty]], [The unique, original contribution #emph[this study] introduces to resolve a gap.], [কোনো গ্যাপ সমাধানের জন্য #emph[এই গবেষণার] নিজস্ব মৌলিক অবদান।], [“We introduce a dual-path skip connection preserving spatial grids.”],
  )]
  , kind: table
  )

#strong[Why beginners confuse them / কেন এগুলো গুলিয়ে যায়:] All of them sound like “something is missing.” The key discriminator is #strong[scope] --- is the missing piece missing from #emph[the whole field] (gap/open problem) or just #emph[this one paper] (limitation/weakness/future work)? And is it a #emph[problem to solve] (gap) or a #emph[solution being offered] (novelty)?

#bn[সবগুলোই “কিছু একটা অনুপস্থিত” মনে হয়। মূল পার্থক্যকারী হলো পরিধি --- অনুপস্থিত অংশটি পুরো ক্ষেত্র থেকে নাকি একটি নির্দিষ্ট পেপার থেকে? এবং এটি কি #emph[সমাধান করার মতো একটি সমস্যা (gap) নাকি একটি প্রস্তাবিত সমাধান] (novelty)?]

#recap[
- The discriminator is #strong[scope] (field-wide gap vs paper-specific limitation) and #strong[direction] (problem = gap, solution = novelty).

  #bni[পার্থক্যকারী হলো পরিধি (ক্ষেত্র-জোড়া গ্যাপ বনাম পেপার-নির্দিষ্ট limitation) এবং দিক (সমস্যা = গ্যাপ, সমাধান = novelty)।]

]
