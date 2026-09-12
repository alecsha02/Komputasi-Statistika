#Tugas 2 KOMPUTASI STATISTIKA
#Nama : Ajeng Dwi Alecsha
#NIM : 3338250017

# 1. menampilkan Sepal.Length
iris$Sepal.Length

# 2. tipe data tiap kolom
sapply(iris, class)

# 3. buat variabel turunan dari Sepal.Width
iris$turunan <- ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
iris$turunan

# 4. ubah nama turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"
names(iris)

# 5. ambil data sepal Besar dari species virginica
data_virginica <- iris[iris$sepal == "Besar" & iris$Species == "virginica",]
data_virginica

# 6. cek jumlah setiap species
table(iris$Species)

# 7. pecah data iris menjadi 3 data frame berdasarkan species
iris_setosa <- iris[iris$Species == "setosa", ]
iris_setosa
iris_versicolor <- iris[iris$Species == "versicolor", ]
iris_versicolor
iris_virginica <- iris[iris$Species == "virginica", ]
iris_virginica 

# 8. urutan data berdasarkan Sepal.Width
data_species$setosa <- data_species$setosa[
  order(data_species$setosa$Sepal.Width),]
data_species$setosa

data_species$versicolor <- data_species$versicolor[
  order(data_species$versicolor$Sepal.Width),]
data_species$versicolor

data_species$virginica <- data_species$virginica[
  order(data_species$virginica$Sepal.Width),]
data_species$virginica