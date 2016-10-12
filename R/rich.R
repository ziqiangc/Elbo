#' Rich data input
#'
#' Capture the semantic meaning of data that we present.
#' For instance, separately recongnizing...
#'
#'
#' @param pdata_file character(1) The path to the phenotype data file.
#'
#' @param exprs_file character(1) The path to the expression data file.
#'
#' @return A SummarizedExperiment() containing samples as colData(),
#'      and expression values as assay().
#'
#' @importFrom SummarizedExperiment SummarizedExperiment
#' @export
#'
input_rich <- function(pdata_file, exprs_file) {
    pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
    exprs <- read.csv(exprs_file, row.names=1, check.names=FALSE)

    SummarizedExperiment(as.matrix(exprs), colData=pdata)

    ## return a SummarizedExperiment object
}




