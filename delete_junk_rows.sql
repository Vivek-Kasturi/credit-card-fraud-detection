-- Delete very small legit transactions
DELETE FROM creditcarddetails
WHERE amount < 1.00 AND fraud_label = 'legit';

-- Delete rows with missing critical fields
DELETE FROM creditcarddetails
WHERE region IS NULL OR transaction_type IS NULL;

select * from creditcarddetails