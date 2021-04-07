DELETE FROM product
WHERE instock = 0;

DELETE FROM product
WHERE instock > 30;

DELETE FROM product
WHERE Type = 'Technology'
ORDER BY pname
LIMIT 2;

DELETE FROM manufacturer
WHERE City = 'Rayong';






