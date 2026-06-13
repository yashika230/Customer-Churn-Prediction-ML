import pandas as pd
import numpy as np

# Load raw data
df = pd.read_csv('customer_churn_raw.csv')

# 1. Handle TotalCharges (convert to numeric, handle spaces)
df['TotalCharges'] = pd.to_numeric(df['TotalCharges'], errors='coerce')

# 2. Check for missing values
# In this dataset, missing TotalCharges usually happen for customers with tenure=0
df = df.dropna(subset=['TotalCharges'])

# 3. Standardize 'No internet service' and 'No phone service' to 'No' for consistency in some columns
# (Though some prefer keeping them separate, for a 'cleaned' version, we'll keep it simple or just leave as is but ensure no weird strings)

# 4. Convert SeniorCitizen to 'Yes'/'No' for consistency with other columns if desired, 
# but let's keep it as is or match the 'Yes'/'No' format of others.
df['SeniorCitizen'] = df['SeniorCitizen'].map({1: 'Yes', 0: 'No'})

# Save cleaned data
df.to_csv('customer_churn_cleaned.csv', index=False)
print("Cleaned dataset saved as customer_churn_cleaned.csv")
print(f"Original rows: {len(pd.read_csv('customer_churn_raw.csv'))}")
print(f"Cleaned rows: {len(df)}")
