prop.percent <-
function(tbl) {
  matrix(paste(format(prop.table(tbl, margin = 1)*100, digits = 2, nsmall = 1), "%", sep = ""), nrow = dim(tbl)[1], dimnames = dimnames(tbl))
}
