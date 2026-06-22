# Laporan Praktikum Basis Data - Tugas 4

Repository ini berisi hasil pengerjaan Tugas 4 mengenai implementasi relasi tabel, aturan _Foreign Key_, dan _Join Query_ pada database `d112521003_eecommerce`.

## Lingkungan Pengembangan (Tools)

- **Database Server**: XAMPP (MariaDB 10.4.32)
- **Database Management**: phpMyAdmin & MySQL Command Line
- **Editor**: VS Code
- **Version Control**: Git

## Isi Repository

- `ddl_products.sql`: Berisi struktur tabel `wishlist` dan `customers` beserta relasi dan _constraint_-nya.
- `dml_products.sql`: Berisi kumpulan perintah manipulasi data (DML) untuk pengujian _CASCADE_ dan _JOIN_ 3 tabel.
- `D112521003_IFK25_Fauzan F F_Tugas 4.docx`: Dokumen laporan lengkap hasil praktik.

## Penjelasan Singkat

1. **DDL**: Mendefinisikan tabel `customers` dan memodifikasi `wishlist` dengan menambahkan `customer_id` sebagai _foreign key_.
2. **DML**: Mendokumentasikan pengujian _ON DELETE CASCADE_ (menghapus data produk otomatis menghapus data wishlist) dan pengujian _JOIN_ antar tabel (products, wishlist, dan customers).
