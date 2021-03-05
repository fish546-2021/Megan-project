# March 4th attempt at DESeq2. Will eventually be redone/revised in r markdown to show the console outputs as well. 

# getting and loading DESeq2 
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.12")
biocLite("DESeq2")
library(DESeq2)

#load in count data 
options(scipen = 999)
data <- read.delim("analyses/kallisto.isoform.counts.matrix")
rownames(data) <- data$Feature
data <- data[,-1]
#ensures all data as integer
data <- round(data, digits = 0)

#build objects; specify which columns are in groups
deseq2.colData <- data.frame(condition=factor(c(rep("Control", 2), rep("Estradiol", 2))), 
                             type=factor(rep("single-read", 4)))
rownames(deseq2.colData) <- colnames(data)
deseq2.dds <- DESeqDataSetFromMatrix(countData = data,
                                     colData = deseq2.colData, 
                                     design = ~ condition)

#run analysis
deseq2.dds <- DESeq(deseq2.dds)
deseq2.res <- results(deseq2.dds)
deseq2.res <- deseq2.res[order(rownames(deseq2.res)) , 

head(deseq2.res)

#Count number of hits with adjusted p-value less then 0.05
dim(deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ])

tmp <- deseq2.res
# The main plot
plot(tmp$baseMean, tmp$log2FoldChange, pch=20, cex=0.45, ylim=c(-3, 3), log="x", col="darkgray",
     main="DEG Estradiol versus Control  (pval <= 0.05)",
     xlab="mean of normalized counts",
     ylab="Log2 Fold Change")
# Getting the significant points and plotting them again so they're a different color
tmp.sig <- deseq2.res[!is.na(deseq2.res$padj) & deseq2.res$padj <= 0.05, ]
points(tmp.sig$baseMean, tmp.sig$log2FoldChange, pch=20, cex=0.45, col="red")
# 2 FC lines
abline(h=c(-1,1), col="blue")
