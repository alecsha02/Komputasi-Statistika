#TUGAS 3 KOMPUTASI STATISTIKA
#Nama : Ajeng Dwi Alecsha
#NIM : 3338250017

data(airquality)
head(airquality)
str(airquality)
summary(airquality)

#histogram wind
hist(airquality$Wind,
     breaks = 10,
     probability = TRUE,
     col = "lightsalmon",
     border = "black",
     main = "Histogram Wind",
     xlab = "Wind (mph)")

#density plot wind
dens <- density(airquality$Wind, na.rm = TRUE)
plot(dens,
     main = "Density Plot Wind",
     xlab = "Wind (mph)",
     ylab = "Density",
     col = "darkblue",
     lwd = 2)

#histogram dan density wind
hist(airquality$Wind,
     breaks = 10,
     probability = TRUE,
     col = "lightsalmon",
     border = "black",
     main = "Histogram dan Densitas Wind",
     xlab = "Wind (mph)")
lines(dens,
      col = "darkblue",
      lwd = 2)

#stem-and-leaf wind
stem(airquality$Wind)

#boxplot wind
boxplot(airquality$Wind,
        main = "Boxplot Wind",
        xlab = "Wind (mph)",
        col = "lightcoral")

#scatter plot: wind vs ozone
plot(Ozone ~ Wind,
     data = airquality,
     main = "Scatter Plot: Wind vs Ozone",
     xlab = "Wind (mph)",
     ylab = "Ozone (ppb)",
     pch = 19,
     col = "pink")