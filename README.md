# 📊 Student Performance Analysis Using Python

This project analyzes student performance data to explore how various factors (like gender, parental education, and test preparation) affect academic success. We apply data visualization, feature engineering, and classification models (Logistic Regression & Random Forest) to predict whether a student passes or fails based on their scores.

---
## 📁 Dataset
**Source**: `StudentsPerformance.csv`  
The dataset contains **1000 records** and **8 columns**, including gender, race/ethnicity, parental education, lunch, test prep course, and scores in math, reading, and writing.

---
## 🧰 Technologies Used
- Python
- Pandas
- Numpy
- Matplotlib
- Seaborn
- Scikit-learn

---
## 🔄 Project Workflow
### 1. **Importing Libraries**
Imported all necessary libraries for data manipulation, visualization, and machine learning, including Pandas, Matplotlib, Seaborn, and Scikit-learn.

---
### 2. **Data Exploration**
- Loaded and inspected the dataset using functions like `head()`, `info()`, and `describe()`.
- Verified that the dataset contains no missing values.
- Renamed the `race/ethnicity` column to `race` for simplicity.
- Identified the categorical and numerical features for analysis.

---
### 3. **Data Visualization**
- **Pie Chart**: Gender distribution
- **Bar Chart**: Parental level of education
- **Average Scores by Test Preparation**: Math, Reading, Writing
- **Boxplots**: Visualizing score distribution by category (gender, lunch, prep course, etc.)

---
### 4. **Feature Engineering**
- Created a new feature called **average score** by averaging the math, reading, and writing scores.
- Generated a binary target variable (**pass/fail**) based on whether a student's average score met a defined threshold (e.g., 60%).

---
### 5. **Label Encoding**
- Converted categorical variables (e.g., gender, parental education, lunch type) into numerical values using label encoding to prepare for machine learning models.

---
### 6. **Train/Test Split**
- Split the data into training and testing sets to evaluate model performance.
- Ensured that the target variable was separated from the feature variables before training.

---
### 7. **Modeling**
- Applied two classification algorithms:
  - **Logistic Regression**: A linear model used to classify students as pass/fail.
  - **Random Forest Classifier**: An ensemble model using multiple decision trees for improved accuracy.
- Trained both models on the training data and evaluated them using the test data.

---
### 8. **Evaluation**

| Model                | Accuracy | F1 Score | Precision |
|---------------------|----------|----------|-----------|
| Logistic Regression | 0.70     | 0.81     | 0.72      |
| Random Forest       | 0.715    | 0.82     | 0.74      |

- Random Forest slightly outperformed Logistic Regression.
- Confusion matrices provided deeper insight into prediction quality.

---
## ✅ Conclusion
- Test preparation significantly improves student performance.
- Parental education level and lunch type influence student scores.
- Classification models can effectively predict student success.
- Insights can inform targeted educational interventions.
---
# 🗂️ SQL Analysis Project – Music Store Database
This project involves querying a relational music store database to extract business insights related to sales, customer behavior, and employee relationships. The goal is to use SQL to answer real-world business questions.

---

## 🧰 Tools & Technologies
- SQL Server
- SSMS (SQL Server Management Studio)
- 
# 🗂️ Tableau Project – New York City Airbnb open Data
https://public.tableau.com/app/profile/nermin.ashraf/viz/airbnbproject_17443845375040/Dashboard1 

# 🗂️ Excel Project – Online Retail DataSet
https://docs.google.com/spreadsheets/d/126q7HH_6LQ5eCIWQe4ZBjpjO36YqMA5K/edit?usp=drive_link&ouid=103328154854864824771&rtpof=true&sd=true 

