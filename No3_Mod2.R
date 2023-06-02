# Soal 3
n_1 = 20
n_2 = 27
mean_1 = 3.64
mean_2 = 2.79
s_1 = 1.67
s_2 = 1.5

# 3b
tsum.test(
  mean.x = mean_1, mean.y = mean_2, 
  n.x = n_1, n.y = n_2, 
  s.x = s_1, s.y = s_2,
  alternative="two.side",
  var.equal = TRUE, 
  conf.level = 0.95
)

# 3c
library(mosaic)
plotDist(dist = 't', df = 2, col = "purple")

# 3d
p_kiri = qt(p = 0.05, df = 2, lower.tail = TRUE)
p_kanan = qt(p = 0.05, df = 2, lower.tail = FALSE)
p_kiri
p_kanan
