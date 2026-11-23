#import "../template.typ": *

= Core ML and Deep Learning Algorithms
<core-ml-and-deep-learning-algorithms>
#bnsub(1)[মূল ML ও ডীপ লার্নিং অ্যালগরিদম]
For every algorithm: #strong[core idea → how it works → assumptions → strengths → weaknesses → key hyperparameters → failure cases → what to check when a paper uses it.]

== Classical Regression & Linear Models
<classical-regression-linear-models>
=== Linear Regression · লিনিয়ার রিগ্রেশন
<linear-regression-লনযর-রগরশন>
Fits $hat(y) = theta^T x$ by minimizing Mean Squared Error. Assumes a linear relationship between features and target. Strengths: interpretable, fast, good baseline. Weaknesses: sensitive to outliers and multicollinearity; cannot capture non-linear patterns. #strong[Check in a paper:] was it used purely as a baseline, and were residuals/assumptions checked?

#bn[MSE কমিয়ে `ŷ = θ^T x` ফিট করে। ফিচার ও টার্গেটের মধ্যে linear সম্পর্ক অনুমান করে। শক্তি: ব্যাখ্যাযোগ্য, দ্রুত, ভালো বেসলাইন। দুর্বলতা: আউটলায়ার ও multicollinearity-তে সংবেদনশীল; non-linear প্যাটার্ন ধরতে পারে না।]

=== Polynomial Regression · পলিনোমিয়াল রিগ্রেশন
<polynomial-regression-পলনমযল-রগরশন>
Extends linear regression by adding powers of features ($x \, med x^2 \, med dots.h$), letting a linear model fit curves. High degree → severe overfitting unless regularized.

#bn[ফিচারের ঘাত (`x²`, ইত্যাদি) যোগ করে বাঁকা ডেটার সাথে ফিট করানো যায়। উচ্চ ডিগ্রি হলে regularization ছাড়া মারাত্মক ওভারফিটিং হয়।]

=== Logistic Regression · লজিস্টিক রিগ্রেশন
<logistic-regression-লজসটক-রগরশন>
A binary classifier that applies the sigmoid function to a weighted sum of inputs to estimate class probability, optimized via log-loss (cross-entropy). Linear decision boundary --- struggles on non-linear problems.

#bn[ইনপুটের ওয়েইটেড যোগফলে sigmoid ফাংশন প্রয়োগ করে ক্লাস probability অনুমান করে (binary classification)। শুধু সরলরৈখিক boundary আঁকতে পারে।]

=== Softmax (Multinomial Logistic) Regression · সফটম্যাক্স রিগ্রেশন
<softmax-multinomial-logistic-regression-সফটমযকস-রগরশন>
Generalizes logistic regression to multi-class problems directly via the softmax function; standard output layer for deep classification networks. Note: softmax outputs are #emph[not] true probabilities unless calibrated --- they can be overconfident.

#bn[softmax ফাংশন দিয়ে সরাসরি multi-class সমস্যা সমাধান করে; ডীপ লার্নিং ক্লাসিফায়ারের স্ট্যান্ডার্ড আউটপুট লেয়ার। এই আউটপুট calibrate না করলে overconfident হতে পারে।]

== Support Vector Machines
<support-vector-machines>
=== Linear / Soft-Margin SVM · এসভিএম
<linear-soft-margin-svm-এসভএম>
Finds the widest possible separating “street” (margin) between classes. Soft-margin SVM introduces hyperparameter `C` to balance margin width against violations. #strong[Extremely sensitive to feature scaling] --- always scale features first.

#bn[ক্লাসগুলোর মধ্যে সবচেয়ে চওড়া “রাস্তা” (margin) খোঁজে। Soft-margin SVM-এ `C` হাইপারপ্যারামিটার দিয়ে margin প্রশস্ততা ও ভুলের মধ্যে ভারসাম্য রাখা হয়। ফিচার স্কেলিং না করলে খুব খারাপ ফল দেয়।]

