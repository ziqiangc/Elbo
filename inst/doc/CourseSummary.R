## ----our-package---------------------------------------------------------
library(Elbo)
hi("Ziqiang")

## ------------------------------------------------------------------------
pdatafl = "C:/Users/ziqiangc/Dropbox/RDevWorkshop/Elbo/ALL-phenoData.csv"
exprfl = "C:/Users/ziqiangc/Dropbox/RDevWorkshop/Elbo/ALL-expression.csv"
classic <- input_classic(pdatafl, exprfl)
classic[1:5,c(1:3, 22:24)]

## ----classic-exprs-hist--------------------------------------------------
hist(colMeans(classic[, -(1:22)]))


