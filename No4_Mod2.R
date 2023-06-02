# Soal 4
data = read.csv("GTL.csv")

# 4a
library(ggplot2)

ggplot(data, aes(x = Glass, y = Light, color = factor(Temp))) +
  geom_point() +
  labs(x = "Glass", y = "Light", color = "Temperature") +
  ggtitle("Pengaruh Suhu dan Jenis Kaca") +
  theme_minimal()

# 4b
model <- aov(Light ~ Glass * Temp, data = data)
anova_result <- anova(model)
anova_result

# 4c
summary_table <- aggregate(Light ~ Glass + Temp, data = df, FUN = function(x) c(mean = mean(x), sd = sd(x)))

# Menampilkan tabel dengan mean dan standar deviasi
print(summary_table)