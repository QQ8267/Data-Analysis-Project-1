# Data-Analysis-Project-1
This project analyzes a synthetic dataset of 1,500 patients diagnosed with Obsessive-Compulsive Disorder (OCD). Using SQL and Google Looker Studio, I explored demographic and clinical patterns to answer key questions about patient distribution, diagnosis trends, and obsession/compulsion characteristics.

# Dataset (synthetic)
Name: OCD Patient Dataset: Demographics & Clinical Data
Size: 1,500 patients
Columns:
 - Patient ID
 - Age
 - Gender
 - Ethnicity
 - Marital Status
 - Education Level
 - OCD Diagnosis Date
 - Obsession Type
 - Compulsion Type
 - Y-BOCS Score (Obsessions)
 - Y-BOCS Score (Compulsions)

# Analysis Questions & SQL Queries

1. Gender distribution & Average Obsession Score
2. Patient counts by Ethnicity & Average Obsession Score
3. Monthly OCD Diagnoses trend (MoM)
4. Most common Obsession Type & Average Obsession Score
5. Most common Compulsion Type & Average Obsession Score

# Key Insights

Gender Distribution:
* Female patients: 747 (49.8%), Avg. Obsession Score = 20.20
* Male patients: 753 (50.2%), Avg. Obsession Score = 19.90
➝ The dataset is nearly evenly split between male and female patients, with very similar average obsession severity.

Diagnosis Trends:
* OCD diagnoses fluctuate over time, with an overall monthly average of 13.76 new cases.

Most Common Obsession Types:
* Harm-related (333 patients, Avg. Score = 20.65)
* Contamination (306 patients, Avg. Score = 19.67)
* Religious (303 patients, Avg. Score = 19.23)
➝ Harm-related obsessions are the most frequent and slightly more severe on average.

Most Common Compulsion Types:
* Washing (321 patients, Avg. Score = 19.40)
* Counting (316 patients, Avg. Score = 20.41)
* Checking (292 patients, Avg. Score = 19.99)
➝ Washing compulsions are the most frequent, though counting compulsions have the highest severity score.

# How to Reproduce
Dataset: ocd_patient_dataset.csv
SQL queries: ocd_patient.sql
SQL results: results.pdf
Looker PDF: OCD_Patient_reports.pdf
