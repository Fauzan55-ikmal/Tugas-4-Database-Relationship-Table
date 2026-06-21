USE D112521003_eecommercee;

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