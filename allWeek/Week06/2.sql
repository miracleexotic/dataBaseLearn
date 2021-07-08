INSERT INTO Seller(sid, sname, tel) VALUES
	(1, 'Suda', '0811111111'),
    (2, 'Somchai', '0922222222'),
    (3, 'Areena', '0833333333'),
    (4, 'Nipa', '0944444444'),
    (5, 'Kanda', '0855555555');

INSERT INTO Store(store_id, store_name, category, sid) VALUES
	(1, 'manee Bookstore', 'Bookstore', 2),
    (2, 'Chaiyo shop', 'Mobileshop', 1),
    (3, 'Implmp', 'Food', 2),
    (4, 'Sweetparadise', 'Sweets', 3),
    (5, 'Nua', 'Food', 4),
    (6, 'Sirikanda', 'Sweets', 4),
    (7, 'MM shop', 'Mobileshop', 5);

INSERT INTO Slot(slot_id, price, zone) VALUES
	(1, 500, 'A'),
    (2, 500, 'A'),
    (3, 1000, 'B'),
    (4, 800, 'C'),
    (5, 1000, 'B'),
    (6, 800, 'C');
    
INSERT INTO Rental(rid, rent_datetime, return_datetime, sid, slot_id) VALUES
	(1, '2021-04-13 13:00:00', '2021-04-15 23:00:00', 1, 2),
    (2, '2021-04-01 08:00:00', '2021-04-30 13:00:00', 2, 6),
    (3, '2021-05-01 13:00:00', '2021-05-05 23:00:00', 3, 4),
    (4, '2021-12-25 08:00:00', '2021-12-31 13:00:00', 4, 1),
    (5, '2021-08-15 13:00:00', '2021-10-15 23:00:00', 5, 1),
    (6, '2020-11-10 08:00:00', '2020-11-11 13:00:00', 1, 6),
    (7, '2021-05-01 13:00:00', '2021-05-05 23:00:00', 3, 2),
    (8, '2021-12-25 08:00:00', '2021-12-31 13:00:00', 3, 3);




