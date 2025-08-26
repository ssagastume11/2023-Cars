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