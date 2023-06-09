create table if not exists penjualan (
	id_distributor varchar,
	id_cabang varchar,
	id_invoice varchar,
	tanggal timestamp,
	id_customer varchar,
	id_barang varchar,
	jumlah_barang int,
	unit varchar,
	harga double precision,
	mata_uang varchar,
	brand_id varchar,
	lini varchar
)
;

create table if not exists pelanggan (
	id_customer varchar,
	level varchar,
	nama varchar,
	id_cabang_sales varchar,
	cabang_sales varchar,
	id_group varchar,
	jenis_group varchar
)
;

create table if not exists barang (
	kode_barang varchar,
	sektor varchar,
	nama_barang varchar,
	tipe varchar,
	nama_tipe varchar,
	kode_lini int,
	lini varchar,
	kemasan varchar
)
;

create table if not exists penjualan_ds (
	id_invoice varchar,
	tanggal date,
	id_customer varchar,
	id_barang varchar,
	jumlah_barang int,
	unit varchar,
	harga int,
	mata_uang varchar
)
;

create table if not exists pelanggan_ds (
	id_customer varchar,
	level varchar,
	nama varchar,
	id_cabang_sales varchar,
	cabang_sales varchar,
	id_distributor varchar,
	jenis_group varchar
)
;

create table if not exists barang_ds (
	kode_barang varchar,
	nama_barang varchar,
	kemasan varchar,
	harga int,
	nama_tipe varchar,
	kode_brand int,
	brand varchar
)
;


	