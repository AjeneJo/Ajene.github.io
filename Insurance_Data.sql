 Find the total number of policies for each state.
  
 SELECT State, COUNT(*) AS TotalPolicies
 FROM [dbo].['Insurance Policies$']
 GROUP BY State;

 Calculate the average insured value by region.
 
 SELECT Region, AVG(InsuredValue) AS AvgInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY Region;

 List all policies with an insured value above $5,000,000.
  
 SELECT *
 FROM [dbo].['Insurance Policies$']
 WHERE InsuredValue > 5000000;

 Show the number of policies that include Earthquake insurance.
 SELECT COUNT(*) AS EarthquakePolicies
 FROM [dbo].['Insurance Policies$']
 WHERE Earthquake = 'Y';

 Find the total insured value per business type.
  
 SELECT BusinessType, SUM(InsuredValue) AS TotalValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY BusinessType;

 Retrieve all policies expiring in January 2021.
  
 SELECT *
 FROM [dbo].['Insurance Policies$']
 WHERE MONTH(Expiry) = 1 AND YEAR(Expiry) = 2021;

 Count the number of policies in Urban vs Rural locations.
  
 SELECT Location, COUNT(*) AS PolicyCount
 FROM [dbo].['Insurance Policies$']
 GROUP BY Location;

 Which state has the highest total insured value?

 SELECT State, SUM(InsuredValue) AS TotalInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY State
 ORDER BY TotalInsuredValue DESC;

 List all policies where the insured value exceeds $10 million.
  
 SELECT Policy, InsuredValue
 FROM [dbo].['Insurance Policies$']
 WHERE InsuredValue > 10000000;

 Find the average insured value by region.
  
 SELECT Region, AVG(InsuredValue) AS AvgInsuredValue
 FROM [dbo].['Insurance Policies$']
 GROUP BY Region;

 Get the number of policies that cover both earthquake and flood.
 SELECT COUNT(*) AS BothEarthquakeFlood
 FROM [dbo].['Insurance Policies$']
 WHERE Earthquake = 'Y' AND Flood = 'Y';

 Which construction type is most common in the dataset?
  
 SELECT Construction, COUNT(*) AS Count
 FROM [dbo].['Insurance Policies$']
 GROUP BY Construction
 ORDER BY Count DESC;

 Find all policies located in urban areas with an insured value above $5 million.
  
 SELECT Policy, Location, InsuredValue
 FROM [dbo].['Insurance Policies$']
 WHERE Location = 'Urban' AND InsuredValue > 5000000;

 List all distinct business types covered under insurance.

 SELECT DISTINCT BusinessType
 FROM [dbo].['Insurance Policies$']

 Find the top 5 states with the highest number of flood-covered policies.
 
 SELECT State, COUNT(*) AS FloodPolicies
 FROM [dbo].['Insurance Policies$']
 WHERE Flood = 'Y'
 GROUP BY State
 ORDER BY FloodPolicies DESC

 Count the number of rural vs. urban policies.
  
 SELECT Location, COUNT(*) AS Count
 FROM [dbo].['Insurance Policies$']
 GROUP BY Location;

 Get the earliest and latest policy expiry dates.
  
 SELECT MIN(Expiry) AS EarliestExpiry, MAX(Expiry) AS LatestExpiry
 FROM [dbo].['Insurance Policies$']














