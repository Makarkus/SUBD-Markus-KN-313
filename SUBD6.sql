CREATE VIEW Reciept2 AS SELECT DISTINCT Code_reciept, DateOfIssue
FROM Reciept


SELECT *
FROM Reciept2
WHERE DateOfIssue >= '2020-09-28' 


SELECT Reciept.Code_reciept, Reciept.DateOfIssue, Reciept.Code_product,
Product2.Name_product,Product2.Price
FROM Reciept, Product2
WHERE Product2.Code_product = Reciept.Code_reciept


SELECT Reciept2.Code_reciept, Reciept2.DateOfIssue,
Product2.Name_product,Product2.Price
FROM Reciept2, Product2
WHERE Product2.Code_product = Reciept2.Code_reciept AND
Product2.Price >100;