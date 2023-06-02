# Prak2_Probstat2023_C_5025211153
Modul 2 Estimasi Parameter, Uji Hipotesis, dan ANOVA

Nama  : Christian Kevin Emor

NRP   : 5025211153

## Soal No 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas.
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/aab0d247-21d0-4cfb-a6fe-6f58919287a3)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

##### A. Carilah Standar deviasi dari data selisih pasangan pengamatan tabel diatas
Untuk mendapatkan standar deviasi kita bisa mencari dari combine y dengan combine x

```
selisih = y - x
standar_deviasi = sd(selisih)
standar_deviasi
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/6e786168-efcc-4977-b2fb-72496d901d96)

##### B. Carilah nilai t (p-value)
Untuk mencari nilai t dan p-value (nilai probabilitas) terkait dengan perbedaan antara kedua sampel, kita dapat menggunakan uji t berpasangan (paired t-test). Uji t berpasangan digunakan ketika kita memiliki data yang diambil dari pasangan pengamatan yang sama sebelum dan sesudah suatu perlakuan atau kondisi.

```
result = t.test(x, y, paired = TRUE)

hasil_t = result$statistic
hasil_t

hasil_p = result$p.value
hasil_p
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/2e35de75-534e-425f-99f5-b51dbfbbc28b)

##### C. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴”.

kita perlu menggunakan nilai p-value yang telah dihitung sebelumnya. Pada langkah sebelumnya, kita telah menghitung p-value menggunakan uji t berpasangan. Sekarang, kita dapat membandingkan nilai p-value dengan tingkat signifikansi α untuk mengambil keputusan statistik.

Jika nilai p-value lebih kecil dari α (p-value < α), maka kita akan menolak hipotesis nol H0 dan menyimpulkan bahwa terdapat pengaruh yang signifikan secara statistika dalam kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

Namun, jika nilai p-value lebih besar atau sama dengan α (p-value >= α), maka kita gagal menolak hipotesis nol H0 dan menyimpulkan bahwa tidak terdapat bukti yang cukup untuk menyatakan adanya pengaruh yang signifikan secara statistika dalam kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A.

```
t.test(x, y, paired = TRUE, conf.level = 0.95)
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/70542e7e-2503-4bf4-a04c-b7d5fe16de64)


## Soal No 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3.000 kilometer (kerjakan menggunakan library seperti referensi pada modul).

##### A. Apakah Anda setuju dengan klaim tersebut? Jelaskan.


Untuk menentukan apakah kita setuju atau tidak setuju dengan klaim bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun, kita dapat menggunakan uji hipotesis.

Dalam uji hipotesis, hipotesis nol (H0) adalah klaim yang ingin kita uji, sedangkan hipotesis alternatif (H1) adalah klaim yang ingin kita dukung jika data memberikan cukup bukti. Dalam kasus ini, H0 adalah "rata-rata jarak yang ditempuh mobil per tahun adalah 25.000 kilometer" dan H1 adalah "rata-rata jarak yang ditempuh mobil per tahun lebih dari 25.000 kilometer". Kita akan menggunakan uji t untuk populasi tunggal karena kita hanya memiliki sampel tunggal (100 pemilik mobil). Dalam uji t, kita akan membandingkan rata-rata sampel dengan klaim yang dikemukakan dalam H0.

```
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
```

Tidak setuju dengan klaim tersebut
###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/72409fc2-df6b-4f30-af98-09403ff88234)


##### B. Buatlah kesimpulan berdasarkan p-value yang dihasilkan!

Karena nilai p-value yang dihasilkan dari uji hipotesis adalah 1, maka berdasarkan tingkat signifikansi yang umumnya ditetapkan sebesar 0,05, kita tidak akan menolak hipotesis nol (H0) dan tidak setuju dengan klaim bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun.

Dalam hal ini, p-value yang sangat tinggi menunjukkan bahwa tidak ada cukup bukti statistik untuk mendukung klaim tersebut. Oleh karena itu, kesimpulan yang dapat kita ambil adalah bahwa berdasarkan sampel yang diberikan, tidak ada bukti yang cukup untuk menyimpulkan bahwa mobil dikemudikan rata-rata lebih dari 25.000 kilometer per tahun.


## Soal No 3

Diketahui perusahaan memiliki seorang data analyst yang ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/ca2a36e1-3f4c-4c01-9124-7cc94c36ad71)

Dari data di atas berilah keputusan serta kesimpulan yang didapatkan. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)?

##### A. H0 dan H1

Hipotesis nol (H0) adalah "Tidak ada perbedaan dalam rata-rata jumlah saham antara Kota Bandung dan Bali" dan hipotesis alternatif (H1) adalah "Ada perbedaan dalam rata-rata jumlah saham antara Kota Bandung dan Bali".
```
H0: μ1 = μ2 (Tidak ada perbedaan dalam rata-rata jumlah saham antara Kota Bandung dan Bali)
H1: μ1 ≠ μ2 (Ada perbedaan dalam rata-rata jumlah saham antara Kota Bandung dan Bali)
```

##### B. Hitung sampel statistik

Untuk menghitung sampel statistik, kita dapat menggunakan data yang diberikan.

```
tsum.test(
  mean.x = mean_1, mean.y = mean_2, 
  n.x = n_1, n.y = n_2, 
  s.x = s_1, s.y = s_2,
  alternative="two.side",
  var.equal = TRUE, 
  conf.level = 0.95
)
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/4790f134-d62c-4250-8d32-f845b69faed7)

