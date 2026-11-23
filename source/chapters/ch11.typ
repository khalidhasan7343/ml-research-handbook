#import "../template.typ": *

= Research Paper Red Flags
<research-paper-red-flags>
#bnsub(1)[গবেষণাপত্রের রেড ফ্ল্যাগ]
For each: #strong[What it means → Why it's problematic → How to detect it.]

#bn[প্রতিটির জন্য: এর অর্থ কী → কেন সমস্যাজনক → কীভাবে শনাক্ত করবেন।]

#figure(
  align(center)[#table(
    columns: (3.83%, 17.7%, 42.69%, 35.78%),
    align: (left,left,left,left,),
    table.header([\#], [Red Flag], [English], [বাংলা],),
    table.hline(),
    [1], [#strong[Very small dataset without justification]], [Fewer than a few hundred samples on complex tasks → high overfitting risk; check the dataset-size statement in methodology.], [জটিল কাজে কয়েকশোর কম নমুনা → ওভারফিটিং ঝুঁকি বেশি।],
    [2], [#strong[Weak baselines]], [Comparing a complex proposed model only against trivial/untuned baselines creates a false sense of superiority.], [দুর্বল বেসলাইনের সাথে তুলনা করে মিথ্যা শ্রেষ্ঠত্বের ধারণা তৈরি করা।],
    [3], [#strong[Data leakage]], [Preprocessing fit on the entire dataset before splitting inflates reported accuracy artificially.], [পুরো ডেটাসেটে preprocessing fit করলে accuracy কৃত্রিমভাবে বাড়ে।],
    [4], [#strong[Unclear train/test split]], [No stated ratio/method → possible overlap → hidden memorization.], [Split অস্পষ্ট থাকলে overlap ও মুখস্থ করার ঝুঁকি থাকে।],
    [5], [#strong[Only one evaluation metric]], [Reporting raw accuracy alone on imbalanced data is deceptive.], [Imbalanced ডেটায় শুধু accuracy রিপোর্ট করা বিভ্রান্তিকর।],
    [6], [#strong[No statistical analysis]], [Raw metric differences without std dev/significance tests could be pure chance.], [Std dev/significance test ছাড়া পার্থক্য নিছক দৈব হতে পারে।],
    [7], [#strong[No ablation when necessary]], [A complex hybrid model without ablation makes it impossible to know which part actually helps.], [Ablation ছাড়া বোঝা যায় না কোন অংশ আসলে সাহায্য করছে।],
    [8], [#strong[Cherry-picked results]], [Reporting only the best of many runs hides instability.], [অনেক ট্রায়ালের মধ্যে শুধু সেরাগুলো দেখানো অস্থিরতা লুকায়।],
    [9], [#strong[No error analysis]], [High accuracy reported but no inspection of #emph[where/why] it fails.], [High accuracy দেখানো কিন্তু কোথায়/কেন ভুল হচ্ছে তা না দেখানো।],
    [10], [#strong[Unrealistic assumptions]], [Ideal conditions that never hold in real deployment.], [বাস্তবে কখনো সত্য হয় না এমন আদর্শ শর্ত ধরে নেওয়া।],
    [11], [#strong[No comparison with recent methods]], [Only comparing to old methods, ignoring recent SOTA.], [শুধু পুরনো মডেলের সাথে তুলনা, সাম্প্রতিক SOTA উপেক্ষা করা।],
    [12], [#strong[Claims stronger than evidence]], [Generalized claims from narrow, small-scale experiments.], [সংকীর্ণ পরীক্ষা থেকে অতিরঞ্জিত সাধারণ দাবি।],
    [13], [#strong[Missing implementation details]], [No hyperparameters/optimizer/epoch info → non-reproducible.], [হাইপারপ্যারামিটার/অপ্টিমাইজার তথ্য না থাকলে reproduce করা যায় না।],
    [14], [#strong[Poor reproducibility]], [No code/dataset/environment sharing.], [কোড/ডেটাসেট/এনভায়রনমেন্ট শেয়ার না করা।],
    [15], [#strong[Overfitting to one specific dataset]], [High score on one custom dataset, never validated on any public benchmark.], [একটি কাস্টম ডেটাসেটে ভালো ফলাফল কিন্তু কোনো পাবলিক বেঞ্চমার্কে যাচাই করা হয়নি।],
    [16], [#strong[No computational-cost analysis]], [A “complex model” proposed with no reported training time/parameters/FLOPs.], [জটিল মডেল প্রস্তাব করা হয়েছে কিন্তু runtime/parameter/FLOPs রিপোর্ট নেই।],
  )]
  , kind: table
  )

#strong[Practical detection tip / বাস্তব শনাক্তকরণ টিপ:] Red flags rarely appear alone --- a paper with weak baselines (flag \#2) very often also lacks statistical testing (flag \#6) and ablation studies (flag \#7), because all three stem from the same underlying issue: insufficient experimental rigor.

#bn[রেড ফ্ল্যাগ সাধারণত একা আসে না --- দুর্বল বেসলাইন (\#2) থাকলে প্রায়ই statistical testing (\#6) ও ablation (\#7)-ও অনুপস্থিত থাকে, কারণ তিনটিই একই মূল সমস্যা থেকে আসে: পর্যাপ্ত experimental কঠোরতার অভাব।]

#recap[
- Red flags rarely appear alone --- weak baselines, missing stats, and missing ablation share one root cause: low rigor.

  #bni[Red flag একা আসে না --- দুর্বল বেসলাইন, statistics ও ablation-এর অভাব একই মূল কারণ থেকে আসে।]

]
