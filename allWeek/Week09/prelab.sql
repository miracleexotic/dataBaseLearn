CALL `tablebank`.`getAllCustomer`();

CALL `tablebank`.`GetTotalAccount`();

CALL `tablebank`.`GetBranchAsset`('SUT', @b_asset);
SELECT @b_asset;

CALL `tablebank`.`GetAccountLevel`(3, @a_level);
SELECT @a_level;

CALL `tablebank`.`InsertBranch`('SUT', 'Korat', 30000000);

SELECT account_number, balance, AccountLevel(balance) FROM account
ORDER BY account_number;

CALL `tablebank`.`LoopDemo`();


