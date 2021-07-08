CREATE TABLE IF NOT EXISTS Product(
	pid INT PRIMARY KEY,
    pname VARCHAR(45),
    price INT,
    Type VARCHAR(45),
    instock INT,
    mid INT
);

CREATE TABLE IF NOT EXISTS Manufacturer(
	mname VARCHAR(45),
    City VARCHAR(45),
    mid INT PRIMARY KEY
); 

ALTER TABLE product
ADD FOREIGN KEY (mid) REFERENCES manufacturer (mid) ON DELETE CASCADE;

