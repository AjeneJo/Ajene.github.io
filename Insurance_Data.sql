 SELECT State, COUNT(*) AS TotalPolicies
 FROM [dbo].['Insurance Policies$']
 GROUP BY State;

 SELECT Region, AVG(InsuredValue) AS AvgInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY Region;

 SELECT *
 FROM [dbo].['Insurance Policies$']
 WHERE InsuredValue > 5000000;

 SELECT COUNT(*) AS EarthquakePolicies
 FROM [dbo].['Insurance Policies$']
 WHERE Earthquake = 'Y';

 SELECT BusinessType, SUM(InsuredValue) AS TotalValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY BusinessType;

 SELECT *
 FROM [dbo].['Insurance Policies$']
 WHERE MONTH(Expiry) = 1 AND YEAR(Expiry) = 2021;

 SELECT Location, COUNT(*) AS PolicyCount
 FROM [dbo].['Insurance Policies$']
 GROUP BY Location;

 SELECT State, SUM(InsuredValue) AS TotalInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY State
 ORDER BY TotalInsuredValue DESC;

 SELECT Policy, InsuredValue
 FROM [dbo].['Insurance Policies$']
 WHERE InsuredValue > 10000000;

 SELECT Region, AVG(InsuredValue) AS AvgInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY Region;

 SELECT COUNT(*) AS BothEarthquakeFlood
 FROM [dbo].['Insurance Policies$']
 WHERE Earthquake = 'Y' AND Flood = 'Y';

 SELECT Construction, COUNT(*) AS Count
 FROM [dbo].['Insurance Policies$']
 GROUP BY Construction
 ORDER BY Count DESC;

 SELECT Policy, Location, InsuredValue
 FROM [dbo].['Insurance Policies$']
 WHERE Location = 'Urban' AND InsuredValue > 5000000;

 SELECT DISTINCT BusinessType
 FROM [dbo].['Insurance Policies$']

 SELECT State, COUNT(*) AS FloodPolicies
 FROM [dbo].['Insurance Policies$']
 WHERE Flood = 'Y'
 GROUP BY State
 ORDER BY FloodPolicies DESC
 
 SELECT Location, COUNT(*) AS Count
 FROM [dbo].['Insurance Policies$']
 GROUP BY Location;

 SELECT MIN(Expiry) AS EarliestExpiry, MAX(Expiry) AS LatestExpiry
 FROM [dbo].['Insurance Policies$']