=== Kernel SVM (Polynomial / RBF) · কার্নেল এসভিএম
<kernel-svm-polynomial-rbf-করনল-এসভএম>
Uses the “kernel trick” to implicitly map data to higher dimensions and fit non-linear boundaries without literally expanding features. RBF kernel's `γ` controls how “local” each instance's influence is --- high `γ` → overfitting, low `γ` → underfitting. Scales poorly (`O(m²)`--`O(m³)`) to very large datasets.

#bn[“কার্নেল ট্রিক” ব্যবহার করে non-linear boundary আঁকে, বাস্তবে ফিচার না বাড়িয়েই। RBF-এর `γ` বেশি হলে ওভারফিট, কম হলে আন্ডারফিট হয়। বড় ডেটাসেটে ধীরগতির।]

=== Support Vector Regression (SVR) · সাপোর্ট ভেক্টর রিগ্রেশন
<support-vector-regression-svr-সপরট-ভকটর-রগরশন>
Reverses SVM's objective --- fits as many points as possible #emph[inside] a margin of width `ε`. Robust to outliers because in-margin points don't affect the model.

#bn[যতটা সম্ভব বেশি পয়েন্টকে margin-এর ভেতরে রাখার চেষ্টা করে। আউটলায়ার-সহনশীল কারণ margin-এর ভেতরের পয়েন্ট মডেলকে প্রভাবিত করে না।]

== Tree-Based & Ensemble Methods
<tree-based-ensemble-methods>
=== Decision Tree (CART) · ডেসিশন ট্রি
<decision-tree-cart-ডসশন-টর>
Makes predictions via a hierarchy of yes/no feature-based questions; splits chosen by minimizing Gini impurity or entropy. Requires almost no data preparation (no scaling needed). #strong[Major weakness: high variance / instability] --- small data changes can produce a very different tree.

#bn[ফিচার-ভিত্তিক হ্যাঁ/না প্রশ্নের ক্রম দিয়ে সিদ্ধান্ত নেয়; Gini impurity/entropy কমিয়ে split করে। স্কেলিং লাগে না। বড় দুর্বলতা: high variance --- ডেটায় সামান্য পরিবর্তনেই গাছের গঠন পাল্টে যায়।]

=== Random Forest · র্যান্ডম ফরেস্ট
<random-forest-রযনডম-ফরসট>
Bagging ensemble of decision trees with random feature subsets at each split --- trades a little bias for much lower variance; excellent for tabular data with built-in feature importance. Harder to interpret than a single tree.

#bn[অনেক ডেসিশন ট্রি-র bagging ensemble, প্রতিটি split-এ random ফিচার সাবসেট ব্যবহার করে; variance অনেক কমায়। Feature importance পাওয়া যায়, কিন্তু interpretation কঠিন।]

=== AdaBoost · অ্যাডাবুস্ট
<adaboost-অযডবসট>
Sequentially combines weak learners, each one focusing more on the previous model's misclassified instances (by reweighting them). Very sensitive to noisy data/outliers.

#bn[ধারাবাহিকভাবে দুর্বল মডেল যোগ করে, প্রতিটি আগেরটির ভুলের ওপর বেশি ফোকাস করে (weight বাড়িয়ে)। নয়েজ/আউটলায়ারের প্রতি অতি-সংবেদনশীল।]

=== Gradient Boosting (GBRT) · গ্রেডিয়েন্ট বুস্টিং
<gradient-boosting-gbrt-গরডযনট-বসট>
Sequentially fits new trees to the #strong[residual errors] of previous trees rather than reweighting instances. Powerful on tabular benchmarks; prone to overfitting without early stopping / low learning rate (shrinkage).

#bn[প্রতিটি নতুন গাছ আগেরটার #strong[অবশিষ্ট ভুল (residual)]-এর ওপর ট্রেন হয়। ট্যাবুলার ডেটায় খুব শক্তিশালী; early stopping ছাড়া ওভারফিট হতে পারে।]

