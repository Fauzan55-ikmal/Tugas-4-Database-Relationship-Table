-- DDL untuk membuat dan memodifikasi tabel Barang
USE D112521003_eecommercee;

-- Create awal
CREATE TABLE Barang (
    Kode INT,
    Nama VARCHAR(100),
    Harga INT,
    Jumlah INT
);

-- Histori modifikasi (ALTER)
ALTER TABLE Barang ADD Nama_Coloumn TEXT;
ALTER TABLE Barang DROP Nama;
ALTER TABLE Barang CHANGE Nama_Coloumn Nama VARCHAR(100);
ALTER TABLE Barang MODIFY Nama VARCHAR(100) AFTER Kode;
ALTER TABLE Barang CHANGE Nama Nama VARCHAR(100) NOT NULL;

-- Mengubah nama tabel
RENAME TABLE Barang TO Products;

-- Mengubah constraint kolom Nama
ALTER TABLE Products CHANGE Nama Nama VARCHAR(100) NULL;

-- Mengubah struktur tabel secara keseluruhan (Renaming, Adding, Modifying)
ALTER TABLE Products
    CHANGE COLUMN Kode id VARCHAR(10) NOT NULL,
    CHANGE COLUMN Nama Name VARCHAR(100) NOT NULL,
    ADD COLUMN Description TEXT AFTER Name,
    CHANGE COLUMN Harga Price INT(10) UNSIGNED NOT NULL,
    CHANGE COLUMN Jumlah Quantity INT(10) UNSIGNED NOT NULL DEFAULT 0,
    ADD COLUMN Created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP();

-- Menjadikan kolom id sebagai Primary Key
ALTER TABLE Products ADD PRIMARY KEY (id);

-- Menambahkan kolom Category dengan tipe data ENUM
ALTER TABLE Products ADD Category ENUM ('Makanan', 'Minuman', 'Lain-Lain') AFTER Name;