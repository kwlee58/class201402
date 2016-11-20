addmargins.kr <-
function(x) {
tbl.a <- addmargins(x)
dim.r <- dim(tbl.a)[1]
dim.c <- dim(tbl.a)[2]
rownames(tbl.a)[dim.r] <- "계"
colnames(tbl.a)[dim.c] <- "계"
tbl.a
}
