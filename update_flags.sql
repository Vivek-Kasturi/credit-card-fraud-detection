-- Flag high-risk Type 3 transactions
UPDATE creditcarddetails
SET fraud_label = 'under_review'
WHERE risk_score > 700 AND transaction_type = 'type 3';

-- Update class for confirmed frauds
UPDATE creditcarddetails
SET transaction_class = '1'
WHERE fraud_label = 'fraud' AND risk_score > 650;