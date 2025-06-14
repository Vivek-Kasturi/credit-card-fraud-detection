# 💳 Credit Card Fraud Detection Dashboard

This project demonstrates an end-to-end solution for detecting and analyzing fraudulent transactions using real-world data. It combines Python-based feature engineering with interactive Tableau dashboards for business-level insights.

---

## 📦 Project Overview

| Area                 | Tools Used                         |
|----------------------|------------------------------------|
| Data Source          | [Kaggle: Credit Card Fraud Dataset](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud) |
| Data Processing      | Python, Pandas, NumPy, Colab       |
| Feature Engineering  | Custom fraud risk score, simulated regions/types, anomaly scores |
| Visualization        | Tableau Desktop                    |
| Dashboard Features   | Filters, KPIs, temporal trends, regional fraud patterns |

---

## 📁 Project Structure

| File/Folder                      | Description |
|----------------------------------|-------------|
| `Credit Card Fraud.ipynb.zip`   | Python notebook (zipped) containing full data cleaning, simulation, and feature engineering |
| `credit_card_fraud.py.zip`      | Python script version of the notebook |
| `Credit card fraud analysis.twb.zip` | Tableau dashboard (zipped `.twb` file) |
| `README.md`                     | This project overview |
| `Sample raw data.numbers`       | Sample data (for visualization or presentation use) |
| `sample clean data.numbers`     | Cleaned/processed sample for Tableau test |
| `data/` (not included here)     | Download the full dataset from Kaggle manually |

---

## 🧪 Python Processing Highlights

The original dataset was enriched using the following techniques:
- Simulated fields: `Transaction_Type`, `Region`
- Engineered fields: `Hour_Of_Day`, `Day_Segment`, `Risk_Score`, `Transaction_Speed`, `Anomaly_Score`
- Outlier detection and treatment using IQR method
- Cleaned and exported dataset to Tableau-compatible format

---

## 📊 Tableau Dashboards

### ✅ **Dashboard 1: Regional Fraud Patterns**
Includes:
- Fraud rate by region
- Fraud rate by transaction type
- High-risk transactions
- Filters: `Hour_Of_Day`, `Region` (highlight), `Transaction_Type`

### ✅ **Dashboard 2: Temporal & Anomaly Analysis**
Includes:
- Fraud patterns by hour of day
- PCA-based anomaly score visualizations
- Filters: `Region`, `Hour_Of_Day`, `Transaction_Type`


---

## 📥 How to Use

1. Clone this repository
2. Download the full dataset from [Kaggle](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
3. Open the Python notebook or script and run it in Colab or Jupyter
4. Use the generated `cleaned_creditcard.csv` to build/modify dashboards in Tableau
5. Open the `.twb` file in Tableau Desktop for live demo

---

## 🙋‍♂️ Author

**Vivek Kasturi**  
Data Scientist & ML Engineer  
[LinkedIn](https://www.linkedin.com/in/vivekkasturi) | [GitHub](https://github.com/Vivek-Kasturi)

---

## 📌 Note

Due to GitHub file size limits, some large files have been zipped. Extract them before use. The full Kaggle dataset is not hosted in this repo — please download it directly from Kaggle.
