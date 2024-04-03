print('MENGHITUNG NILAI UTBK PERSUBTEST DAN RATA-RATA')
print('-------------------------------------------------------')

benar=0
a= int(input('MASUKKAN JAWABAN BENAR SUBTES PU: '))
pu = a/30*1000
benar+=a
print('SKOR PU: ', pu)

b= int(input('MASUKKAN JAWABAN BENAR PK: '))
pk = b/15*1000
benar+=b
print('SKOR PK: ', pk)

c= int(input('MASUKKAN JAWABAN BENAR SUBTES PPU: '))
ppu = c/20*1000
benar+=c
print('SKOR PPU:', ppu)

d= int(input('MASUKKAN JAWABAN BENAR SUBTES PBM: '))
pbm = d/20*1000
benar+=d
print('SKOR PBM: ',pbm)

e= int(input('MASUKKAN JAAWABAN BENAR SUBTES LITERASI B. INDO: '))
lbi = e/30*1000
benar+=e
print('SKOR LBI: ', lbi)

f= int(input('MASUKKAN JAWABAN BENAR SUBTES LITERASI B. INGGRIS: '))
lbe = f/20*1000
benar+=f
print('SKOR LBE: ',lbe)

g= int(input('MASUKKAN JAWABAN BENAR SUBTEST PENALARAN MATEMATIKA: '))
pm = g/20*1000
benar+=g
print('SKOR PM: ', pm)

rata= (pu+ppu+pbm+pk+lbi+lbe+pk)/7
print('JUMLAH BENAR:', benar, 'dari 150 soal')
print('NILAI RATA-RATA KESELURUHAN ADALAH:', rata)

