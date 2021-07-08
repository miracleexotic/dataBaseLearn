CREATE OR REPLACE VIEW loan_view AS
SELECT branch.branch_name, SUM(amount)
FROM branch INNER JOIN loan 
ON branch.branch_name = loan.branch_name
WHERE amount > 3000;

CREATE OR REPLACE VIEW join_view AS
SELECT account.account_number, account.branch_name, account.balance, customer.customer_name
FROM account INNER JOIN depositor INNER JOIN customer 
ON account.account_number = depositor.account_number AND depositor.customer_name = customer.customer_name
WHERE account.branch_name = 'SUT';

CREATE OR REPLACE VIEW account_view AS
SELECT *
FROM account 
WHERE balance < 200
WITH CHECK OPTION;

INSERT INTO account_view VALUES (4, 'SUT', 500);



