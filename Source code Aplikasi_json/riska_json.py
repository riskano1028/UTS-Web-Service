import json
import mysql.connector as konektor

koneksi=konektor.connect(host='localhost',user='root',password='',database='riska')
cursor=koneksi.cursor()

f = open('riska_json2.json')
konten = json.load(f)
data=konten['boarding_pass']

j=1
for i in data:
    nama=i['nama']
    seat=i['seat']
    no_penerbangan=i['no_penerbangan']
    pos_from=i['from']
    pos_to=i['to']
    maskapai=i['maskapai']
    status_class=i['class']
    date=i['date']
    simpan="""INSERT INTO boarding_pass(nama, seat, no_penerbangan, pos_from, pos_to, maskapai, status_class, date) VALUES(%s,%s,%s,%s,%s,%s,%s,%s)"""
    cursor=koneksi.cursor()
    cursor.execute(simpan,(nama,seat,no_penerbangan,pos_from,pos_to,maskapai,status_class,date))
    koneksi.commit()
    print("data Boarding pass ke-",j," berhasil disimpan")
    print("Penumpang dengan nama",nama,"menggunakan maskapai",maskapai,"dari",pos_to,"arah tujuan",pos_to,"dengan no penerbangan",no_penerbangan,status_class,"dengan no kursi",seat,"akan berangkat pada",date)
    j+=2
        
f.close()

ambil="SELECT * FROM boarding_pass"
with koneksi.cursor() as cursor:
    cursor.execute(ambil)
    hasil=cursor.fetchall()
    for row in hasil:
        print(row)