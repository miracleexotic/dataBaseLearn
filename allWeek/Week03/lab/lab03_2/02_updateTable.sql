UPDATE lab03.product
SET
	pname = 'iPhone11'
WHERE
	pid = 1 AND pname = 'iPhone';
    
UPDATE lab03.manufacturer
SET
	City = 'Rayong'
WHERE
	mname = 'Meji' AND mid = 2;
    
UPDATE lab03.product
SET
	instock = 0
WHERE
	pid = 2;
    
UPDATE lab03.product
SET
	Type = 'Drink',
    instock = 300
WHERE
	pid = 3 AND pname = 'Milk';
    

    
    