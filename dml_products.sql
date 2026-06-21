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

-- Update data satu per satu
UPDATE Products SET Category = 'Makanan' WHERE id = 'P0001';

UPDATE Products SET 
    Category = 'Makanan', 
    Description = 'Pasta + Parmesan + Telur + Beef' 
WHERE id = 'P0003';

UPDATE Products SET Price = 65000 WHERE id = 'P0004';

UPDATE Products SET Price = Price + 30000 WHERE id = 'P0005';

-- Insert dan Delete
INSERT INTO Products (id, Name, Price, Quantity) VALUES ('P0006', 'Pizza Full Cheese', 55000, 12);
DELETE FROM Products WHERE id = 'P0006';

-- Update massal atau update field lain
UPDATE Products SET Category = 'Makanan', Description = 'Pasta dan Saus Daging' WHERE id = 'P0005';
UPDATE Products SET Category = 'Makanan', Description = 'Mie Ayam Dengan Topping Ayam Kecap Gurih' WHERE id = 'P0001';
UPDATE Products SET Category = 'Makanan' WHERE id = 'P0002';
UPDATE Products SET Category = 'Makanan', Description = 'Pasta dengan bawang putih dan olive oil' WHERE id = 'P0004';
UPDATE Products SET Price = 20000 WHERE id = 'P0001';

-- Cek hasil akhir
SELECT * FROM Products;

