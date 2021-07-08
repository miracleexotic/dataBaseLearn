CREATE TABLE members (
	id	      INT(5)	   NOT NULL,
    userid	  VARCHAR(50)  NOT NULL,
    password  VARCHAR(50)  NOT NULL,
    name	  VARCHAR(100) NULL,
    tel       VARCHAR(20)  NULL,
    age       INT          NULL,
    activated VARCHAR(1)   NULL,
    salary    INT          NULL,
    promotion VARCHAR(1)   NULL,
    PRIMARY KEY(id)
);

INSERT INTO members VALUES
	(1, 'Husky', '1234', 'Malee flower', '044-111222', 33, 'Y', 10000, null),
    (2, 'Bean', 'zxcvb', 'Green bean', '044-222333', 12, 'N', 20000, null),
    (3, 'Tana', '1234qaz', 'Tana Khon', '044-555888', 18, 'Y', 30000, null);
    
DELIMITER $$
CREATE TRIGGER before_members_insert_activated
	BEFORE INSERT
	ON members FOR EACH ROW
BEGIN
	IF new.age >= 18 THEN
		SET new.activated = 'Y';
	ELSE
		SET new.activated = 'N';
	END IF;
END $$
DELIMITER ;

ALTER TABLE members
MODIFY id INT(5) AUTO_INCREMENT;

INSERT INTO members VALUES(null, 'std1', '0987', 'May May', '044-214445', 25, null, 10000, null);
INSERT INTO members VALUES(null, 'std2', '5555', 'Jan May', '044-334445', 10, null, 15000, null);

