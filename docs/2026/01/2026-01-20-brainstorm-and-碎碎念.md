---
title: brainstorm and 碎碎念
date: 2026-01-20
music_link: https://www.youtube.com/watch?v=gw5uSSsHm6c
---

## 碎碎念
刚刚和guanghao meet了, 感觉好像meet的还行, 现在的节奏感觉是我跟他说明我的想法然后guanghao会来检查是否是可靠或者lack of something. 目前的direction 是朝着variant information开始搞. 不过目前还不是特别清楚头绪. 早上刷xhs的时候刷到了一个人是说他得很猛的室友是把领域内所有的baseline都benchmark一遍然后测试一遍, 发benchmark的文章和借助对很多方法的理解从而发现一些已有方法的不足从而删减已有方法的东西. 不过评论区也提到了现在环境不一样了, 这种文章放到现在可能没有那么好了, 不过在rare disease上确实已经有很多方法了, 从[AI-MARRVEL](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC11221788/)和[PhenoKG](https://arxiv.org/pdf/2506.13119)里面就可以看到时间跨度还是很长的, 而且也有一些很成熟的应用在业界的方法like [Exomiser](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC5467691/). 我感觉至少这周的focus可以放在longread 的preprocess和总结所有业界的方法的优缺点, 以确认我目前的猜想是否可行

>目前的猜想是fine-tune Patient level rare disease knowledge graph with patient level variant annotations (SNV, INDEL, SV)

启发来自AI-MARRVEL, 所以多看领域内的文章还是有用的. 最好是看领域内的文章确定varint level的重要性, 以及double check shepherd在这方面的缺失. 然后在看cs的文章找有什么better ways to incorporate variant level info into KG/GNN/Shepherd in general. 

稍微列一下这些文章好了:
[AI-MARRVEL](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC11221788/)
[LA-MARRVEL](https://arxiv.org/html/2511.02263v3#Sx1)
[LIRICAL](https://www-sciencedirect-com.offcampus.lib.washington.edu/science/article/pii/S0002929720302305?via%3Dihub)
[PhenoKG](https://arxiv.org/pdf/2506.13119)
[Exomiser](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC5467691/)


看起来Guanghao还是比较忙FPCA的project的毕竟是基于他自己写的另一个project. 也确实应该要忙那个, 而且我的还处于初始阶段没有到很多technical的东西, 我暂时可以应付. make sense. 


## shit yang怎么办
有一点需要注意的是, yang那边处于半放养的模式, 所以idea都得我自己想. 不过yang还是很好的, 唉不要让他失望. 

还有2 full days. 额反正tmd走一步看一部吧. 首先找一下网上的primed 的RNA data做一下InferCNV, 然后doublecheck一下我之前做的InferCNV怎么会那么烂. 然后就是验证之前CIN那片paper的其他猜想的部分, 着重放在senescence的部分. yang之前发了一篇paper给我我需要认真看完. somatic mutation的部分我没有看到任何别的paper有关于这方面的研究, 我认为我需要把重心放在Aneuploidy上面, 如果有别的somatic mutation相关的project也可以是prepare过了. 所以关于somatic mutation的部分我只需要做一些浅层的分析就好了. like 2页slides, 然后conclude搁置一下. 

然后就是回顾一下 前两天的[brainstorm](2026-01-18-准备.md)

我这次需要准备的是:

- 2 页somatic mutation conclude slide
- 很多页关于不同方向的paper
- dosage effect
- senescence的一些尝试. 
- yang 贴的paper的一些理解和尝试

看起来应该是可以熬夜肝完吧



woc睡了3h但是还是9:43pm不想学咋整啊,不想干. 理论上来说我今天必须干完dosage effet, 看完yang贴的paper以及可行的点, 和somatic mutation conclude, 但是完全不想要动啊... 难道继续滚回家睡觉吗?不可能, 睡觉就不能再写了, 那怎么办....

10:24pm: 好像恢复了一些, 但是没有很多...我需要一些鸡血, 看起来还是我的目标感不够?ok应该由两部分, 首先我比较害怕我会做不出来任何成果. 我现在感觉我就像无头苍蝇一样在一个迷宫里怎么也出不去, 而这个迷宫还没有出口. 我没有方向感, 我想这个也是我需要在周四的meeting跟yang确认的点. 让我觉得我在沼泽被一点点拖下去. 第二点是我不知道yang对我是否满意, 因为我自己对我自己没有很满意. 我感觉我在yang的project正在陷入我不擅长的模式, 也就是无方向感. 为了找到方向感, 我需要首先认同我自己作为bioinformatician的能力和应该怎么打破这个困境,我相信不止是对于yang的lab也是对我之后的科研热情有很大的帮助. 

> <span id="quote1" class="jump-target">似乎只要我诚实的说/写出来, 我的动力会足一些.</span>


首先是认同我自己.我在本科的时候做了2段scRNAseq的分析, 都是关于pipeline的. 在这三段research里面我没有任何的目标和实际贡献, 只是让做什么就去做什么. 我好像没有思考能力, 不过主要是因为我没有意识到我需要这个思考能力,我以为mentor和导师都会叫我应该怎么养成为一个好的researcher, 但是结果就是, 没有一个人give a shit about you. 主观来说, 我作为新手没有被有效的培养成为一个researcher, 在学习生物信息之外, 我完全不懂的怎么拓展课题, 不知道应该看什么论文, 看哪些论文, 怎么成为更好帮助postdocs/phds的助手角色, 怎么汇报. 在科研之外, 我也没有去想工作的事情, 我喜欢cs的课业作业, ds的作业/project, 周围的同学也不全是做科研的, 某些很难的课比如physics, 一些bio的课, 也在不同程度的让我分心, 我生活中也没有一个同方向的人每天跟我聊. 很多因素. 客观来说,科研需要的技能很多,我有一个好学的心, 但是总是被动的接受知识. 效率层面极低, 总是寻求玩乐, 并没有完全focus在什么才是正确的提升自我. 我永远都是瞎努力, 导致80%的努力都成为了无用功. 

lol好像这些并没有relate到认同我自己的能力. 我相信我目前的学习状态还是比较好的, 专注力注意力也还不错, 在bioinformatics的领域,我在scRNAseq至少能做到复现论文没问题. 也不需要认同了, 我现在就是纸面实力大于真实实力, 打破这个需要**我找到正确的努力方向; 这样我会有动力, 精力, 自信 可以爆发120%的实力和效率. ** 我有除了这个之外的任何技能: 

- resillience: 我对成功和失败没有很大的波动, 可以维持在平静的状态
- focus: 我的专注力远比我想的要高, 比如right now在写blog, 我就能异常专注. 原因应该是[上面那句](#quote1). 写blog的时候我在井里打水, 或者像是打地基, 压住我的慌乱和紧张
- wide interest: 没有对某些放向抗拒, 对每一个领域/层面只要我操控我自己得当, 我可以保持80%以上的passion. 
- accept that I am avg or below avg. 

> 我需要找到正确的努力方向; 这样我会有动力, 精力, 自信 可以爆发120%的实力和效率. 

> 我是那种会胡思乱想的人, 运用得当的话可以成为brainstorm的利器, 运用不当的话容易自我打转, 停滞不前. 

tmd我感觉我干心理学的工作可能会好一些. 


anyways看起来目前的鸡汤效果还不错, 我感觉我有动力了. 不过我不知道为什么还是有点不想学习. 这应该是我最后的障碍了. whywhywhywhywhywhywhy? 在内心抵触yang的工作?也没有吧, 只是总是觉得这是简单的工作可以很快完成所以不想要做?kind of. 还有一点可能是没有玩爽? 不太可能, 因为我blog写的很爽. 那是为什么?太热了?oxygen level太低?有可能, 我回家试试看, 虽然也有可能会效率下降很多... 我把蔬菜汁喝完看看视频就回家好了. 就是点烦躁, or浮躁