=== XGBoost / LightGBM / CatBoost
<xgboost-lightgbm-catboost>
Highly optimized, regularized gradient-boosting implementations widely used in ML competitions and tabular research --- add features like built-in regularization, missing-value handling, and faster tree construction. Still needs careful tuning (`max_depth`, `learning_rate`, `n_estimators`, regularization terms) and early stopping to avoid overfitting.

#bn[অত্যন্ত optimized ও regularized gradient boosting বাস্তবায়ন যা ML প্রতিযোগিতা ও ট্যাবুলার গবেষণায় ব্যাপক ব্যবহৃত হয়। তবুও যত্ন সহকারে হাইপারপ্যারামিটার টিউনিং ও early stopping দরকার।]

=== Voting Ensembles (Hard/Soft) · ভোটিং এনসেম্বল
<voting-ensembles-hardsoft-ভট-এনসমবল>
Combines multiple diverse classifiers' predictions via majority vote (hard) or averaged probabilities (soft --- usually better, but requires well-calibrated base models).

#bn[একাধিক ভিন্ন classifier-এর প্রেডিকশনকে majority vote (hard) বা গড় probability (soft) দিয়ে একত্রিত করে।]

== Instance-Based & Probabilistic Methods
<instance-based-probabilistic-methods>
=== k-Nearest Neighbors (k-NN) · কে-নিয়ারেস্ট নেইবার
<k-nearest-neighbors-k-nn-ক-নযরসট-নইবর>
Predicts by finding the `k` closest training instances and averaging/voting their labels. Zero training cost, high inference cost (must compute distance to all training points); scales poorly.

#bn[`k`টি নিকটতম ট্রেনিং নমুনা খুঁজে তাদের গড়/ভোট নিয়ে প্রেডিক্ট করে। ট্রেনিং সস্তা, প্রেডিকশন ব্যয়বহুল; বড় ডেটায় স্কেল করে না।]

=== Naive Bayes · নেইভ বেইজ
<naive-bayes-নইভ-বইজ>
A probabilistic classifier applying Bayes' theorem with the (naive) assumption that features are conditionally independent given the class. Extremely fast, works well on high-dimensional sparse data (e.g., text classification), but the independence assumption is often unrealistic.

#bn[Bayes' theorem ব্যবহার করে এমন একটি probabilistic classifier যা ধরে নেয় ফিচারগুলো ক্লাসের শর্তে independent (যা প্রায়ই বাস্তবসম্মত নয়)। খুব দ্রুত, high-dimensional sparse ডেটায় (যেমন টেক্সট ক্লাসিফিকেশন) ভালো কাজ করে।]

== Unsupervised: Clustering & Dimensionality Reduction
<unsupervised-clustering-dimensionality-reduction>
=== k-Means Clustering · কে-মিন্স ক্লাস্টারিং
<k-means-clustering-ক-মনস-কলসটর>
Partitions unlabeled data into `k` clusters by iteratively assigning points to the nearest centroid and recomputing centroids, minimizing inertia (within-cluster sum of squares). Sensitive to bad initialization (mitigated with `k-means++`); struggles with non-spherical or unevenly sized/dense clusters.

#bn[ডেটাকে `k`টি ক্লাস্টারে ভাগ করে, বারবার নিকটতম centroid-এ পয়েন্ট বসিয়ে এবং centroid নতুন করে হিসাব করে। খারাপ initialization-এ ভুল স্থানীয় সমাধানে আটকে যেতে পারে (`k-means++` দিয়ে কমানো যায়); অসম আকার/ঘনত্বের ক্লাস্টারে খারাপ কাজ করে।]

=== Dbscan · ডিবিস্ক্যান
<dbscan-ডবসকযন>
Density-based clustering that groups high-density regions and automatically flags outliers as noise; doesn't need the number of clusters specified in advance; can find arbitrary-shaped clusters but struggles when cluster densities vary widely.

