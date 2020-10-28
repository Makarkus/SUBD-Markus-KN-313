SELECT *  INTO [Product1]
FROM [Product]
WHERE Price>=105
SELECT *  INTO [Product2]
FROM [Product]
WHERE Price<=105



SELECT * FROM Product1
  UNION
  SELECT * FROM Product2



  SELECT * FROM Product1
WHERE Code_product IN (SELECT Code_product FROM Product2);SELECT * FROM Product2
WHERE Code_product NOT IN (SELECT Code_product FROM Product1);SELECT * FROM Product1, Product2;