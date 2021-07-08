UPDATE Seller SET tel = '0866666666' WHERE sid = 4;
    
SELECT rid, rent_datetime, return_datetime
FROM rental
WHERE rent_datetime LIKE '2021%';

SELECT sname, tel
FROM seller
WHERE sname LIKE '%da';

SELECT SUM(price), zone
FROM slot
GROUP BY zone
ORDER BY SUM(price) DESC;

SELECT seller.sname, store.store_name, store.category
FROM seller INNER JOIN store
ON seller.sid = store.sid
WHERE store.category = 'Food';

SELECT sid, sname
FROM seller
WHERE sid in (SELECT sid
FROM rental
WHERE slot_id = 1 OR slot_id = 2);

DELETE FROM store
WHERE category = 'Bookstore';



