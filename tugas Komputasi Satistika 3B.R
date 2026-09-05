#1. Vector numeric,Vector integer, Vector logical,Vector caracter
# Vector numeric
nilai <- c(10, 20, 30, 40)
print(nilai)
# Vector integer
angka <- c(1L, 2L, 3L, 4L)
print(angka)
# Vector logical
jawaban <- c(TRUE, FALSE, TRUE, FALSE)
print(jawaban)
# Vector character
kelas <- c("A", "B", "C", "D")
print(kelas)

#2. matrix 4x4
tabel <- matrix(1:16, nrow = 4, ncol = 4)
tabel

#3. array 4d
susun <- array(1:16, dim = c(2, 2, 2, 2))
susun

#4. data frame kolom:4 (caracter, numeric, logical,logical,)
catatan <- data.frame(
  nama = c("Amam", "Rifki", "Aulia", "Alika"),
  nilai = c(10, 20, 30, 40),
  status1 = c(TRUE, FALSE, TRUE, FALSE),
  status2 = c(FALSE, TRUE, FALSE, TRUE)
)
catatan

#5. list 5 komponen: (vector baris, vector kolom, matrix 4×4, 
#data frame 4 kolom, list isi 4 (matrix 4x4, array 4d,data frame, vector baris))
isi <- list(
  c(12, 27, 35, 48),
  c(56, 63, 71, 89),
  tabel,
  catatan,
  list(
    tabel,
    susun,
    catatan,
    c(14, 29, 43, 67)
  )
)
print(isi)
