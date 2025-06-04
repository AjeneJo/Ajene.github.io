 SELECT *
 FROM [dbo].['Workplace Safety Data$']
 
 SELECT Plant, Count(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Plant

 SELECT Department, SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Department;

 SELECT [Incident Type], SUM([Days Lost]) AS Total_Days
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Incident Type]
 ORDER BY Total_Days DESC

 SELECT Shift, [Incident Type], COUNT(*) AS Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Shift, [Incident Type];
 
 SELECT [Injury Location], AVG([Incident Cost]) AS Avg_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Injury Location];

 SELECT [Age Group], COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Age Group]
 ORDER BY Incident_Count DESC

 SELECT Plant, COUNT(*) AS Lost_Time_Incidents
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Report Type] = 'Lost Time'
 GROUP BY Plant;

 SELECT Department, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Crush & Pinch'
 GROUP BY Department
 ORDER BY Incident_Count DESC

 SELECT Plant, COUNT(*) AS Near_Miss_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Near Miss'
 GROUP BY Plant
 ORDER BY Near_Miss_Count DESC;

 SELECT Year, Month, COUNT(*) AS Total_Incidents
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Year, Month
 ORDER BY Year, Month;

 SELECT Gender, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Gender
 ORDER BY Incident_Count DESC

 SELECT Year, SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Year;

 SELECT *
 FROM [dbo].['Workplace Safety Data$']
 ORDER BY [Incident Cost] DESC

 SELECT [Report Type], SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Report Type];

 SELECT Department, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Days Lost] > 2
 GROUP BY Department;

 SELECT [Incident Type], AVG([Days Lost]) AS Avg_Days_Lost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Incident Type];

 SELECT Shift, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Shift;

 SELECT Month, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Month
 ORDER BY Incident_Count DESC;

 SELECT SUM([Incident Cost]) AS Vehicle_Incident_Cost
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Vehicle';

 SELECT [Age Group], COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Falling Object'
 GROUP BY [Age Group]
 ORDER BY Incident_Count DESC






 