#bn[ঘনত্ব-ভিত্তিক ক্লাস্টারিং যা ঘন এলাকাকে ক্লাস্টার এবং ফাঁকা এলাকাকে নয়েজ ধরে; ক্লাস্টার সংখ্যা আগে থেকে বলতে হয় না; তবে ভিন্ন ঘনত্বের ক্লাস্টারে দুর্বল।]

=== PCA (Principal Component Analysis) · প্রিন্সিপাল কম্পোনেন্ট অ্যানালিসিস
<pca-principal-component-analysis-পরনসপল-কমপননট-অযনলসস>
Linear dimensionality reduction that projects data onto the directions of maximum variance (via SVD). Standard preprocessing step against the curse of dimensionality; fails on non-linear manifolds (e.g., Swiss roll --- use t-SNE/UMAP/Autoencoders instead for visualization/non-linear structure).

#bn[ডেটাকে সর্বোচ্চ variance-এর দিকে প্রজেক্ট করে ডাইমেনশন কমায় (SVD ব্যবহার করে)। Curse of dimensionality মোকাবেলার স্ট্যান্ডার্ড পদ্ধতি; non-linear গঠনে ব্যর্থ হয় (তখন t-SNE/UMAP/Autoencoder ব্যবহার করা হয়)।]

== Deep Learning Architectures
<deep-learning-architectures>
#bnsub(2)[ডীপ লার্নিং আর্কিটেকচার]
=== Artificial Neural Network (ANN / MLP) · নিউরাল নেটওয়ার্ক
<artificial-neural-network-ann-mlp-নউরল-নটওযরক>
Layers of interconnected “neurons” (weighted sums + non-linear activation functions like ReLU/sigmoid/tanh) trained via #strong[backpropagation] (computing gradients backwards through layers) and gradient descent. Universal function approximator, but needs large data and careful regularization (dropout, weight decay, batch normalization) to avoid overfitting.

#bn[একাধিক স্তরের আন্তঃসংযুক্ত “নিউরন” (ওয়েইটেড যোগফল + non-linear activation) যা #strong[backpropagation] ও gradient descent দিয়ে ট্রেন হয়। যেকোনো ফাংশন approximate করতে পারে, তবে বড় ডেটা এবং regularization (dropout, weight decay) দরকার।]

=== CNN (Convolutional Neural Network) · সিএনএন
<cnn-convolutional-neural-network-সএনএন>
Uses learnable convolutional filters that slide across an input (typically an image) to detect local spatial patterns (edges → textures → shapes → objects) hierarchically, followed by pooling layers to reduce spatial size. Dominant architecture for image classification, object detection, and segmentation. Weakness: fixed filter size can miss very long-range/global relationships without deep stacking.

#bn[শেখানো যায় এমন convolutional filter ইনপুট (সাধারণত ছবি)-এর ওপর স্লাইড করে স্থানীয় প্যাটার্ন (edge → texture → shape → object) ধাপে ধাপে চিনে নেয়, এরপর pooling দিয়ে আকার কমায়। Image classification, object detection, segmentation-এ প্রধান আর্কিটেকচার।]

=== RNN (Recurrent Neural Network) · আরএনএন
<rnn-recurrent-neural-network-আরএনএন>
Processes sequential data (text, time-series, audio) by maintaining a hidden state that is updated at each time step, allowing information from earlier steps to influence later predictions. Suffers from #strong[vanishing/exploding gradients] on long sequences, making it hard to learn long-range dependencies.

#bn[ক্রমিক ডেটা (টেক্সট, টাইম-সিরিজ, অডিও) প্রসেস করার সময় একটি hidden state বজায় রাখে যা প্রতি ধাপে আপডেট হয়। দীর্ঘ sequence-এ #strong[vanishing/exploding gradient] সমস্যা হয়, ফলে long-range নির্ভরতা শেখা কঠিন হয়।]

=== Lstm / Gru / এলএসটিএম / জিআরইউ
<lstm-gru-এলএসটএম-জআরইউ>
Gated variants of RNNs (Long Short-Term Memory / Gated Recurrent Unit) that use learned “gates” to control what information to keep, forget, or output --- substantially mitigates the vanishing-gradient problem and captures longer dependencies than a vanilla RNN. Still processes sequences step-by-step (slow to parallelize) compared to Transformers.

