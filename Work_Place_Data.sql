 How many Incidents occurred at each plant?

 SELECT Plant, Count(*) AS Incident_Count
 FROM[dbo].['Workplace Safety Data$']
 GROUP BY Plant;

 What is the total incident cost per department?

 SELECT Department, SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Department;

 Which incident type resulted in the highest total days lost?

 SELECT [Incident Type], SUM([Days Lost]) AS Total_Days
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Incident Type]
 ORDER BY Total_Days DESC

 What is the distribution of incident types by shift?

 SELECT Shift, [Incident Type], COUNT(*) AS Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Shift, [Incident Type];
 
 What is the average incident cost for each injury location?

 SELECT [Injury Location], AVG([Incident Cost]) AS Avg_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Injury Location];

 Which age group has the highest number of incidents?

 SELECT [Age Group], COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Age Group]
 ORDER BY Incident_Count DESC

 How many incidents were reported as 'Lost Time' by each plant?

 SELECT Plant, COUNT(*) AS Lost_Time_Incidents
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Report Type] = 'Lost Time'
 GROUP BY Plant;

 Which department had the highest number of 'Crush & Pinch' incidents?

 SELECT Department, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Crush & Pinch'
 GROUP BY Department
 ORDER BY Incident_Count DESC

 Which plants reported the most "Near Miss" incidents?

 SELECT Plant, COUNT(*) AS Near_Miss_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Near Miss'
 GROUP BY Plant
 ORDER BY Near_Miss_Count DESC;

 What is the total number of incidents by year and month?

 SELECT Year, Month, COUNT(*) AS Total_Incidents
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Year, Month
 ORDER BY Year, Month;

 Which gender has the most reported incidents?

 SELECT Gender, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Gender
 ORDER BY Incident_Count DESC

 What is the total cost of incidents per year?

 SELECT Year, SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Year;

 Which incident resulted in the highest cost?

 SELECT *
 FROM [dbo].['Workplace Safety Data$']
 ORDER BY [Incident Cost] DESC

 What is the total cost of incidents for each report type?

 SELECT [Report Type], SUM([Incident Cost]) AS Total_Cost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Report Type];

 Which departments had incidents with more than 2 days lost?

 SELECT Department, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Days Lost] > 2
 GROUP BY Department;

 What is the average number of days lost per incident type?

 SELECT [Incident Type], AVG([Days Lost]) AS Avg_Days_Lost
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY [Incident Type];

 What is the distribution of incidents by shift (Day, Afternoon, Night)?

 SELECT Shift, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Shift;

 Which months have the highest number of incidents?

 SELECT Month, COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 GROUP BY Month
 ORDER BY Incident_Count DESC;

 What is the total cost of "Vehicle" related incidents?

 SELECT SUM([Incident Cost]) AS Vehicle_Incident_Cost
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Vehicle';

 Which age group is most affected by "Falling Object" incidents?

 SELECT [Age Group], COUNT(*) AS Incident_Count
 FROM [dbo].['Workplace Safety Data$']
 WHERE [Incident Type] = 'Falling Object'
 GROUP BY [Age Group]
 ORDER BY Incident_Count DESC






 







