/*1*/
SELECT Name_product as 'Name of product'
FROM Product
WHERE Price = 20;


/*2*/
SELECT Product.Code_product, Product.Name_product, Product.Price,
Reciept.DateOfIssue
FROM Product LEFT JOIN Reciept ON
Product.Code_product = Reciept.Code_reciept;



/*3*/
SELECT Delivery.Code_delivery, Product.Name_product, Delivery.DateOfDelivery
FROM Delivery INNER JOIN Product ON Product.Code_product = Delivery.Code_delivery
WHERE Product.Price < 100;

/*4*/
SELECT Reciept.Code_reciept, Product.Name_product, Reciept.DateOfIssue
FROM Reciept INNER JOIN Product 
ON Reciept.Code_product = Product.Code_product
AND Product.Code_product = Reciept.Code_product
WHERE Product.Name_product IN ('Pivo', 'Kurka');



/*5*/
SELECT Product.Name_product, Product.Price, Product.DateOfExpiration, Reciept.DateOfIssue
FROM Product INNER JOIN Reciept
ON Reciept.Code_reciept = Product.Code_product
WHERE Product.Code_product IN (SELECT Reciept.Code_reciept FROM Reciept
WHERE Reciept.DateOfIssue = '2020-11-04')
ORDER BY Product.Name_product;


/*6*/
SELECT Product.Code_product, Product.Name_product FROM Product
WHERE NOT EXISTS
(SELECT * FROM Reciept 
WHERE Reciept.Code_product = Product.Code_product);

/*7*/
SELECT Client.Client_name, Client.Client_surname, Client.[E-mail_client] as pass
FROM Client
WHERE LEN([E-mail_client])<10 or [E-mail_client] like '@';