#TUGAS 5 KOMPUTASI STATISTIKA
#NAma : Ajeng Dwi Alecsha
#NIM : 3338250017

## Soal 1
# Rata-rata waktu tunggu = 5 menit
# Peluang waktu tunggu lebih dari 5 menit
mu <- 5
lambda <- 1 / mu
peluang_tunggu <- pexp(5, rate = lambda, lower.tail = FALSE)
peluang_tunggu


## Soal 2
# Kereta tiba antara 07.00 - 07.20
# Ditanyakan varians waktu tunggu
a <- 0
b <- 20
varian_waktu <- (b - a)^2 / 12
varian_waktu


## Soal 3
# Rata-rata masa pakai sensor = 10 tahun
# Peluang sensor rusak sebelum 5 tahun
mu <- 10
lambda <- 1 / mu
peluang_sensor <- pexp(5, rate = lambda)
peluang_sensor


## Soal 4
# Berat kopi berdistribusi normal
# Rata-rata = 250 gram dan simpangan baku = 5 gram
mu <- 250
sigma <- 5
peluang_kopi <- pnorm(240, mean = mu, sd = sigma)
peluang_kopi