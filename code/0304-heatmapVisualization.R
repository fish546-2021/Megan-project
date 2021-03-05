#Within R
#load libraries
library("DESeq2")
library("RColorBrewer")
library( "genefilter" )
library("pheatmap")

#I've already run DESEQ2 on this experiment for you. Just load the results
load(deseq2.res)

#Regularized log transformation
rld <- rlog( deseq2.dds )

#Get 25 top varying genes
topVarGenes <- head( order( rowVars( assay(rld) ), decreasing=TRUE ), 25)

#make a subset of the log transformed counts for just the top 25 varying genes
top25Counts<-assay(rld)[topVarGenes,]
#Use pheatmap function to draw a heatmap
#INCLUDE NEXT LINE IF YOU WANT TO SAVE THE FIGURE IN A FILE
#pdf(file="gene.heatmap.pdf")
pheatmap(top25Counts,scale = "row")
#INCLUDE NEXT LINE IF YOU WANT TO SAVE THE FIGURE IN A FILE
#dev.off()

#PLOT PCA
#INCLUDE NEXT LINE IF YOU WANT TO SAVE THE FIGURE IN A FILE
#pdf(file="pca.pdf")
print(plotPCA(rld, intgroup=c("Estradiol")))
#INCLUDE NEXT LINE IF YOU WANT TO SAVE THE FIGURE IN A FILE
#dev.off()