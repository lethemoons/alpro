# Buat vector variable bernama angka yang isinya 20 s/d 30
angka <- c(20:30)
print(angka)

# Tampilkan isi variable angka pada posisi ke 3
print(angka[3])

# Tampilkan isi variable angka pada posisi ke 5 gunakan kurung siku ganda
print(angka[5])

# Tampilkan isi variable angka pada posisi ke 4 s/d 6
print(angka[4:6])

# Buat vector teks dengan nama kode_prodi yang diisi sesuai petunjuk soal
kode_prodi <- c('DKV', 'ILKOM', 'ICT')
# Tampilkan isi indeks ketiga dari kode_prodi
print(kode_prodi[3])

#Membuat named vector dengan nama nilai
nilai <- c(statistik = 89, fisika = 95, ilmukomunikasi = 100)

#Menampilkan isi variable nilai
print(nilai)



#Menampilkan isi dengan nama fisika
print(nilai['fisika'])
#Buat variable profil sesuai permintaan soal
profil <- c(nama='Budi', tempat_tinggal='Jakarta', tingkat_pendidikan='S1')
#Tampilkan variable profil
print(profil)



# List disimpan dalam variable dengan nama list_random
list_random <- list(2, "Budi", 4)

# Menampilkan isi list
list_random 

# List disimpan dalam variable dengan nama dati2
dati2 <- list(nama = "Denpasar", propinsi = "Bali")

# Menampilkan isi list dati2
dati2 

# Buat variable kota sesuai permintaan soal
kota <- list(nama_kota='Makassar', propinsi= 'Sulawesi Selatan', luas_km2= 199.3)
# Tampilkan isi variable list kota
kota



#Membuat dua variable vector
fakultas <- c("Bisnis", "D3 Perhotelan", "ICT", "Ilmu Komunikasi", "Seni dan Desain")
jumlah_mahasiswa <- c(260, 28, 284, 465, 735)

#Membuat data frame dari kedua vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa)

#Melihat isi data frame
info_mahasiswa

#Buat vector baru sebagai representasi akreditasi
akreditasi <- c('A','A','B','A','A')
#Buat data frame dari ketiga vector di atas
info_mahasiswa <- data.frame(fakultas, jumlah_mahasiswa, akreditasi)
info_mahasiswa
#menampilkan salahsatu kolom
info_mahasiswa$akreditasi

#Menggunakan package ggplot2
library("ggplot2")
#Membuat kanvas
gambar <- ggplot(info_mahasiswa, aes(x=fakultas, y=jumlah_mahasiswa, fill=fakultas))
gambar <- gambar + geom_bar(width=1, stat="identity")
gambar
#Menambahkan objek bar chart, simpan kembali sebagai variable gambar
gambar <- gambar + geom_bar(width=1, stat="identity")

#Menambahkan judul grafik
gambar <- gambar + ggtitle("Jumlah Mahasiswa per Fakultas")
#Menambahkan caption pada sumbu x
gambar <- gambar + xlab("Nama Fakultas")
#Menambahkan caption pada sumbu y
gambar <- gambar + ylab("Jumlah Mahasiswa")
#Menggambar grafik
gambar




#Menggunakan package ggplot2
library(ggplot2)
#Menggunakan package openxlsx
library(openxlsx)

#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menampilkan data
print(mahasiswa)

#Menampilkan kolom Prodi
print(mahasiswa$Prodi)



library(ggplot2)
library(openxlsx)
#Membaca file mahasiswa.xlsx
mahasiswa <- read.xlsx("https://storage.googleapis.com/dqlab-dataset/mahasiswa.xlsx",sheet = "Sheet 1")

#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","jumlah_mahasiswa"))

piechart<- ggplot(summarybyfakultas, aes(x="", y=jumlah_mahasiswa, fill=fakultas))+ geom_bar(width = 1, stat = "identity")
piechart <- piechart + coord_polar("y", start=0)
piechart <- piechart + ggtitle("Disribusi Mahasiswa per Fakultas")
piechart <- piechart + scale_fill_brewer(palette="Blues")+ theme_minimal()
piechart <- piechart + guides(fill=guide_legend(title="Fakultas"))
piechart <- piechart + ylab("Jumlah Mahasiswa") 
piechart


#Menghitung Jumlah Data by Fakultas
summarybyfakultas <- aggregate(x=mahasiswa$JUMLAH, by=list(Kategori=mahasiswa$Fakultas, Tahun=mahasiswa$ANGKATAN), FUN=sum)
summarybyfakultas <- setNames(summarybyfakultas, c("fakultas","tahun", "jumlah_mahasiswa"))
summarybyfakultas

summarybyfakultas$tahun = as.factor(summarybyfakultas$tahun)
summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),]

ggplot(summarybyfakultas[summarybyfakultas$fakultas %in% c("ICT", "Ilmu Komunikasi"),], aes(x=fakultas, y=jumlah_mahasiswa)) + 
  geom_bar(stat = "identity", aes(fill = tahun), width=0.8, position = position_dodge(width=0.8)) + 
  theme_classic() 
