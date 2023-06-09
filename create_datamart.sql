-- menggabungkan masing-masing tabel penjualan dan penjualan_ds,
-- tabel pelanggan dan pelanggan_ds,
-- tabel barang dan barang_ds

create table barang_fix
as
select
	brg.kode_barang,
	brg.nama_barang,
	brg.kode_lini,
	brg.lini,
	brg.kemasan,
	brgds.harga
from barang as brg
left join barang_ds as brgds
using(kode_barang)
;

create table pelanggan_fix
as
select
	pel.id_customer,
	pel.nama,
	pel.id_cabang_sales,
	pel.cabang_sales,
	pel.id_group,
	pel.jenis_group,
	pelds.id_distributor
from pelanggan pel
left join pelanggan_ds pelds
using(id_customer)
;

create table union_penjualan
as
select
	id_invoice, id_customer,id_barang, jumlah_barang, unit, tanggal from penjualan
union 
select
	id_invoice, id_customer,id_barang, jumlah_barang, unit, tanggal from penjualan_ds
order by id_invoice, id_barang
;


--mengecek apakah ada 1 invoice yang memiliki lebih dari 1 customer pada tabel union_penjualan
create table pelanggan_fix
as
select
	pel.id_customer,
	pel.nama,
	pel.id_cabang_sales,
	pel.cabang_sales,
	pel.id_group,
	pel.jenis_group,
	pelds.id_distributor
from pelanggan pel
left join pelanggan_ds pelds
using(id_customer)
;

--terdapat 1 invoice yang memiliki lebih dari 1 customer
--oleh karena itu perlu disinkronkan

update
	union_penjualan
set id_customer = p.id_customer
from penjualan p
where union_penjualan.id_invoice = p.id_invoice
;	
update
	union_penjualan
set tanggal = p.tanggal
from penjualan p
where union_penjualan.id_invoice = p.id_invoice
;

--create base table
create table base_table
as
select
	up.id_invoice,
	up.id_customer,
	up.id_barang,
	up.jumlah_barang,
	up.unit,
	up.tanggal,
	brg.nama_barang,
	brg.kode_lini,
	brg.lini,
	brg.harga,
	pel.nama,
	pel.id_cabang_sales,
	pel.cabang_sales,
	pel.id_group,
	pel.jenis_group,
	pel.id_distributor
from union_penjualan up
left join barang_fix brg on  up.id_barang = brg.kode_barang
left join pelanggan_fix pel on up.id_customer = pel.id_customer
;

--create aggregate table
create table aggregate_table
as
select
	id_invoice,
	id_customer,
	id_barang,
	jumlah_barang,
	unit,
	tanggal,
	nama_barang,
	kode_lini,
	lini,
	harga,
	nama,
	id_cabang_sales,
	cabang_sales,
	id_group,
	jenis_group,
	id_distributor,
	(jumlah_barang * harga) as revenue
from base_table
group by 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16

