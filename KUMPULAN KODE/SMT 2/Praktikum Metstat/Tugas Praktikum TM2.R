# Set Directiory
setwd("C:/Users/ASUS/Documents/CODING LENGKAP/SMT 2/Praktikum Metstat")

#LATIHAN SOAL A
# Memanggil Data
Data1=read.table("M2-Data Praktikum 1.txt", header=TRUE, colClasses = c("numeric", "factor")) 
y1=Data1$Asam_Askorbat 
perlakuan=Data1$Varietas 

summary(Data1)

# ANOVA
ANOVA1 <- aov(y1 ~ perlakuan, data = Data1) 
summary(ANOVA1)

# SOAL 2 
#Memanggil Data
Data2=read.table("M2-Data Praktikum 2.txt", header=TRUE, colClasses = c("numeric", "factor", "factor"))
y2=Data2$Pertumbuhan_Tanaman 
Perlakuan_A=Data2$Penyiraman 
Perlakuan_B=Data2$Penyinaran_Matahari 

summary(Data2)

#ANNOVA
#---------tanpa interaksi-------
ANOVA2 <- aov(y2 ~ Perlakuan_A + Perlakuan_B, data = Data2) 
summary(ANOVA2)

#-----------dengan interaksi----------- 
INTERACTION <- aov(y2 ~ Perlakuan_A * Perlakuan_B, data = Data2)
summary(INTERACTION)

#LATIHAN SOAL B
#Memanggil data
Data3=read.table("M2-Data Praktikum 3.txt", header=TRUE, colClasses = c("numeric", "factor", "factor")) 
y3=Data3$Hardness 
Treatments=Data3$Tip 
Block=Data3$Block 

summary(Data3)

#ANOVA
ANOVA3 <- aov(y3 ~ Treatments + Block, data = Data3)
summary(ANOVA3)