#bn[RNN-এর “gated” সংস্করণ (LSTM/GRU) যা শেখা “gate” দিয়ে নিয়ন্ত্রণ করে কোন তথ্য রাখবে, ভুলবে বা আউটপুট দেবে --- vanishing gradient সমস্যা অনেকটা কমায়। তবে ধাপে ধাপে প্রসেস করে বলে Transformer-এর তুলনায় parallelize করা কঠিন।]

=== Transformer · ট্রান্সফরমার
<transformer-টরনসফরমর>
Replaces recurrence with a #strong[self-attention] mechanism that lets every position in a sequence directly attend to every other position, capturing long-range dependencies and enabling massive parallelization during training. Foundation of modern LLMs (BERT, GPT family) and increasingly used in vision (Vision Transformer / ViT). Requires large data/compute and quadratic attention cost with sequence length (an active research area --- “efficient attention”).

#bn[recurrence-এর বদলে #strong[self-attention] ব্যবহার করে, যেখানে sequence-এর প্রতিটি position সরাসরি অন্য সব position-কে “দেখতে” পারে --- এতে long-range নির্ভরতা সহজে ধরা যায় এবং ট্রেনিং সমান্তরালভাবে (parallel) করা যায়। আধুনিক LLM (BERT, GPT)-এর ভিত্তি। বড় ডেটা/কম্পিউট দরকার, এবং sequence দৈর্ঘ্যের সাথে attention-এর খরচ quadratic হারে বাড়ে।]

=== Autoencoder · অটোএনকোডার
<autoencoder-অটএনকডর>
A neural network trained to compress input into a low-dimensional latent representation (encoder) and then reconstruct the original input from it (decoder), typically by minimizing reconstruction error. Used for dimensionality reduction, denoising, anomaly detection (high reconstruction error = anomaly), and as a self-supervised pretraining technique.

#bn[একটি নিউরাল নেটওয়ার্ক যা ইনপুটকে ছোট latent representation-এ সংকুচিত করে (encoder) এবং সেখান থেকে আবার পুনর্গঠন করে (decoder), reconstruction error কমিয়ে। Dimensionality reduction, denoising, anomaly detection (বেশি reconstruction error = অ্যানোমালি), এবং self-supervised pretraining-এ ব্যবহৃত হয়।]

=== GAN (Generative Adversarial Network) · জিএএন
<gan-generative-adversarial-network-জএএন>
Two networks compete: a #strong[Generator] tries to create realistic fake data, a #strong[Discriminator] tries to distinguish real from fake; both improve through this adversarial game. Used for image synthesis, data augmentation, style transfer. Notoriously unstable to train (mode collapse, non-convergence) and requires careful hyperparameter/architecture tuning.

#bn[দুটি নেটওয়ার্ক প্রতিযোগিতা করে: #strong[Generator] বাস্তবসদৃশ fake ডেটা তৈরি করার চেষ্টা করে, #strong[Discriminator] real/fake আলাদা করার চেষ্টা করে; উভয়ে এই প্রতিযোগিতার মধ্য দিয়ে উন্নত হয়। Image synthesis, data augmentation, style transfer-এ ব্যবহৃত হয়। ট্রেনিং করা অস্থির ও কঠিন (mode collapse ইত্যাদি)।]

=== Diffusion Models · ডিফিউশন মডেল
<diffusion-models-ডফউশন-মডল>
Generative models that learn to reverse a gradual noising process --- trained to progressively denoise a random-noise input back into realistic data (images, audio). Currently state-of-the-art for high-quality image generation (e.g., text-to-image systems), generally more stable to train than GANs but slower at inference (many denoising steps).

