# 🚗 2023 Cars Dataset Analysis

This project analyzes vehicle data from the 2023 Cars Dataset, with the goal of uncovering insights into performance, efficiency, pricing, and consumer preferences across different manufacturers and body types. The analysis highlights trade-offs between horsepower and fuel economy, identifies balanced brands, and explores how car attributes affect market positioning.

---

## 📦 Dataset

**Source**: [2023 Cars Dataset on Kaggle](https://www.kaggle.com/datasets/anoopjohny/2023-cars-dataset)  
**Provider**: Anoop Johny 

**Filename**: `2023_Cars_Cleaned_BQ.csv`

**Location**: Stored in the `data/` folder

**Fields include**:
- Car Make
- Car Model
- Year
- Body Type
- Fuel Type
- Engine Line (L)
- Horsepower
- Torque (Nm)
- Transmission Type
- Mileage (MPG)
- Price (USD)
- Customer Ratings
- Sales Figures

---

## 🔍 Business Task

The main objective of this analysis is to examine how car specifications and pricing affect consumer preferences and market positioning by:

- Comparing price, horsepower, and mileage across manufacturers and body types
- Identifying trade-offs between performance and efficiency
- Highlighting brands that balance affordability and quality for different consumer segments

---

## 📊 Tools & Technology

- **Google BigQuery** for cloud-based SQL analysis
- **Google Sheets & Looker Studio** for visualization and storytelling
- **Python (pandas, regex)** for data cleaning and preparation
- **PowerPoint / Google Slides** for stakeholder presentation
- **Git & GitHub** for version control and collaboration
  
---

## 📁 Project Structure

```plaintext
2023-Cars-Dataset-Analysis/
├── data/                   
│   └── 2023_Cars_Cleaned_BQ.csv
├── queries/                
│   ├── Step 1_Ask.sql
│   ├── Step 2_Prepare.sql
│   ├── Step 3_Process.sql
│   ├── Step 4_Analyze.sql
│   └── Step 6_Act.sql
├── visuals/                
│   ├── avg_horsepower, avg_mileage_mpg by Car_Make.png
│   └── avg_mileage_mpg, avg_horsepower by Car_Make.png
├── presentation/           
│   └── 2023 Cars Dataset Analysis.pptx
└── README.md
```

---

## 🧮 SQL Query (Horsepower vs. Mileage)

```sql
-- queries/Fuel Efficiency vs Horsepower Across Car Types.sql
SELECT 
  Car_Make,
  AVG(Horsepower) AS avg_horsepower,
  AVG(Mileage_MPG) AS avg_mileage_mpg,
  COUNT(*) AS num_models
FROM 
  `plenary-ability-463920-b3.cars_2023.cars_data_processed`
WHERE 
  Horsepower IS NOT NULL
  AND Mileage_MPG IS NOT NULL
GROUP BY 
  Car_Make
ORDER BY 
  avg_mileage_mpg DESC;
```

---

## 📈 Analysis Output
Visuals created (saved in the visuals/ folder) include:
- 🎖️ Bar chart: Oscars across the years
- 💰 Scatter plot: IMDb ratings vs. box office earnings
- 📅 Timeline: evolution of Pixar films rating over time

These images helped identify strong correlations between creative direction, target audience, and performance.

---

## 🧾 Presentation
The final presentation includes:
- Purpose and business problem
- Data preparation and modeling in BigQuery
- Visualizations and trend insights
- Practical recommendations

View it in the slides/ folder.

---

## ✅ Next Steps
- Include a breakdown of sentiment based on genre or audience reception
- Track creative team changes over time using network analysis
- Create a public dashboard in Looker Studio

---

## 🙌 Acknowledgments
- Dataset courtesy of [Khaled Benali on Kaggle](https://www.kaggle.com/datasets/khaledxbenali/data-on-all-pixar-films-1995-2024)
- Tools powered by Google Cloud, BigQuery, SQL, and open source communities.
