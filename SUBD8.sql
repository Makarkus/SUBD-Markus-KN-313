/*1*/
SELECT Code_client, Client_name,Client_surname,City
FROM Client
WHERE City='Stryy' or City='Lviv'
ORDER BY Client_name asc;

/*2*/
SELECT TOP 5 Code_reciept,DateOfIssue 
FROM Reciept
Order BY DateOfIssue desc;

/*3*/
SELECT Reciept.Code_reciept, Product.Name_product, Gastronom.Name_gastronom
	FROM Reciept inner join Product
	on Reciept.Code_product=Product.Code_product
    inner join Gastronom
    on Reciept.Code_gastronom=Gastronom.Code_gastronom
	/*(3,1)ORDER BY Product.Name_product*/


