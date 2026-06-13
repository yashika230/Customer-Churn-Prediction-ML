# Customer-Churn-Prediction-ML

## Overview
Built an end-to-end machine learning solution to predict customer churn using the IBM Telco Customer Churn dataset. The project identifies key churn drivers and provides actionable recommendations to improve customer retention.

---

## Dataset
- Source: IBM Telco Customer Churn Dataset
- Records: 7,043 customers
- Features: 20 predictor variables + 1 target variable

---

## Project Workflow
- Data Cleaning and Preprocessing
- Exploratory Data Analysis (EDA)
- Feature Engineering
- Model Building and Evaluation
- Feature Importance Analysis
- Business Insights and Recommendations

---

## Models Used
- Logistic Regression
- Decision Tree Classifier
- Random Forest Classifier

### Model Performance

| Model | Accuracy | ROC-AUC |
|---------|----------|----------|
| Logistic Regression | 80.45% | **84.41%** |
| Decision Tree | 73.06% | 67.80% |
| Random Forest | 79.67% | 83.17% |

**Best Model:** Logistic Regression

---

## Key Insights
- Customers on month-to-month contracts were more likely to churn.
- Customers with lower tenure exhibited higher churn rates.
- Electronic check users showed elevated churn risk.
- Lack of security and technical support services increased churn likelihood.

---

## Technologies Used
- Python
- Pandas
- NumPy
- Scikit-learn
- Matplotlib
- Seaborn
- SQL
- Jupyter Notebook

---

## Repository Structure

Customer-Churn-Prediction/
├── data/
├── notebooks/
├── sql/
├── reports/
├── README.md
└── requirements.txt

---

## Results
The project successfully identified factors contributing to customer churn and provided data-driven recommendations to improve customer retention strategies.
