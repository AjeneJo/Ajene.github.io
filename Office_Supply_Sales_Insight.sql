 What is the total revenue generated per item?
 
 SELECT Item, SUM(Total) AS Revenue
 FROM [dbo].['Office supply$']
 GROUP BY Item;
 
 Show the total number of units sold by each sales representative.
 
 SELECT Rep, SUM(Units) AS TotalUnits
 FROM [dbo].['Office supply$']
 GROUP BY Rep;

 Find the item with the highest unit cost.
  
 SELECT Item, [Unit Cost]
 FROM [dbo].['Office supply$']
 ORDER BY [Unit Cost] DESC
 OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

 Retrieve all sales made in the “East” region.
   
 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Region = 'East';

 Calculate the average total sales value per region.
  
 SELECT Region, AVG(Total) AS AvgSales
 FROM [dbo].['Office supply$']
 GROUP BY Region;

 Find the earliest and latest order dates in the dataset.
  
 SELECT MIN(OrderDate) AS FirstOrder, MAX(OrderDate) AS LastOrder
 FROM [dbo].['Office supply$']

 Show the total revenue generated each month.
  
 SELECT MONTH(OrderDate) AS Month, SUM(Total) AS MonthlyRevenue
 FROM [dbo].['Office supply$']
 GROUP BY MONTH(OrderDate);

 What item has the highest unit cost?
  
 SELECT Item, [Unit Cost]
 FROM [dbo].['Office supply$']
 ORDER BY [Unit Cost] DESC
 OFFSET 0 ROWS FETCH NEXT 1 ROW ONLY;

 What is the total sales (Total) for each region?
  
 SELECT Region, SUM(Total) AS TotalSales
 FROM [dbo].['Office supply$']
 GROUP BY Region;
 
 What is the average unit cost for each item?
 
 SELECT Item, AVG([Unit Cost]) AS AvgUnitCost
 FROM [dbo].['Office supply$']
 GROUP BY Item;

 What are the top 5 orders with the highest total value?
  
 SELECT *
 FROM [dbo].['Office supply$']
 ORDER BY Total DESC
 OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

 List all orders from the Central region.
  
 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Region = 'Central';

 Find all orders where the units ordered are more than 50.
  
 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Units > 50;

 List all orders handled by the rep named 'Jones'.

 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Rep = 'Jones';

 Show total sales for each month.
  
 SELECT FORMAT(OrderDate, 'yyyy-MM') AS OrderMonth, SUM(Total) AS MonthlySales
 FROM [dbo].['Office supply$']
 GROUP BY FORMAT(OrderDate, 'yyyy-MM')
 ORDER BY OrderMonth;

 How many total units have been sold for each item?
  
 SELECT Item, SUM(Units) AS TotalUnits
 FROM [dbo].['Office supply$']
 GROUP BY Item;

 Which items have an average unit cost greater than 200?
  
 SELECT Item, AVG([Unit Cost]) AS AvgCost
 FROM [dbo].['Office supply$']
 GROUP BY Item
 HAVING AVG([Unit Cost]) > 200;


















