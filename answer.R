for(i in 1:9) {
  for(j in 1:9) {
    print(sprintf("%s * %s = %s", i, j,i*j));
  } 
}


f = read.table("match.txt", sep = "|")
a = matrix(-1, nrow=5, ncol=5)

colnames(a) = c("A","B","C", "D", "E")
rownames(a) = c("A","B","C", "D", "E")

for(i in 1:nrow(f)){
  a[f[i,1], f[i,2]] = f[i,3]
}
