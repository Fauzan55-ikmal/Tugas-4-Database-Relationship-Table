USE D112521003_eecommercee;

-- Memasukkan data baru
INSERT INTO Products (id, Name, Price, Quantity)
VALUES ('P0001', 'Mie Ayam Original', 15000, 100);

-- Menampilkan data
SELECT * FROM Products;

-- Memasukkan data tambahan
INSERT INTO Products (id, Name, Description, Price, Quantity) VALUES
('P0001', 'Mie Ayam Bakso Tahu', 'Mie Ayam Original + Bakso Tahu', 20000, 100);

-- Mengubah data yang sudah ada (Update)
UPDATE Products SET id = 'P0002' WHERE Name = 'Mie Ayam Bakso Tahu';

-- Memasukkan beberapa data sekaligus
INSERT INTO Products (id, Name, Description, Price, Quantity) VALUES
('P0003', 'Pasta Carbonara', NULL, 32000, 50),
('P0004', 'Pasta Aglio E Olio', NULL, 35000, 75),
('P0005', 'Lasagna', NULL, 45000, 30);

-- Query SELECT untuk verifikasi data (berbagai kondisi)
SELECT * FROM Products;
SELECT id, Name, Price, Quantity FROM Products;
SELECT id, Name, Price, Quantity FROM Products WHERE Quantity = 30;
SELECT id, Name FROM Products WHERE Name = 'Pasta Carbonara';
SELECT id, Name, Description, Price FROM Products WHERE Price = 45000;
SELECT id, Name, Description, Price FROM Products WHERE Price < 35000;

