#TUGAS 4 KOMPUTASI STATISTIKA
#NAma : Ajeng Dwi Alecsha
#NIM : 3338250017

#kasus 1( Sebaran Poisson )
lambda <- 3

# P(X >= 5) = 1 - P(X <= 4)
p_poisson<- 1 - ppois(4, lambda)
p_poisson

#cara alternatf
p_poisson2 <- ppois(4,lambda, lower.tail=F)
p_poisson2

# PMF Poisson
par(mar = c(4, 4, 2, 1))
x <- 0:12
pmf <- dpois(x, lambda)
plot(x, pmf, type = "h", lwd = 3,
     main = "Poisson (lambda = 3)",
     xlab = "Jumlah pelanggan",
     ylab = "P(X = x)")

#kasus 2 (Sebaran Hipergeometrik)
N <- 100   
K <- 20     
n <- 10     

#Domain X
x <- 0:n
#PMF
pmf <- dhyper(x, m = K, n = N - K, k = n)
names(pmf)<-x
round(pmf,5)
sum(pmf) 
#ekspetasi dan varian teoritis
Ex<-n*K/N
Ex
Varx<-n * (K/N) * (1-K/N) *((N-n)/(N-1))
Varx


#Plot PMF
par(mar = c(4, 4, 2, 1))
plot(pmf, type = "h", lwd = 3,
     main = "pmf hipergeometrik (N=100, K=20, n=10)",
     xlab = "Jumlah bola merah terambil",
     ylab = "P(X = x)")


#Simulasi sampling tanpa pengembalian
set.seed(2026)
m <- 10000
ssim <- rhyper(m,
               m = K,
               n = N - K,
               k = n)
mean(ssim)
var(ssim)

#kasus 3
#Distribusi Binomial
set.seed(2026)
n <- 15
p <- 0.4
m <- 1000

#Simulasi 1000 percobaan Binomial
ssimp1 <- rbinom(m, size = n, prob = p)
head(ssimp1, n = 10)

#Histogram simulasi
hist(ssimp1,
     breaks = seq(-0.5, n + 0.5, by = 1),
     probability = TRUE,
     main = "Simulasi vs PMF teoritis Binomial(n=15, p=0.4)",
     xlab = "Jumlah sukses(x)",
     ylab = "Probabilitas")

#PMF teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)

data.frame(x = x, P = pmf)

#PMF Binomial
plot(x, pmf,
     type = "h",
     lwd = 3,
     main = "PMF Binomial(n=15, p=0.4)",
     xlab = "Jumlah sukses",
     ylab = "P(X=x)")

#PMF teoretis
points(x, pmf, type = "h", lwd = 3)
points(x, pmf, pch = 16)

#Rata-rata & varians hasil simulasi
mean(ssimp1)
var(ssimp1)

#Ekspektasi teoritis
EX<-n * p
EX
