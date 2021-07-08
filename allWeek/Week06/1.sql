CREATE TABLE IF NOT EXISTS Seller (
	sid INT PRIMARY KEY,
    sname VARCHAR(45),
    tel varchar(45)
);

CREATE TABLE IF NOT EXISTS Store (
	store_id INT PRIMARY KEY,
    store_name VARCHAR(45),
    category VARCHAR(45),
    sid INT,
    FOREIGN KEY (sid) REFERENCES Seller(sid)
);

CREATE TABLE IF NOT EXISTS Slot (
	slot_id INT PRIMARY KEY,
    price FLOAT,
    zone VARCHAR(45)
);

CREATE TABLE IF NOT EXISTS Rental (
	rid INT PRIMARY KEY,
    rent_datetime DATETIME,
    return_datetime DATETIME,
    sid INT,
    slot_id INT,
    FOREIGN KEY (sid) REFERENCES Seller(sid),
    FOREIGN KEY (slot_id) REFERENCES Slot(slot_id)
);


