INSERT INTO Client VALUES (6, 'Rostyslav','Sereda','Mykola','Lviv','Kozaka',45,'sereda@gmail.com');
INSERT INTO Client VALUES (7, 'Oksana','Bereza','Vasyl','Bolekhiv','Lvivska',14,'bereza@gmail.com'),
(8, 'John','Smith','Bill','LA','Franklin',104,'smith@gmail.com'),
(9, 'Ann','Demkiv','Myhailo','Kherson','Kovalia',55,'demkiv@gmail.com');


BULK 
INSERT Client 
FROM 'C:\Users\User_PC\Desktop\Системи управління базами даних\сlient.csv'
WITH 
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);
BULK 
INSERT Seller
FROM 'C:\Users\User_PC\Desktop\Системи управління базами даних\seller.csv'
WITH 
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);


UPDATE Client SET House_number = 29
WHERE Client_surname='Markus';
UPDATE Product SET Price = Price + 5; 



DELETE FROM Client
WHERE ([E-mail_client]='smith@gmail.com');

