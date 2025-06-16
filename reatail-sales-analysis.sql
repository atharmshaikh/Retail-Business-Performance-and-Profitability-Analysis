SELECT 
  strftime('%Y-%m', OrderDate) AS Month,
  Category,
  ROUND(SUM(SellingPrice), 2) AS MonthlySales
FROM retail_data
GROUP BY Month, Category
ORDER BY Month;

SELECT 
  strftime('%Y-%m', OrderDate) AS Month,
  Category,
  ROUND(SUM(SellingPrice), 2) AS MonthlySales
FROM retail_data
GROUP BY Month, Category
ORDER BY Month;

SELECT 
  ProductId,
  SubCategory,
  SUM(Quantity) AS TotalSold,
  ROUND(SUM(Profit), 2) AS TotalProfit
FROM retail_data
GROUP BY ProductId, SubCategory
HAVING TotalSold > 10 AND TotalProfit < 100
ORDER BY TotalProfit ASC;

SELECT 
  Region,
  ROUND(SUM(Profit), 2) AS TotalProfit,
  ROUND(AVG(Profit), 2) AS AvgProfitPerOrder
FROM retail_data
GROUP BY Region
ORDER BY TotalProfit DESC;
