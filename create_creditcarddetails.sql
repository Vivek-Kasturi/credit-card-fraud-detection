-- Drop and create the fraud transactions table
DROP TABLE IF EXISTS creditcarddetails;

CREATE TABLE creditcarddetails (
    time TIMESTAMP,
    transaction_type VARCHAR(50),
    region VARCHAR(50),
    amount DECIMAL(10,2),
    transaction_class VARCHAR(50),
    risk_score FLOAT,
    fraud_label VARCHAR(20), -- already set to correct type
    transaction_speed FLOAT,
    anamoly_score FLOAT,

    -- PCA components
    v1 FLOAT, v2 FLOAT, v3 FLOAT, v4 FLOAT, v5 FLOAT, v6 FLOAT, v7 FLOAT,
    v8 FLOAT, v9 FLOAT, v10 FLOAT, v11 FLOAT, v12 FLOAT, v13 FLOAT, v14 FLOAT,
    v15 FLOAT, v16 FLOAT, v17 FLOAT, v18 FLOAT, v19 FLOAT, v20 FLOAT, v21 FLOAT,
    v22 FLOAT, v23 FLOAT, v24 FLOAT, v25 FLOAT, v26 FLOAT, v27 FLOAT, v28 FLOAT,

    -- Time-related features
    hour_of_day FLOAT,
    day_segment VARCHAR(20),
    is_large_amount BOOLEAN,
    region_classification VARCHAR(50),
    transaction_hour INT,
    transaction_day INT,
    transaction_month INT,
    transaction_year INT,

    -- Outlier flags
    amount_outlier BOOLEAN,
    risk_score_outlier BOOLEAN,
    transaction_speed_outlier BOOLEAN,
    anamoly_score_outlier BOOLEAN
);