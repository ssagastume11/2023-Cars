![GitHub Repo Size](https://img.shields.io/github/repo-size/ssagastume11/2023-Cars)
![Last Commit](https://img.shields.io/github/last-commit/ssagastume11/2023-Cars)

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
- Engine Size (L)
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
├── sql/                
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
-- sql/Fuel Efficiency vs Horsepower Across Car Types.sql
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
The final visualizations, saved in the `visuals/` folder, include:
- 🎖️ Horsepower vs. Fuel Efficiency: highlighting trade-offs across brands
- 💰 Market Positioning by Car Make: showing how affordability, efficiency, and performance vary across manufacturers

---

## 🧾 Presentation
The final presentation (in the `presentation/` folder) summarizes:
- Project purpose and scope
- Data preparation steps
- Key findings with visuals
- Actionable recommendations

---

## ✅ Next Steps
- Expand analysis to include safety ratings and customer satisfaction
- Compare EVs vs. traditional fuel vehicles for performance and efficiency
- Build a dashboard version using Looker Studio for interactive exploration

---

## 🙌 Acknowledgments
- Dataset courtesy of [Anoop Johny on Kaggle](https://www.kaggle.com/datasets/anoopjohny/2023-cars-dataset)
- Tools powered by Google Cloud, BigQuery, SQL, Python and open source communities.
