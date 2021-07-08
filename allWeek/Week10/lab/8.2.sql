SET @amount_transfer = 10;
UPDATE account 
SET balance = balance + @amount_transfer
WHERE account_number = 1;

select balance from account WHERE account_number = 8;

CALL `lab08-2`.`transfer_money`(10, 1, 3);

CALL `lab08-2`.`transfer_money`(10, 1, 8);

CALL `lab08-2`.`loan_money`(103,'SUT',20000,'Som',1);

CALL `lab08-2`.`loan_money`(104,'SUT',20000,'Som',5);
