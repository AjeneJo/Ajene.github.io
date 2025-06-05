 SELECT Item, SUM(Total) AS Revenue
 FROM [dbo].['Office supply$']
 GROUP BY Item;

 SELECT Rep, SUM(Units) AS TotalUnits
 FROM [dbo].['Office supply$']
 GROUP BY Rep;

 SELECT Item, [Unit Cost]
 FROM [dbo].['Office supply$']
 ORDER BY [Unit Cost] DESC
 OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Region = 'East';

 SELECT Region, AVG(Total) AS AvgSales
 FROM [dbo].['Office supply$']
 GROUP BY Region;

 SELECT MIN(OrderDate) AS FirstOrder, MAX(OrderDate) AS LastOrder
 FROM [dbo].['Office supply$']

 SELECT MONTH(OrderDate) AS Month, SUM(Total) AS MonthlyRevenue
 FROM [dbo].['Office supply$']
 GROUP BY MONTH(OrderDate);

 SELECT Item, [Unit Cost]
 FROM [dbo].['Office supply$']
 ORDER BY [Unit Cost] DESC
 OFFSET 0 ROWS FETCH NEXT 1 ROW ONLY;

 SELECT Region, SUM(Total) AS TotalSales
 FROM [dbo].['Office supply$']
 GROUP BY Region;

 SELECT Item, AVG([Unit Cost]) AS AvgUnitCost
 FROM [dbo].['Office supply$']
 GROUP BY Item;

 SELECT *
 FROM [dbo].['Office supply$']
 ORDER BY Total DESC
 OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;

 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Region = 'Central';

 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Units > 50;

 SELECT *
 FROM [dbo].['Office supply$']
 WHERE Rep = 'Jones';

 SELECT FORMAT(OrderDate, 'yyyy-MM') AS OrderMonth, SUM(Total) AS MonthlySales
 FROM [dbo].['Office supply$']
 GROUP BY FORMAT(OrderDate, 'yyyy-MM')
 ORDER BY OrderMonth;

 SELECT Item, SUM(Units) AS TotalUnits
 FROM [dbo].['Office supply$']
 GROUP BY Item;

 SELECT Item, AVG([Unit Cost]) AS AvgCost
 FROM [dbo].['Office supply$']
 GROUP BY Item
 HAVING AVG([Unit Cost]) > 200;


















