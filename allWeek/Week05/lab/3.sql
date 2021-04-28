SELECT * FROM lab_week6.account
WHERE AVAIL_BALANCE > (SELECT avg(AVAIL_BALANCE) FROM lab_week6.account)
ORDER BY lab_week6.account.OPEN_DATE;

SELECT avg(AVAIL_BALANCE) FROM lab_week6.account