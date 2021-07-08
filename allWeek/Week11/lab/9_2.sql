DELIMITER $$
CREATE TRIGGER before_members_update_salary
	BEFORE UPDATE
	ON members FOR EACH ROW
BEGIN
	IF new.salary > old.salary THEN
		SET new.promotion = 'Y';
	ELSE
		SET new.promotion = 'N';
	END IF;
END $$
DELIMITER ;

UPDATE members SET salary = 20000 WHERE id = 1;

CREATE TABLE IF NOT EXISTS membersArchives (
	id	      INT(5)	   NOT NULL AUTO_INCREMENT,
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

DELIMITER $$
CREATE TRIGGER before_members_delete
	BEFORE DELETE
	ON members FOR EACH ROW
BEGIN
    
    INSERT INTO membersarchives 
		SELECT * FROM members WHERE id = old.id;
        
END $$
DELIMITER ;

DELETE FROM members WHERE id = 3;
DELETE FROM members WHERE id = 1;


