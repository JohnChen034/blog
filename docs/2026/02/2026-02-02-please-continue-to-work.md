---
title: please continue to work
date: 2026-02-02
music_link: https://www.youtube.com/watch?v=2kYa5Vgs6PU
---

<div class="tenor-gif-embed" data-postid="26450241" data-share-method="host" data-aspect-ratio="1.80791" data-width="100%"><a href="https://tenor.com/view/dwight-schrute-the-office-gif-26450241">Dwight Schrute GIF</a>from <a href="https://tenor.com/search/dwight-gifs">Dwight GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>


#### dosage effect:

**[clonealign: statistical integration of independent single-cell RNA and DNA sequencing data from human cancers](https://link-springer-com.offcampus.lib.washington.edu/article/10.1186/s13059-019-1645-z)**


basically this article talks about calculating CNV region by scDNA, and they align the RNA to the detected CNV region to infer dosage effect, which I can replace scDNA with epiAneufinder + ATAC. 

看完了, 没用


**有用: [Gene Dosage Analysis on the Single-Cell Transcriptomes Linking Cotranslational Protein Targeting to Metastatic Triple-Negative Breast Cancer](https://pmc-ncbi-nlm-nih-gov.offcampus.lib.washington.edu/articles/PMC8472593/)**

他们的方法是, 先用bulkDNAseq to get CNV and use scRNAseq to get gene expression data; then they transfer all cell's expression into Z-score, meaning relative score of high/low expression compare to other cells (I think it is better to compare with baseline instead of other cells. ); then they adjust for dropouts; then they save those Z > 1.96 for significant up/down regulated genes; at last they align the CNV regions locations with gene locations together and save those concordant events. 

finally we get: **DNA copy change 是否对应 RNA 的同方向改变**

To make sure the CNV-gene couple is true, we should see most cells with these signals?

因为20000threshold所得出的cells太少了, 在primed的10000和20000都很weird, 那么我就尝试用10000 threshold去得出更多aneuploidy cells 然后这样去做dosage的signals可能才会更有成果. 不过总算感觉是找到了对的方法?

回家先