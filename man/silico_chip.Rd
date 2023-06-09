% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/silico_chip.R
\name{silico_chip}
\alias{silico_chip}
\title{Predict TF binding sites and update motifmatchr results using virtual ChIP-seq library}
\usage{
silico_chip(
  atac.sce = atac.sce,
  tf2peak_cor.se = tf2peak_cor.se,
  motifmatcher.se = motifmatcher.se,
  motif2gene.dt = motif2gene.dt,
  min_number_peaks = 50,
  TFs_filt = NULL,
  remove_motifs = c("T_789"),
  cores = detectCores()
)
}
\arguments{
\item{atac.sce}{A SingleCellExperiment object containing ATAC-seq data.}

\item{tf2peak_cor.se}{SummarizedExperiment object containing correlation scores between TFs and peaks (output of cor_TF_acc())}

\item{motifmatcher.se}{SingleCellExperiment object containing motif matches.}

\item{motif2gene.dt}{Data table containing the mapping of motifs to genes.}

\item{min_number_peaks}{minimum number of peaks required to create a virtual ChIP-seq library for a TF}

\item{TFs_filt}{Character vector containing the names of TFs to include in the analysis. Default is NULL.}

\item{remove_motifs}{character vector of motifs to be manually removed}

\item{cores}{integer indicating number of CPU cores to be used for parallel processing}
}
\value{
a SingleCellExperiment object containing updated motif match scores
}
\description{
Predict TF binding sites and update motifmatchr results using virtual ChIP-seq library
}
