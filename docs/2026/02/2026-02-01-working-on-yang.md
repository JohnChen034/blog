---
title: working on yang
date: 2026-02-01
music_link: https://www.youtube.com/watch?v=vcGeWUiWrT4
---

我感觉到了干湿合并的无力感. 我觉得这条路不太适合我, 我还是更喜欢计算机一些. 我可以很有动力查看各种recommendation system和rare disease的关联, 却提不起精神来搞yang的part,因为很多东西让我感觉不确定性多/bio知识欠缺导致不能解释我的findings. 

我觉得主要的问题是, 这种无方向的探索很容易打消我的自信心, especially在我对这个领域不了解的情况下, 而且我觉得也不会有什么成果. 

<div class="tenor-gif-embed" data-postid="20634703" data-share-method="host" data-aspect-ratio="1" data-width="100%"><a href="https://tenor.com/view/wow-omg-dwight-schrute-surprised-unbelievable-gif-20634703">Wow Omg GIF</a>from <a href="https://tenor.com/search/wow-gifs">Wow GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>

回顾我之前写的:
!!! note "[Yang notes](2026-01-24-回忆前两天和想一下未来.md/#yangnotes-2026-01-24)"

    1. 更严谨version的“DEG”? emm他想说是类似RNA level的CNV detection, 不过我没有完全抓到意思. 基本上如果trend是gene都只在一个chromosome就是能更证明Aneuploidy真实性, 而如果不是的话就证明compensation.这两个方向都可以, 但是需要非常准确的思路来证明,我不确定能不能做到, 不过我可以试一下. 尽量提早试, 最好周一和guanghao meet完就开始搞.
    2. Katie还做了bulk, 是他paper的重点, 这个过两周我就可以分析了, 重要的是, 我需要在两周之后给一个bulk RNAseq的模版展示, 虽然都知道bulk RNAseq是什么, 不过我用一个随便网上看到的example data尽量把我能想到的分析做出来然后让yang看看他有什么别的分析是他想要的. 类似一个bionfo版本的SAP
    3. 他会给我一个gene list然后我会去做一个violin plot, yang说seurat有一个内置的?damn我居然一直都不知道, 这就是不是科班出身的下场啊😂. 
    4. 然后就是多读一些senescence, lysosome, drug treatment, aneuploidy相关的文章. multinome, bulk RNAseq, 和一些pathway原理, 这是一个庞大的知识网络, 我需要扩展知识面. 




#### [Aneuploidy and gene expression: is there dosage compensation?](https://pmc.ncbi.nlm.nih.gov/articles/PMC7132608/)


This said that there are many expereiments related to aneuploiodies and gene corresponding RNA level increase. 

In this img, they include 3 possible patterns of aneuploidy-dependent changes in gene expression. And they include corresponding articles, which potentially explain the procedure how they find it. I will go through all of them and summarize. One interesting thing is "For instance, aneuploidy was found to be a frequent adaptation of Candida albicans to the antifungal drug fluconazole [42](https://www.science.org/doi/10.1126/science.1128242) [43](https://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1000705). "


基本上, copy number changes results in expression changes, but not all the cases. and there are other modes like trans effect (affect other chromosomes), compensation, inverse effect. 



![Possible patterns of aneuploidy-dependent changes in gene expression](/img/Possible patterns of aneuploidy-dependent changes in gene expression.png)

