#import "../template.typ": *

= Anatomy of an ML Research Paper
<anatomy-of-an-ml-research-paper>
#bnsub(1)[একাডেমিক ML পেপারের গঠন]
For every section: #strong[Purpose → What it contains → What to extract → Questions to ask → Common mistakes / red flags.]

#figure(
  align(center)[#table(
    columns: (14.88%, 31.14%, 25.09%, 28.89%),
    align: (left,left,left,left,),
    table.header([Section], [Purpose (English)], [উদ্দেশ্য (বাংলা)], [Questions to ask while reading],),
    table.hline(),
    [#strong[Title]], [Summarizes the contribution in one line], [একলাইনে অবদান বোঝায়], [Does it overclaim relative to the actual results?],
    [#strong[Abstract]], [Compresses problem, method, result, contribution into \~150-250 words], [সমস্যা, method, result, contribution সংক্ষেপে বলে], [Use the template in Section 8.4],
    [#strong[Keywords]], [Helps indexing/search], [সার্চ/ইনডেক্সিং-এ সাহায্য করে], [Are they specific or generic?],
    [#strong[Introduction]], [Builds the case for why this work matters (see Section 8.5 flow)], [কাজের গুরুত্ব প্রতিষ্ঠা করে], [Can you trace Problem→Gap→Contribution?],
    [#strong[Related Work / Literature Review]], [Surveys prior work, sets up the gap], [পূর্ববর্তী কাজ পর্যালোচনা করে গ্যাপ প্রতিষ্ঠা করে], [Are recent (last 2-3 yrs) works included?],
    [#strong[Problem Statement]], [Precise, often mathematical, formulation of the problem], [সমস্যার সুনির্দিষ্ট (প্রায়ই গাণিতিক) সংজ্ঞা], [Is it measurable?],
    [#strong[Research Question(s)]], [The specific testable question(s)], [নির্দিষ্ট পরীক্ষাযোগ্য প্রশ্ন], [Does it meet the criteria in Chapter 16?],
    [#strong[Methodology]], [Detailed architecture/algorithm/pipeline], [বিস্তারিত আর্কিটেকচার/অ্যালগরিদম], [Is it reproducible from this description alone?],
    [#strong[Dataset]], [Source, size, class distribution, splits], [উৎস, আকার, class distribution, split], [Any of the Chapter 3 red flags present?],
    [#strong[Experimental Setup]], [Hardware, hyperparameters, training details], [হার্ডওয়্যার, হাইপারপ্যারামিটার, ট্রেনিং ডিটেইলস], [Enough detail to replicate?],
    [#strong[Results]], [Main comparison tables/figures], [প্রধান ফলাফল টেবিল/চিত্র], [Fair comparison? Statistical significance?],
    [#strong[Discussion]], [Interprets results in context], [ফলাফলের প্রেক্ষাপটভিত্তিক ব্যাখ্যা], [Does discussion match the actual numbers?],
    [#strong[Limitations]], [Honest boundaries of the work], [কাজের সৎ সীমাবদ্ধতা], [Are they specific, or vague/generic?],
    [#strong[Conclusion]], [Summary + future work], [সারাংশ + ভবিষ্যৎ কাজ], [Consistent with the abstract's claims?],
    [#strong[References]], [Citation list], [সাইটেশন তালিকা], [Are recent SOTA works cited?],
    [#strong[Supplementary Material]], [Extra experiments, code, extended tables], [অতিরিক্ত পরীক্ষা, কোড], [Is code/data actually shared?],
  )]
  , kind: table
  )

#recap[
- Every paper section has a specific job --- read “Related Work” as gap-hunting, not just background.

  #bni[প্রতিটি section-এর নির্দিষ্ট কাজ আছে --- “Related Work” গ্যাপ খোঁজার জন্য পড়ুন, শুধু background হিসেবে নয়।]

- Vague, generic “limitations” are themselves a red flag (see Chapter 11) --- good limitations are specific.

  #bni[অস্পষ্ট, generic “limitation” নিজেই একটি red flag --- ভালো limitation নির্দিষ্ট হয়।]

]
