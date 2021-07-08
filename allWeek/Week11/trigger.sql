DELIMITER $$
CREATE TRIGGER before_customer_insert
	BEFORE INSERT
	ON customer FOR EACH ROW
BEGIN
	IF new.customer_city IS NULL THEN
		SET new.customer_city = 'Korat';
	END IF;
END $$
DELIMITER ;

INSERT INTO customer VALUES ('Nun', 'Univ', NULL);

DELIMITER $$
CREATE TRIGGER before_branch_update
	BEFORE UPDATE
	ON branch FOR EACH ROW
BEGIN
	IF new.asset IS NOT NULL THEN
		SET new.asset = old.asset+new.asset;
	ELSE
		SET new.asset = old.asset;
	END IF;
END $$
DELIMITER ;

UPDATE branch SET asset = 1500 WHERE branch_name = 'SUT';

DELIMITER $$
CREATE TRIGGER before_account_delete
	BEFORE DELETE
	ON account FOR EACH ROW
BEGIN
	DELETE FROM depositor WHERE account_number = old.account_number;
END $$
DELIMITER ;

DELETE FROM account WHERE account_number = 1;


