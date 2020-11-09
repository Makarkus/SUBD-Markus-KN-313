/*1*/
CREATE TRIGGER Delete_
ON Product2
AFTER DELETE
AS
INSERT INTO Product1
SELECT *
FROM DELETED;

DELETE FROM Product2
WHERE Code_product = 4;


/*2*/
CREATE TRIGGER Update_
ON Product2
AFTER UPDATE
AS
DELETE FROM Product1 WHERE Product1.Price=(SELECT Price FROM DELETED);


UPDATE Product2 SET Price=15 WHERE Code_product=2;


/*3*/
CREATE TRIGGER Insert_
ON Product1
AFTER INSERT
AS
INSERT INTO Product2(Code_product,Name_product,DateOfManufacture,DateOfExpiration,Price)
SELECT Code_product,Name_product,DateOfManufacture,DateOfExpiration,Price
FROM inserted;


INSERT INTO Product1 VALUES (50,N'Wine','2020-11-10','2020-12-12',300);


