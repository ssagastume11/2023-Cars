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

The objective of this project is to analyze how **Pixar’s production decisions** and **creative teams** impact film performance by:

- Identifying production traits of Oscar-winning films
- Exploring how film ratings and creators relate to commercial and critical outcomes
- Understanding how Pixar’s strategy evolved over time

---

## 📊 Tools & Technology

- **Google BigQuery** for cloud-based SQL analysis
- **Google Sheets** for visualization and storytelling
- **Git & GitHub** for version control
- **PowerPoint / Google Slides** for presenting findings

---

## 📁 Project Structure

```plaintext
├── data/                
│   └── academy.csv
├── queries/            
│   └── Oscar-winning films by Runtime and Release Year.sql
├── charts/              
│   └── Bar chart comparing Oscar wins across years.png
├── presentation/        
│   └── Pixar Film Analysis Presentation.pptx
└── README.md
```

---

## 🧮 SQL Query (Oscar-Winning Films)

```sql
SELECT 
  f.film,
  f.release_date,
  a.award_type,
  a.status
FROM 
  `plenary-ability-463920-b3.pixar_films_data.pixar_films` f
JOIN 
  `plenary-ability-463920-b3.pixar_films_data.academy_awards_cleaned` a
ON 
  f.film = a.film
WHERE 
  a.status = 'Won'
ORDER BY 
  f.release_date;
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
