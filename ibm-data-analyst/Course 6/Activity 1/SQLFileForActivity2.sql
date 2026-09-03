-- 1. Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru” 
SELECT SUM(Amount_in_USD) FROM indian_startup_funding WHERE [City _Location] = "Bengaluru"

-- 2. Write SQL query to sort the table by startup name DESC 
SELECT  * FROM indian_startup_funding ORDER BY Startup_Name DESC;

-- 3. Write SQL query to sum all the funding AmountinUSD, where City location equals “Bengaluru” 
-- and AmountinUSD>380000 
SELECT SUM(Amount_in_USD) FROM indian_startup_funding WHERE [City _Location] = "Bengaluru" and Amount_in_USD > 38000;

-- 4. Write SQL query to get all CityLocations that has an AmountinUSD >380000 
SELECT [City _Location] , Amount_in_USD from indian_startup_funding WHERE  Amount_in_USD > 38000;

-- 5. Write SQL query to get only unique CityLocations that has an AmountinUSD >380000 

SELECT  DISTINCT [City _Location] from indian_startup_funding WHERE  Amount_in_USD > 38000;

-- 6. Write SQL query to get all StartupNames where AmountinUSD<380000 
SELECT  Startup_Name from indian_startup_funding WHERE  Amount_in_USD < 38000;

-- 7. Write SQL query to sort the output from the previous question DESC 
SELECT  Startup_Name from indian_startup_funding
WHERE  Amount_in_USD < 38000
ORDER BY Startup_Name DESC ;

-- 8. Write SQL query to get the City location that has the maximum funding amount “Note that is the 
-- data is not cleaned properly you will get non logical result” 
SELECT  [City _Location] from indian_startup_funding ORDER BY Amount_in_USD DESC LIMIT 1;

-- 9. Write SQL query to get the total funding AmountinUSD for each IndustryVertical SELECT 
SELECT "Industry Vertical",
SUM("Amount_in_USD") AS TotalFundingUSD
FROM indian_startup_funding
GROUP BY "Industry Vertical"
ORDER BY TotalFundingUSD DESC;

-- 10. Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with 
-- letter “A” 


-- 11. Write SQL query to get the total funding AmountinUSD for each IndustryVertical that starts with 
-- letter “A” and sort the output DESC by the total AmountinUSD 
-- 12. Write SQL query to count all the start_ups in the Education field 
-- 13. Write SQL query to count all the start_Ups in the E-Commerce field 
-- 14. Write SQL query to count all the start_Ups in the E-Commerce field, where city location equals 
-- “Bengaluru” 
-- 15. For each Industry Vertical find the total funding amount 
-- 16. For each Industry Vertical find the total funding amount as “Total_fund” and the average 
-- funding amount as “Avg_Fund”.  In this question provide two answer 1- using group by Industry 
-- Vertical, 2- using sub_queries 
-- 17. Write SQL query to get the minimum value of funding for the “Uniphore” start_up 
-- 18. Write SQL query to get the length of the city location names  
-- 19. Write SQL query to convert start_ups names into uppercase if the funding amount is >380,000 
-- 20. Write SQL query to select distinct industry vertical names, knowing that names are mix of 
-- lowercase and uppercase values. 