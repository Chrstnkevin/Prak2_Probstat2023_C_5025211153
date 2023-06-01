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
