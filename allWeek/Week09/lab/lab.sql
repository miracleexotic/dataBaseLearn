CALL `tablebank`.`getAccountCustomer`();

CALL `tablebank`.`getTotalAsset`();

CALL `tablebank`.`getAssetAvgBalance`('Mall', @b_asset, @avg_a_balance);
SELECT @b_asset, @avg_a_balance;

SET @a_number = 3;
CALL `tablebank`.`checkAccountStatus`(@a_number, @a_status);
SELECT @a_number, @a_status;

CALL `tablebank`.`InsertAccountCustomer`(3,'SUT',300,'Nun','University','Korat');

/* 7.2 */
INSERT INTO account VALUES(GenAccountNumber(4), 'SUT', 3000);

SELECT
	BranchNameToID(branch_name),
    branch_name,
    branch_city,
    asset
FROM
	branch
ORDER BY BranchNameToID(branch_name);







