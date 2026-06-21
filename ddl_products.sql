-- DDL untuk membuat dan memodifikasi tabel Barang
USE D112521003_eecommerce;

-- 1. Create awal
CREATE TABLE Barang (
    Kode INT,
    Nama VARCHAR(100),
    Harga INT,
    Jumlah INT
);

-- 2. Histori modifikasi (ALTER)
ALTER TABLE Barang ADD Nama_Coloumn TEXT;
ALTER TABLE Barang DROP Nama;
ALTER TABLE Barang CHANGE Nama_Coloumn Nama VARCHAR(100);
ALTER TABLE Barang MODIFY Nama VARCHAR(100) AFTER Kode;
ALTER TABLE Barang CHANGE Nama Nama VARCHAR(100) NOT NULL;