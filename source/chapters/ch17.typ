#import "../template.typ": *

= Novelty
<novelty>
#bnsub(1)[নতুনত্ব বিশ্লেষণ]
== 12 Types of Scientific Novelty
<types-of-scientific-novelty>
#bnsub(2)[নতুনত্বের ১২টি ধরন]
#figure(
  align(center)[#table(
    columns: (5.74%, 20.13%, 43.82%, 30.3%),
    align: (left,left,left,left,),
    table.header([\#], [Type], [English], [বাংলা],),
    table.hline(),
    [1], [New Method], [A brand-new algorithm (e.g., the original GAN).], [সম্পূর্ণ নতুন অ্যালগরিদম।],
    [2], [Improved Method], [A tweak to an existing architecture that boosts scores.], [বিদ্যমান আর্কিটেকচারে উন্নতি।],
    [3], [New Dataset], [A curated, released, standardized benchmark.], [নতুন প্রমিত ডেটাসেট প্রকাশ।],
    [4], [New Application], [Applying ML to a high-value domain for the first time.], [নতুন ক্ষেত্রে ML-এর প্রথম প্রয়োগ।],
    [5], [New Combination], [Melding two separate architectures (e.g., SE-ResNet).], [দুটি আর্কিটেকচারের সংমিশ্রণ।],
    [6], [New Evaluation Framework], [A more rigorous scoring method.], [নতুন কঠোর মূল্যায়ন পদ্ধতি।],
    [7], [New Theoretical Insight], [Proving mathematical convergence bounds.], [নতুন গাণিতিক তাত্ত্বিক প্রমাণ।],
    [8], [New Empirical Finding], [Discovering unexpected performance trends.], [অপ্রত্যাশিত অভিজ্ঞতামূলক আবিষ্কার।],
    [9], [New Context], [Evaluating in a completely different environment (e.g., edge deployment).], [সম্পূর্ণ নতুন পরিবেশে মূল্যায়ন।],
    [10], [Better Generalization], [Out-of-distribution performance gains.], [উন্নত OOD পারফরম্যান্স।],
    [11], [Better Robustness], [Resistance to noise/adversarial attacks.], [নয়েজ/আক্রমণ প্রতিরোধ ক্ষমতা বৃদ্ধি।],
    [12], [Better Efficiency], [Drastically lower parameter count/GPU hours.], [দক্ষতা বৃদ্ধি (কম parameter/GPU সময়)।],
  )]
  , kind: table
  )

== The Danger of Superficial Novelty
<the-danger-of-superficial-novelty>
#bnsub(2)[নামমাত্র নতুনত্বের বিপদ]
#strong[Do NOT assume that applying an existing algorithm to a new dataset automatically represents strong novelty.] Reviewers catch this immediately. Taking a standard off-the-shelf classifier and fitting it on a local dataset --- without modifying the architecture, explaining domain-specific features, or resolving a genuine context gap --- is considered superficial, low-quality research. Novelty must be #emph[earned] through one of the 12 types above, not merely claimed.

#bn[#strong[কোনো বিদ্যমান অ্যালগরিদম নতুন ডেটাসেটে প্রয়োগ করলেই তা স্বয়ংক্রিয়ভাবে শক্তিশালী নতুনত্ব হয় না।] Reviewer-রা এটি সহজেই ধরে ফেলেন। কোনো architectural পরিবর্তন, domain-specific ব্যাখ্যা বা প্রকৃত context gap সমাধান ছাড়া off-the-shelf classifier local ডেটাসেটে প্রয়োগ করা superficial ও নিম্নমানের গবেষণা হিসেবে গণ্য হয়। নতুনত্ব উপরের ১২টি ধরনের একটির মাধ্যমে “অর্জন” করতে হয়, শুধু দাবি করলেই হয় না।]

#recap[
- Applying an existing algorithm to a new dataset is NOT automatic novelty --- it must match one of the 12 types.

  #bni[বিদ্যমান অ্যালগরিদম নতুন ডেটাসেটে প্রয়োগ করলেই novelty হয় না --- এটি ১২টি ধরনের একটির সাথে মিলতে হবে।]

]
