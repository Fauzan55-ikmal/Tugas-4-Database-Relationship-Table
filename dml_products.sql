USE D112521003_eecommercee;

-- awal QUERY UNTUK TUGAS 3
-- 1. Bersihkan tabel agar data bersih dari awal
DELETE FROM Products;

-- 2. Insert data awal (jangan ada id duplikat)
INSERT INTO Products (id, Name, Category, Description, Price, Quantity) VALUES
('P0001', 'Mie Ayam Original', 'Makanan', 'Mie Ayam Dengan Topping Ayam Kecap Gurih', 20000, 100),
('P0002', 'Mie Ayam Bakso Tahu', 'Makanan', 'Mie Ayam Original + Bakso Tahu', 30000, 100),
('P0003', 'Pasta Carbonara', 'Makanan', 'Pasta + Parmesan + Telur + Beef', 50000, 50),
('P0004', 'Pasta Aglio E Olio', 'Makanan', 'Pasta dengan bawang putih dan olive oil', 65000, 75),
('P0005', 'Lasagna', 'Makanan', 'Pasta dan Saus Daging', 75000, 30);

-- 3. Query SELECT untuk verifikasi
SELECT * FROM Products;
SELECT id, Name, Price, Quantity FROM Products WHERE Quantity = 30;
SELECT id, Name FROM Products WHERE Name = 'Pasta Carbonara';
SELECT id, Name, Description, Price FROM Products WHERE Price = 45000;
SELECT id, Name, Description, Price FROM Products WHERE Price < 35000;

-- 4. Uji coba INSERT dan DELETE (P0006)
INSERT INTO Products (id, Name, Category, Price, Quantity) 
VALUES ('P0006', 'Pizza Full Cheese', 'Makanan', 55000, 12);
DELETE FROM Products WHERE id = 'P0006';

-- 5. Query dengan Alias dan LIKE
SELECT id AS 'Kode', Name AS 'Nama', Price AS 'Harga', Quantity AS 'Stock' FROM Products;
SELECT * FROM Products WHERE Name LIKE '%Pasta%';
SELECT * FROM Products WHERE Name LIKE '%mie%';

-- end QUERY UNTUK TUGAS 3

-- QUERY UNTUK TUGAS 4
-- Memasukkan data ke tabel wishlist
INSERT INTO wishlist (Product_id, Description) VALUES ('P0001', 'Makanan Kesukaan');

-- Menampilkan hasil
SELECT * FROM wishlist;

-- 1. Memasukkan data awal
INSERT INTO wishlist (Product_id, Description) VALUES ('P0001', 'Makanan Kesukaan');

-- 2. Simulasi pengujian ON DELETE CASCADE: Memasukkan data baru
INSERT INTO products (id, name, category, price, quantity) VALUES ('PXXXX', 'Contoh', 'Lain-Lain', 12500, 12);
INSERT INTO wishlist (Product_id, Description) VALUES ('PXXXX', 'Favorit Saya');

-- 3. Verifikasi data sebelum di-delete
SELECT * FROM wishlist;

-- 4. Menghapus data di products untuk menguji CASCADE
DELETE FROM products WHERE id = 'PXXXX';

-- 5. Verifikasi bahwa data di wishlist ikut terhapus otomatis
SELECT * FROM wishlist;

-- 6. Query pengujian JOIN
SELECT 
    w.id AS wishlist_id, 
    p.id AS product_id, 
    p.name AS product_name, 
    w.description AS wishlist_description 
FROM wishlist AS w 
JOIN products AS p ON (w.Product_id = p.id);

-- Memasukkan data ke tabel customers
INSERT INTO customers (email, first_name, last_name) 
VALUES ('fauzanfauziafauzi@gmail.com', 'Fauzan', 'Fauzia Fauzi');

-- Mengupdate data wishlist agar memiliki relasi dengan customer
UPDATE wishlist SET customer_id = 1 WHERE id = 1;

-- Verifikasi data dengan JOIN 3 tabel
SELECT 
    customers.email, 
    products.id, 
    products.name, 
    wishlist.description
FROM wishlist
JOIN products ON (products.id = wishlist.Product_id)
JOIN customers ON (customers.id = wishlist.customer_id);
-- end QUERY UNTUK TUGAS 4