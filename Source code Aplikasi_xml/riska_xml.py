import xml.etree.ElementTree as ET
import mysql.connector as konektor

koneksi=konektor.connect(host='localhost',user='root',password='',database='riska')
cursor=koneksi.cursor()

tree=ET.parse('foodorder.xml')
foodorder=tree.findall('foodorder')

for i, j in zip(foodorder,range(1,len(foodorder))):
    menu=i.find('menu').text
    lokasi_merchant=i.find('lokasi_merchant').text
    lokasi_tujuan=i.find('lokasi_tujuan').text
    jarak=i.find('jarak').text
    nama_pemesan=i.find('nama_pemesan').text
    harga=i.find('harga').text
    pembayaran=i.find('pembayaran').text
    simpan="""INSERT INTO foodorder( menu, lokasi_merchant,lokasi_tujuan,jarak,nama_pemesan,harga,pembayaran) VALUES(%s,%s,%s,%s,%s,%s,%s)"""
    cursor=koneksi.cursor()
    cursor.execute(simpan,(menu,lokasi_merchant,lokasi_tujuan,jarak,nama_pemesan,harga,pembayaran))
    koneksi.commit()
    print("foodorder ke-",j," berhasil disimpan")
    print("Makanan diorder oleh",nama_pemesan,"menu yang di pesan",menu,"alamat pengirim",lokasi_merchant,"alamat tujuan",lokasi_tujuan,"jarak tempuh",jarak,"total pembayaran",harga,"di bayar melalui",pembayaran)
    
ambil="SELECT * FROM foodorder"
with koneksi.cursor() as cursor:
    cursor.execute(ambil)
    hasil=cursor.fetchall()
    for row in hasil:
        print(row)  