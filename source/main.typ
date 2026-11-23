// The Machine Learning + Research Paper Reading + Critical Analysis
// + Research Gap Identification Handbook — Final Edition (2026)
//
// Build (from the repository root):  make
//   or:  typst compile --root source --font-path source/fonts source/main.typ book/ML_Research_Handbook.pdf
//
// This file is the book's outline: front matter, the six parts with their
// chapters, the appendices and the references. Styling lives in template.typ.
#import "template.typ": *

#show: book

#cover()
#copyright-page()
#contents()
#acknowledgements()
#include "front/preface.typ"

#set page(numbering: "1")
#counter(page).update(1)

// ------------------------------------------------------------------------
#part("I", "Machine Learning Foundations", "মেশিন লার্নিংয়ের ভিত্তি", "The vocabulary, workflow, data, algorithms, metrics and experimental logic that every paper assumes you already know.", "প্রতিটি পেপার ধরে নেয় আপনি যে শব্দভাণ্ডার, workflow, ডেটা, অ্যালগরিদম, মেট্রিক ও experiment-এর যুক্তি জানেন — সেগুলোর ভিত্তি।", "Chapters 1–6")
#include "chapters/ch01.typ"        // Machine Learning Foundations
#include "chapters/ch02.typ"        // The Complete ML Project Pipeline
#include "chapters/ch03.typ"        // Dataset Analysis and Data Quality
#include "chapters/ch04.typ"        // Core ML and Deep Learning Algorithms
#include "chapters/ch05.typ"        // Model Evaluation
#include "chapters/ch06.typ"        // Experimental Design

// ------------------------------------------------------------------------
#part("II", "Reading Research Papers", "গবেষণাপত্র পড়া", "How a paper is built, how to read it in three passes, and how to compare many papers side by side.", "একটি পেপার কীভাবে গঠিত, তিন ধাপে কীভাবে পড়বেন, এবং একাধিক পেপার পাশাপাশি কীভাবে তুলনা করবেন।", "Chapters 7–9")
#include "chapters/ch07.typ"        // Anatomy of an ML Research Paper
#include "chapters/ch08.typ"        // How to Read a Research Paper
#include "chapters/ch09.typ"        // Comparing Papers: The Literature Matrix

// ------------------------------------------------------------------------
#part("III", "Critical Analysis", "সমালোচনামূলক বিশ্লেষণ", "Judging whether a paper's evidence actually supports its claims — and whether anyone else could check.", "পেপারের প্রমাণ আসলেই তার দাবিকে সমর্থন করে কিনা — এবং অন্য কেউ তা যাচাই করতে পারবে কিনা — তা বিচার করা।", "Chapters 10–12")
#include "chapters/ch10.typ"        // Critical Paper Analysis
#include "chapters/ch11.typ"        // Research Paper Red Flags
#include "chapters/ch12.typ"        // Reproducibility

// ------------------------------------------------------------------------
#part("IV", "Research Gaps, Questions and Novelty", "রিসার্চ গ্যাপ, প্রশ্ন ও নতুনত্ব", "From a limitation you noticed to a verified gap, a testable research question and a contribution worth publishing.", "চোখে পড়া একটি সীমাবদ্ধতা থেকে যাচাইকৃত গ্যাপ, পরীক্ষাযোগ্য রিসার্চ প্রশ্ন এবং প্রকাশযোগ্য অবদান পর্যন্ত।", "Chapters 13–17")
#include "chapters/ch13.typ"        // Sixteen Types of Research Gaps
#include "chapters/ch14.typ"        // Gap, Limitation, Future Work and Novelty
#include "chapters/ch15.typ"        // Finding and Verifying a Research Gap
#include "chapters/ch16.typ"        // From Research Gap to Research Question
#include "chapters/ch17.typ"        // Novelty

// ------------------------------------------------------------------------
#part("V", "Practice", "অনুশীলন", "Every framework applied to one landmark paper, and every key formula computed by hand.", "একটি landmark পেপারে সব কাঠামোর প্রয়োগ, এবং প্রতিটি গুরুত্বপূর্ণ সূত্র হাতে-কলমে হিসাব।", "Chapters 18–19")
#include "chapters/ch18.typ"        // Case Study: Reading the AlexNet Paper
#include "chapters/ch19.typ"        // Worked Numerical Examples

// ------------------------------------------------------------------------
#part("VI", "Beyond the Core", "মূল অংশের বাইরে", "Concepts you will meet in modern papers, and the ethical standards reviewers now expect.", "আধুনিক পেপারে যেসব ধারণা পাবেন, এবং reviewer-রা এখন যে নৈতিক মানদণ্ড আশা করেন।", "Chapters 20–21")
#include "chapters/ch20.typ"        // Modern and Advanced ML Concepts
#include "chapters/ch21.typ"        // Fairness, Ethics and Responsible Research

// ------------------------------------------------------------------------
#part("VII", "Research in the Age of LLMs", "এলএলএম যুগের গবেষণা", "Reading, judging and doing research when large language models are both the subject of study and the tools of the trade.", "যখন large language model একই সাথে গবেষণার বিষয় ও গবেষণার হাতিয়ার --- তখন কীভাবে পড়বেন, বিচার করবেন ও গবেষণা করবেন।", "Chapters 22–25")
#include "chapters/ch22.typ"        // Reading LLM-Era Papers
#include "chapters/ch23.typ"        // AI Tools in Research
#include "chapters/ch24.typ"        // Bangla and Low-Resource ML Research
#include "chapters/ch25.typ"        // Case Study: Reading "Attention Is All You Need"

// ------------------------------------------------------------------------
#part("VIII", "From Question to Publication", "প্রশ্ন থেকে প্রকাশনা", "Turning a research question into a proposal, a sound experiment, an honest paper and a contribution others can build on.", "রিসার্চ প্রশ্ন থেকে প্রপোজাল, নির্ভরযোগ্য experiment, সৎ পেপার, এবং এমন অবদান যার ওপর অন্যরা কাজ করতে পারে।", "Chapters 26–29")
#include "chapters/ch26.typ"        // Writing a Research Proposal
#include "chapters/ch27.typ"        // Running Your Own Study
#include "chapters/ch28.typ"        // Writing the Paper
#include "chapters/ch29.typ"        // Submission and Peer Review

// ------------------------------------------------------------------------
// Appendices: headings switch to A, B, C, D, E
#show: appendices
#include "chapters/app-a.typ"       // Templates for Reading and Note-Taking
#include "chapters/app-b.typ"       // Formula Sheet
#include "chapters/app-c.typ"       // Glossary
#include "chapters/app-d.typ"       // Cheat Sheet: How to Read Any ML Paper
#include "chapters/app-e.typ"       // Answers to Exercises (Chapters 22–29)

#references()