##### C. Lakukan uji statistik (df =2)

kita bisa menggunakan bantuan library mosaic dalam pengerjaan soal ini

```
library(mosaic)
plotDist(dist = 't', df = 2, col = "purple")
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/40e7f76b-1484-46b5-87d7-d44b082b6d19)

##### D. Nilai kritikal

Untuk menentukan nilai kritikal (nilai kritis), kita perlu menentukan tingkat signifikansi yang ditetapkan terlebih dahulu. Tingkat signifikansi (α) adalah ambang batas yang digunakan untuk menentukan apakah kita akan menolak atau gagal menolak hipotesis nol (H0).

```
p_kiri = qt(p = 0.05, df = 2, lower.tail = TRUE)
p_kanan = qt(p = 0.05, df = 2, lower.tail = FALSE)
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/37924dc0-41de-4ed7-8b3c-30a07f8ef2be)

##### E. Keputusan

Dalam kasus ini, nilai p-value yang dihasilkan dari uji statistik adalah 0.07381. Jika tingkat signifikansi yang ditetapkan sebelumnya adalah 0.05, maka karena nilai p-value (0.07381) lebih besar dari tingkat signifikansi, kita tidak akan menolak hipotesis nol (H0).

Hasil bergantung pada tingkat signifikansi yang ditetapkan sebelumnya. Jika tingkat signifikansi lebih tinggi (misalnya 0.1), maka kita dapat menolak hipotesis nol dengan p-value 0.07381. Namun, dalam hal ini, dengan tingkat signifikansi 0.05, kita tidak menolak hipotesis nol.

##### F. Kesimpulan

Tidak ada cukup bukti statistik yang mendukung perbedaan yang signifikan dalam rata-rata jumlah saham antara Kota Bandung dan Bali pada tingkat signifikansi 0.05. Dalam konteks data yang diberikan, kita tidak dapat mengatakan dengan keyakinan statistik yang tinggi bahwa ada perbedaan yang signifikan antara kedua kota dalam hal jumlah saham.


## Soal No 4

Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: https://drive.google.com/file/d/1pICtCrf61DRU86LDPQDJmcKiUMVt9ht4/view. 

##### A. Buatlah plot sederhana untuk visualisasi data.

kita bisa menggunakan bantuan library ggplot2. Plot akan menampilkan scatterplot yang menunjukkan pengaruh suhu operasi dan jenis kaca pelat muka terhadap keluaran cahaya pada tabung osiloskop

```
library(ggplot2)

ggplot(data, aes(x = Glass, y = Light, color = factor(Temp))) +
  geom_point() +
  labs(x = "Glass", y = "Light", color = "Temperature") +
  ggtitle("Pengaruh Suhu dan Jenis Kaca") +
  theme_minimal()
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/25436f02-c7c8-4240-bd26-07e19ac0b840)

##### B. Lakukan uji ANOVA dua arah.

Untuk melakukan uji ANOVA dua arah (two-way ANOVA) dalam R, kita dapat menggunakan fungsi aov() atau fungsi lm() yang diikuti oleh fungsi anova()

```
model <- aov(Light ~ Glass * Temp, data = data)
anova_result <- anova(model)
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/a49c2d9a-12e9-4f3b-954e-135bddd15f19)

##### C. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi).

kita dapat menggunakan fungsi aggregate() dalam R
```
summary_table <- aggregate(Light ~ Glass + Temp, data = df, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(summary_table)
```

###### OUTPUT
![image](https://github.com/Chrstnkevin/Prak2_Probstat2023_C_5025211153/assets/97864068/65e6218d-3478-4401-954f-f341ff458abc)