!!! note "nTSC的耐药性意味着什么?"
    这个问题应该才是我困扰的核心, 这个问题很重要, 涉及到这个研究是否有意义(对我的感觉), 以及我能否有新的idea. 我认为如果有很多值得挖掘的地方, 那么multiomics的用处会很多. 这里探讨了简单的推测, 更多信息我应该会写到yang notes里面. Anyways, lets get started. 

    ok耐药性是什么?指的是作为一个cell可以对外界刺激它生存的事物作出反应, 调整自我. 相当于cell的resillience. 在我的认知里第一个脑海里蹦出来的应该是杀虫剂, 也就是我们在农田里使用pesticides消灭害虫来保护庄稼, 但是久而久之害虫会被喷完之后不会死, somehow“进化”. 比如在同样的剂量下, 害虫不会死了. 部分原因是, 害虫的数量很多, 进化速度很快. 可能第一部队有5% 害虫没死,而他们的后代也许就会携带这种特性导致更多这种特性的害虫. 结果就是：田里害虫群体越来越偏向耐药型，杀虫剂效果越来越差，需要更高剂量或换药/换机制。所以越来越多的方法转向别的策略, 比如换着杀虫剂/生物防治(放天敌)/转基因农作物等等. 

    第二个想到的是癌细胞. 本身placenta cells也更像癌细胞, 所以这个更贴切一些. 一样的原理, 也是给予“谁更能在当前环境活下去、谁就扩增”（不一定是分裂最快，而是“综合存活 + 扩增”更强）。 然后就是我们普遍发现CIN和和癌症有关联, which表明了如果heterogeneity很高的情况下, 会更容易随机产生出耐药性的癌细胞, 而这些耐药性强的又回继续繁殖, 导致耐药性. 

    而placenta cells能有和癌细胞一样的CIN机制, 同理应该也会拥有耐药性机制. 而我们在wet lab发现了能存活在不同的drug下面. 而这意味着什么? 首先我记得母胎免疫耐受就是由placenta cells主导的. 但是这两个还有一点不一样, 因为immune response和drug resistance不算是一个机制, 不过也可能有同一个机制可以使他们共同成立. 

    anyways, 这种耐药性已经被大量证实?可能是关于对胎儿的保护机制或者是胎盘工作原理的.而免疫耐受也被well studied好像. 问了chatgpt, 他说有很多综述和机制文章描述了胎盘具备了这种多变的特性, 它更像是在一定的规则束缚下的可以随机应变性?“

    ”胎盘滋养层（trophoblast）确实很“可塑”，原因主要是它的任务本身就要求它在妊娠过程中不断切换功能：

    - 早期要扩增、建立绒毛结构、在低氧环境下工作
    - 还要分化出不同亚型去做交换、侵袭、血管重塑、免疫调节
    - 同时要应对炎症/感染/代谢波动

    所以它看起来比很多成熟组织细胞（神经元、骨骼肌细胞）更“能调参”。胎盘细胞不是“分支比别的细胞更多”，而是它在妊娠的动态环境里需要更强的状态可调性（plasticity），所以它的调控网络对环境信号更敏感，能在有限的几个主轴上快速重配表达程序。

    ==== “随机应变”到底随机不随机？====

    更准确说是：看起来像随机，其实是“受约束的随机性”：

    - 单个细胞/小群体会有噪声和异质性（像随机）
    - 但这些变化通常被几条主轴（氧/HIF、炎症/IFN、激素/代谢、应激/蛋白稳态）拉着走（所以并不是真随机）

    这点跟癌症的“非遗传耐药状态”也有点像：很多变化是状态空间里的可达解，被压力筛出来，而不是凭空发明。[nature.com](https://www.nature.com/articles/s41467-025-66376-6)



> 5:20pm: 我目前的状态很好. 刚开始学习的时候, 我处于非常不想要了解的状态然后非常集中不了注意力和烦躁, 然后我理清了为什么会烦躁的点, 也就是我看不到这个研究的意义. 所以我现在开始搞清楚耐药性的用处, 越了解深入我就越发现耐药性的重要性, 以及怎么和已有的癌症研究连接起来, 逐渐可以了解目前人类已有对于placenta cells的认知. 现在我在探索我想要探索的东西的时候非常的有动力和集中, 这个状态是我喜欢的状态也是我自信的状态, 我需要记住这种感觉并且做任何事情都需要调用这个感觉, 以此来高效率地完成所有事物. 



***这些问题我暂且放一下, 因为不管怎么走, 我的最优先事项是把dosage effect做了, 所以先继续看吧.***




##### 1. Compensation and scaling

basically it can be compensation or scaling, they both commonly occured in various organisms, including human's aneuploidies. 



**研究发现非整倍体是白色念珠菌对抗菌药物氟康唑的一种常见适应机制**
[42](https://doi-org.offcampus.lib.washington.edu/10.1126/science.1128242) [43](https://doi-org.offcampus.lib.washington.edu/10.1371/journal.pgen.1000705)

"长期低剂量预防性治疗方案会导致对唑类药物的耐药性", which 我觉得不太apply到我们这里. 

他们发现在具有耐药性的菌体中, Aneuploidy发生概率是7倍, 主要是trisomy 5. 




#### [Modulation of Global Gene Expression by Aneuploidy and CNV of Dosage Sensitive Regulatory Genes](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC8535535/?utm_source=chatgpt.com)

这居然是2021的paper, 只用了RNAseq发的文章. 这说明了一个合理的bioinformatics方法的运用很重要. 

这篇文章用了RNAseq然后做了DEG, GO, protein-protein interaction(PPI), TF, check in public data. 这个可以当作不错的guide关于可以做什么analyis.
