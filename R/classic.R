#' Classic R approaches to data analysis
#'
#' The function here illustrate how a 'old-school' R user might approach
#' data management and analysis.
#'
#' @details There are two files. They are from a microarray experiment.
#'      The first file, ALL-phenotypeData.csv describes the 128 samples.
#'      The second file, ALL--expressionData.csv are the normalized expression
#'      values for 12k probesets across 128 samples. The files originally
#'      came from sheets in Excel, and were exported from Excel using
#'      export-to-csv.
#'
#' @param pdata_file character(1) The path to the phenotype data file.
#'
#' @param exprs_file character(1) The path to the expression data file.
#'
#' @return A data.frame() containing samples as rows and phenotype data
#'      and expression data as columns.
#'
#' @importFrom utils read.csv
#'
#' @export

input_classic <- function(pdata_file, exprs_file) {
    pdata <- read.csv(pdata_file, row.names=1, check.names=FALSE)
    exprs <- read.csv(exprs_file, row.names=1, check.names=FALSE)

    merge(pdata, t(exprs), by=0)  # Note: by=0 means merge by rowname

    ## return a data.frame
}