#bn[এমন generative মডেল যা ধাপে ধাপে noise যোগ করার প্রক্রিয়া উল্টে দিতে শেখে --- random noise থেকে ধীরে ধীরে বাস্তবসদৃশ ডেটা তৈরি করে। বর্তমানে উচ্চমানের image generation-এ state-of-the-art, GAN-এর চেয়ে ট্রেনিং স্থিতিশীল কিন্তু inference-এ ধীর।]

=== Reinforcement Learning (Deep RL) · ডীপ রিইনফোর্সমেন্ট লার্নিং
<reinforcement-learning-deep-rl-ডপ-রইনফরসমনট-লরন>
An agent learns a policy $pi \( a divides s \)$ by interacting with an environment, receiving rewards, using deep neural networks to approximate value functions or policies (e.g., DQN, PPO, A3C). Heavily used in robotics, games (AlphaGo), and increasingly in LLM fine-tuning (RLHF). Weakness: sample inefficiency and extreme sensitivity to reward design (“reward hacking”).

#bn[এজেন্ট পরিবেশের সাথে কাজ করে পলিসি `π(a|s)` শেখে, reward পায়, এবং deep neural network দিয়ে value function/policy approximate করে (যেমন DQN, PPO)। রোবটিক্স, গেম (AlphaGo), এবং LLM fine-tuning (RLHF)-এ ব্যবহৃত। দুর্বলতা: প্রচুর স্যাম্পল দরকার এবং reward design-এর প্রতি অতি-সংবেদনশীলতা।]

== Algorithm Selection Quick-Reference
<algorithm-selection-quick-reference>
#bnsub(2)[দ্রুত রেফারেন্স টেবিল]
#figure(
  align(center)[#table(
    columns: (49.56%, 50.44%),
    align: (left,left,),
    table.header([Data type / situation], [Commonly suitable algorithms],),
    table.hline(),
    [Small tabular data, need interpretability], [Linear/Logistic Regression, Decision Tree],
    [Medium tabular data, best raw accuracy], [Random Forest, Gradient Boosting (XGBoost/LightGBM)],
    [Images], [CNN (or Vision Transformer for large data)],
    [Sequential/text data (older, smaller)], [LSTM/GRU],
    [Sequential/text data (large, modern)], [Transformer-based models],
    [No labels, want groups], [k-Means, DBSCAN],
    [No labels, want to compress/visualize], [PCA, Autoencoder, t-SNE/UMAP],
    [Rare-event detection], [Isolation Forest, Autoencoder reconstruction error, One-Class SVM],
    [Need to generate realistic new data], [GAN, Diffusion Model],
    [Sequential decision-making with rewards], [Deep RL (DQN/PPO)],
  )]
  , kind: table
  )

#strong[Research-paper checklist for any algorithm claim / যেকোনো অ্যালগরিদম দাবির জন্য চেকলিস্ট:]

#checklist[
- #cbox() Is the choice justified by the data's structure, not just popularity? - \[ \] Were key hyperparameters reported (and how were they tuned)? - \[ \] Was the algorithm compared against at least one simpler baseline? - \[ \] Are known failure modes of this algorithm addressed or acknowledged?

]
#recap[
- No algorithm is universally “best” (No Free Lunch, Section 1.8) --- the right choice depends on data size, structure, and interpretability needs.

  #bni[কোনো অ্যালগরিদমই সার্বজনীন সেরা নয় --- ডেটার আকার, গঠন ও ব্যাখ্যাযোগ্যতার প্রয়োজন অনুযায়ী বেছে নিতে হয়।]

- Tree ensembles dominate tabular data; CNNs dominate images; Transformers dominate large-scale text (and increasingly vision).

  #bni[Tree ensemble ট্যাবুলার ডেটায়, CNN ছবিতে, এবং Transformer বড় টেক্সট/vision-এ প্রাধান্য পায়।]

- Always ask: was this algorithm chosen because it fits the data, or just because it's popular?

  #bni[সবসময় প্রশ্ন করুন: অ্যালগরিদমটি কি ডেটার জন্য উপযুক্ত, নাকি শুধু জনপ্রিয় বলে বেছে নেওয়া?]

]
