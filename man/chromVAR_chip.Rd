% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chromVAR_chip.R
\name{chromVAR_chip}
\alias{chromVAR_chip}
\title{Run ChromVAR ChIP-seq}
\usage{
chromVAR_chip(
  atac.sce = atac.sce,
  motifmatcher_chip.se = motifmatcher_chip.se,
  assay = "VirtualChipScores",
  background = bgdPeaks.se,
  genome = BSgenome.Mmusculus.UCSC.mm10,
  positive_only = TRUE,
  min_chip_score = 0.15,
  min_number_peaks = 50,
  TFs_filt = NULL,
  test = FALSE,
  method = "ArchR",
  cores = detectCores()
)
}
\arguments{
\item{atac.sce}{A SingleCellExperiment object containing the ATAC-seq data}

\item{motifmatcher_chip.se}{A MotifMatchR object (output of silico_chip function())}

\item{assay}{Character string specifying which assay of motifmatcher_chip.se to use. Default is 'VirtualChipScores'}

\item{background}{A SummarizedExperiment object containing the background peaks. If NULL, the background peaks are calculated using the ATAC-seq data and genome annotation provided in the genome argument.}

\item{genome}{BSgenome object used to calculate background peaks when background = NULL.}

\item{positive_only}{Logical indicating whether to filter out negative TF binding values. Default is TRUE.}

\item{min_chip_score}{Minimum ChIP-seq score to use for filtering motifs. Default is 0.15.}

\item{min_number_peaks}{Minimum number of peaks to include for each TF. Default is 50.}

\item{TFs_filt}{Character vector containing the names of TFs to include in the analysis. Default is NULL.}

\item{test}{Logical indicating whether to use a test set of TFs for the analysis. Default is FALSE.}

\item{method}{Character string indicating whether to use the ArchR or ChromVAR implementation for the ChIP-seq analysis. Default is 'ArchR'.}

\item{cores}{Integer specifying the number of cores to use for parallel processing. Default is the number of cores available.}
}
\value{
A SummarizedExperiment object with a VirtualChipScores assay containing the ChromVAR scores for each motif.
}
\description{
This function performs ChromVAR on the subset of in silico ChIP-seq peaks. It takes in an atac.sce object and a motifmatcher_chip.se object and outputs the chromVAR scores for in silico ChIP-seq peaks each motif.
}
