copy penjualan_ds(id_invoice,tanggal,id_customer,id_barang,jumlah_barang,unit,harga,mata_uang)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\penjualan_ds.csv'
delimiter ','
CSV HEADER;

copy penjualan(id_distributor,id_cabang,id_invoice,tanggal,id_customer,id_barang,jumlah_barang,unit,harga,mata_uang,brand_id,lini)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\penjualan.csv'
delimiter ','
CSV HEADER;

copy pelanggan_ds(id_customer,level,nama,id_cabang_sales,cabang_sales,id_distributor,jenis_group)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\pelanggan_ds.csv'
delimiter ','
CSV HEADER;

copy pelanggan(id_customer,level,nama,id_cabang_sales,cabang_sales,id_group,jenis_group)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\pelanggan.csv'
delimiter ','
CSV HEADER;

copy barang_ds(kode_barang,nama_barang,kemasan,harga,nama_tipe,kode_brand,brand)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\barang_ds.csv'
delimiter ','
CSV HEADER;

copy barang(kode_barang,sektor,nama_barang,tipe,nama_tipe,kode_lini,lini,kemasan)
from 'C:\Users\Asus\Documents\Rakamin\VIX\kimia farma\project\csv\barang.csv'
delimiter ','
CSV HEADER;

