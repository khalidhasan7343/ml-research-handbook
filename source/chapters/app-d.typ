#import "../template.typ": *

= Cheat Sheet: How to Read Any ML Paper
<cheat-sheet-how-to-read-any-ml-paper>
#bnsub(1)[চিট শিট: যেকোনো ML পেপার কীভাবে পড়বেন]
Answer these seventeen questions for any paper you read. The last column tells you where in the paper to look, and where in this book the skill is taught.

#bn[যেকোনো পেপার পড়ার সময় এই ১৭টি প্রশ্নের উত্তর খুঁজুন। শেষ কলামে আছে পেপারের কোথায় দেখবেন, এবং এই বইয়ের কোথায় দক্ষতাটি শেখানো হয়েছে।]

#figure(
  align(center)[#table(
    columns: (6.44%, 29.65%, 26.31%, 37.6%),
    align: (left,left,left,left,),
    table.header([\#], [Question], [প্রশ্ন], [Where to look],),
    table.hline(),
    [1], [What problem are they solving?], [তারা কোন সমস্যা সমাধান করছে?], [Abstract, introduction · Section 8.4],
    [2], [Why is it important?], [এটি কেন গুরুত্বপূর্ণ?], [Introduction (motivation) · Section 8.5],
    [3], [What has already been done?], [আগে কী কী কাজ হয়েছে?], [Related work · Chapter 9],
    [4], [What is missing?], [কী অনুপস্থিত?], [End of related work, "However…" · Section 8.5],
    [5], [What is the research gap?], [রিসার্চ গ্যাপ কোনটি?], [Just before "we propose" · Chapter 13],
    [6], [What is the research question?], [মূল রিসার্চ প্রশ্ন কী?], [Introduction, objective · Chapter 16],
    [7], [What did they propose?], [তারা কী প্রস্তাব করেছে?], [Method section, Figure 1 · Chapter 4],
    [8], [What dataset did they use?], [কোন ডেটাসেট ব্যবহার করেছে?], [Dataset / experiments · Chapter 3],
    [9], [How did they preprocess the data?], [ডেটা কীভাবে প্রস্তুত করেছে?], [Method, appendix · Chapter 2],
    [10], [What baselines did they use?], [কোন বেসলাইন ব্যবহার করেছে?], [Experimental setup · Chapter 10],
    [11], [What metrics did they use?], [কোন মেট্রিক ব্যবহার করেছে?], [Results · Chapter 5],
    [12], [What were the results?], [ফলাফল কী ছিল?], [Results tables · Section 8.6],
    [13], [Was the comparison fair?], [তুলনাটি কি ন্যায্য ছিল?], [Setup, tables · Chapters 6 and 11],
    [14], [What is actually novel?], [আসলে নতুন কী?], [Contribution list · Chapter 17],
    [15], [What are the limitations?], [সীমাবদ্ধতা কী কী?], [Limitations, conclusion · Chapter 14],
    [16], [What remains unsolved?], [কী এখনো অমীমাংসিত?], [Future work, your own analysis · Chapter 15],
    [17], [What could I research next?], [আমি পরবর্তীতে কী গবেষণা করতে পারি?], [Your notes · Chapters 15--17],
  )]
  , kind: table
  )

== Closing Note
<closing-note>
#bnsub(2)[সমাপনী কথা]
This handbook is meant to be used, not memorised. Return to Parts III and IV whenever you evaluate a new paper or look for a thesis direction, and to Part I whenever you need to refresh the machinery behind a method. When you start a study of your own, Parts VII and VIII take you from a verified gap to a submitted paper. The real goal is a habit: asking these seventeen questions, automatically, every time you open a paper.

#bn[এই হ্যান্ডবুক মুখস্থ করার জন্য নয়, ব্যবহারের জন্য। নতুন কোনো পেপার মূল্যায়ন করার সময় বা থিসিসের দিক খুঁজতে গেলে Part III ও IV-এ ফিরে আসুন, আর কোনো পদ্ধতির ভেতরের ML মেকানিজম মনে করতে Part I দেখুন। নিজের গবেষণা শুরু করলে Part VII ও VIII আপনাকে যাচাইকৃত গ্যাপ থেকে জমা দেওয়া পেপার পর্যন্ত নিয়ে যাবে। আসল লক্ষ্য একটি অভ্যাস গড়ে তোলা: প্রতিবার নতুন পেপার খোলার সময় এই ১৭টি প্রশ্ন স্বয়ংক্রিয়ভাবে জিজ্ঞেস করা।]
