# Soal 1
x = c(78, 75, 67, 77, 70, 72, 78, 70, 77)
y = c(100, 95, 70, 90, 90, 90, 89, 100, 100)

# 1a
selisih = y - x
standar_deviasi = sd(selisih)
standar_deviasi

# 1b
result = t.test(x, y, paired = TRUE)

hasil_t = result$statistic
hasil_t

hasil_p = result$p.value
hasil_p

# 1c
t.test(x, y, paired = TRUE, conf.level = 0.95)