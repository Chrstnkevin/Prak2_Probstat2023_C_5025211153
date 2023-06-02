library(BSDA)
rerata = 25000
nmob = 100
rerata_sampel = 23500
sd = 3000

zsum.test(
  mean.x = rerata_sampel, 
  sigma.x = sd, 
  n.x = nmob,
  alternative = "greater", 
  mu = rerata, 
  conf.level=0.95
)

