#TUGAS 6 KOMPUTASI STATISTIKA
#NAma : Ajeng Dwi Alecsha
#NIM : 3338250017


#soal 1:
#diketahui:lambda (rata-rata kedatangan) = 3 orang per jam
#ditanya:P(X >= 5)
#penyelesaian:
lambda <- 3
peluang_minimal_5 <- 1 - ppois(4, lambda = lambda)
cat("P(X >= 5) =", peluang_minimal_5, "\n")
cat("Dalam persen =", peluang_minimal_5 * 100, "%\n\n")


#soal 2:
#diketahui:
#jumlah seluruh bola = 100
#jumlah bola merah = 20
#jumlah bola bukan merah = 80
#jumlah bola yang diambil = 10

#ditanya: distribusi peluang jumlah bola merah yg terambil dan nilai harapannya
#penyelesaian:
jumlah_seluruh <- 100
jumlah_merah <- 20
jumlah_bukan_merah <- 80
jumlah_diambil <- 10
x_hyper <- 0:10
peluang_hyper <- dhyper(
  x_hyper,
  m = jumlah_merah,
  n = jumlah_bukan_merah,
  k = jumlah_diambil)
peluang_hyper

#membuat tabel distribusi peluang
hasil_hyper <- data.frame(
  Jumlah_Bola_Merah = x_hyper,
  Peluang = peluang_hyper)
hasil_hyper

#menghitung nilai harapan
nilai_harapan <- jumlah_diambil * jumlah_merah / jumlah_seluruh
nilai_harapan


#soal 3:
#diketahui:
#jumlah percobaan setiap simulasi (n) = 15
#peluang keberhasilan (p) = 0.4
#jumlah simulasi = 1.000

#ditanya:hasil simulasi distribusi Binomial dan perbandingannya dengan PMF teoretis
#penyelesaian:
n <- 15
p <- 0.4
jumlah_simulasi <- 1000

#simulasi Binomial
set.seed(123)
hasil_simulasi <- rbinom(
  jumlah_simulasi,
  size = n,
  prob = p)
summary(hasil_simulasi)

#menghitung rata-rata dan varians hasil simulasi
rata_rata_simulasi <- mean(hasil_simulasi)
varians_simulasi <- var(hasil_simulasi)
cat("\nRata-rata hasil simulasi =", rata_rata_simulasi, "\n")
cat("Varians hasil simulasi =", varians_simulasi, "\n")

#menghitung nilai harapan dan varians teoretis
nilai_harapan_binom <- n * p
varians_teoretis <- n * p * (1 - p)
cat("Nilai harapan teoretis =", nilai_harapan_binom, "\n")
cat("Varians teoretis =", varians_teoretis, "\n\n")

#menghitung PMF teoretis
x_binom <- 0:15
peluang_teoretis <- dbinom(
  x_binom,
  size = n,
  prob = p)
peluang_teoretis

#membuat tabel PMF teoretis
tabel_binom <- data.frame(
  Jumlah_Keberhasilan = x_binom,
  Peluang_Teoretis = peluang_teoretis)
tabel_binom

#membuat histogram hasil simulasi
hist(
  hasil_simulasi,
  breaks = seq(-0.5, 15.5, by = 1),
  probability = TRUE,
  main = "Histogram Simulasi Distribusi Binomial",
  xlab = "Jumlah Keberhasilan",
  ylab = "Peluang",
  col = "pink1",
  border = "white",
  xaxt = "n")
axis(1, at = 0:15)

#menambahkan PMF teoretis pada histogram
points(
  x_binom,
  peluang_teoretis,
  type = "b",
  pch = 19,
  col = "red")