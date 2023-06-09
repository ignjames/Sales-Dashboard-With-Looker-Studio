# Kimia Farma's Semester 1 2022 Sales
Proses end to end pembuatan sales dashboard dilakukan dalam beberapa langkah, diantaranya:
- Perlu diketahui data source yang diberikan berupa excel dengan beberapa sheet, maka dari itu
setiap sheet perlu disave sebagai csv. Setiap csv sudah tertera di folder dataset.
- Selanjutnya melakukan create table dengan menuliskan nama tiap kolom serta mementukan tipe data, dilanjutkan dengan import table. Dapat dilihat dari file create_table dan import_table.
- Menyatukan masing-masing table: penjualan dengan penjualan_ds, pelanggan dengan pelanggan_ds, dan barang dengan barang_ds. Sehingga dari
6 table menjadi 3 table. Dapat dilihat pada file create_datamart.
- Membuat datamart dengan menyatukan ketiga table menjadi satu table. Kemudian melakukan agregasi yaitu melakukan perkalian antara harga dan jumlah barang untuk mendapatkan revenue per id invoice. Dapat dilihat pada file create_datamart.
- Table yang sudah jadi kemudian diconvert menjadi file csv dan diexport menuju looker studio.
- Hasil dashboard yang telah dibuat dengan looker studio dapat dilihat pada file Kimia Farma Sales Dashboard.pdf 
