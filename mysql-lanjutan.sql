--- Create Database ---
create database skilvulbookstore;

--- Use Database ---
use skilvulbookstore;

--- Create Table ---
create table penerbit (id int not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50) 
    -> );

--- Create Table ---
create table penulis (id int(10) not null auto_increment primary key,
    -> nama varchar(50),
    -> kota varchar(50)
    -> );

--- Create Table ---
create table buku ( id int not null auto_increment, 
    ->     ISBN varchar(50), 
    ->     judul varchar(50), 
    ->     harga int, 
    ->     stock int, 
    ->     penulis int, 
    ->     penerbit int, 
    ->     foreign key (penulis) references penulis(id),  
    ->     foreign key (penerbit) references penerbit(id) ,
    ->     constraint pk_buku primary key (id) );

--- Insert ---
INSERT INTO `penulis` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'garnedyna', 'pasuruan'), 
    (NULL, 'rafael', 'bondowoso'),
    (NULL, 'kiandra', 'malang'),
    (NULL, 'riri', 'kepulaun riau'), 
    (NULL,'rara', 'bogor'), 
    (NULL, 'putri', 'depok');

---insert ---
INSERT INTO `penerbit` (`id`, `nama`, `kota`) VALUES 
    (NULL, 'smtown', 'myeongdong'), 
    (NULL, 'ygent', 'gangnam'), 
    (NULL, 'jypent', 'seoul'), 
    (NULL, 'yuehua', 'beijing'),
    (NULL, 'hybe', 'jogja'),
    (NULL, 'pledis', 'jakarta'),
    (NULL, 'mystic', 'surabaya'),
    (NULL, 'sourcemusic', 'bandung');

--- insert ---
INSERT INTO `buku` (`id`, `ISBN`, `judul`, `harga`, `stock`, `penulis`, `penerbit`) VALUES 
    (NULL, '6', 'i was yours', '150000', '25', '6', '8'), 
    (NULL, '28', 'unforgettable memories', '140000', '50', '6', '8'), 
    (NULL, '24', 'memorable days', '98000', '50', '6', '8'), 
    (NULL, '3', 'together we love', '100000', '30', '6', '8');

--- join ---
SELECT *
FROM buku
INNER JOIN penerbit
ON buku.id = penerbit.id;

--- left ---
SELECT *
FROM buku
LEFT JOIN penerbit
ON buku.id = penerbit.id;

--- right ---
SELECT *
FROM buku
RIGHT JOIN penerbit
ON buku.id = penerbit.id;

--- max ---
SELECT MAX(harga)
FROM buku
WHERE stock < 10;

--- min ---
SELECT MIN(harga)
FROM buku;

--- count ---
SELECT COUNT(harga)
FROM buku
WHERE harga < 10000;