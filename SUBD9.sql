/*1*/
SELECT  COUNT(DISTINCT p.Code_product) as NumberOfProducts,  g.Name_gastronom as Gastronom
FROM Product p INNER JOIN Reciept ON p.Code_product=Reciept.Code_product
INNER JOIN Gastronom g ON g.Code_gastronom=Reciept.Code_gastronom
GROUP BY g.Name_gastronom


/*2.1*/
SELECT YEAR(p.DateOfExpiration) AS year, MONTH(p.DateOfExpiration) AS month,
COUNT(p.Name_product) AS Product
FROM  Product p 
GROUP BY YEAR(p.DateOfExpiration) , MONTH(p.DateOfExpiration) WITH ROLLUP;


/*2.2*/
SELECT YEAR(p.DateOfManufacture) AS year, MONTH(p.DateOfManufacture) AS month,
COUNT(p.Name_product) AS Product
FROM Product p  
GROUP BY YEAR(p.DateOfManufacture) , MONTH(p.DateOfManufacture) WITH ROLLUP;


/*3*/
SELECT c.Client_name, AVG(LEN(c.Client_name)) as Name_length
FROM Client c 
GROUP BY c.Client_name


/*4*/
SELECT p.Name_product,COUNT(DISTINCT r.Code_reciept)*2 as Rating
FROM Product p INNER JOIN Reciept r ON p.Code_product=r.Code_product
WHERE MONTH(r.DateOfIssue)=(MONTH(GETDATE())-1)
GROUP BY p.Name_product



