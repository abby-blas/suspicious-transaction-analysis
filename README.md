# Fraud Transaction Pattern Analysis

This project analyzes credit card transaction data to identify patterns associated with fraudulent activity. Using SQL and Python, the analysis explores how transaction characteristics such as  transaction amount relate to fraud risk.

## Dataset
The dataset contains anonymized credit card transactions, including:
- Transaction time
- Transaction amount
- PCA-transformed features (`V1`–`V28`)
- A binary fraud label (`Class`, where 1 indicates fraud)

Due to data size limitations, this repository includes a representative sample of the full dataset.

## Tools & Technologies
- Python (pandas, sqlite3, matplotlib)
- SQL (SQLite)
- Jupyter Notebook

## Analysis Overview
The analysis focused on:
- Comparing transaction amounts between fraudulent and non-fraudulent transactions
- Measuring fraud rates across transaction amount ranges
- Identifying transaction size thresholds associated with elevated fraud risk

SQL was used to aggregate and segment transaction data, while Python was used for querying, analysis, and visualization.

## Key Findings
- Fraudulent transactions have a higher average transaction amount than legitimate transactions.
- Fraud risk increases with transaction size.
- Transactions above $500 show the highest fraud rate among analyzed groups.
- Transaction amount alone is not sufficient to detect fraud but serves as a meaningful risk signal when combined with other features.

## Data Note
The full dataset exceeds GitHub file size limits and is excluded from version control.  
This repository includes a representative sample for reproducibility.


## Conclusion
This project demonstrates how SQL-driven analysis and exploratory data analysis can be applied to real-world fraud detection problems. The findings highlight how simple aggregations and well-defined questions can uncover meaningful risk patterns in large transactional datasets.
