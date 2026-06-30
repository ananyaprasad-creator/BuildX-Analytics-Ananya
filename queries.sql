-- 1. WHERE Query: Isolate records for a specific high-pollution city.
-- Purpose: To filter the dataset for 'delhi' to analyze its specific historical pollution records.
SELECT * FROM cleaned_dataset 
WHERE city = 'Delhi';

-- 2. GROUP BY + AVG Query: Summarise typical air quality by region.
-- Purpose: To calculate the overall average AQI for every city to identify the most polluted urban areas.
SELECT city, AVG(aqi) AS average_aqi 
FROM cleaned_dataset 
GROUP BY city;

-- 3. ORDER BY DESC Query: Identify extreme pollution events.
-- Purpose: To rank the top 10 most hazardous days recorded in the dataset based on the highest AQI.
SELECT city, date, aqi 
FROM cleaned_dataset 
ORDER BY aqi DESC 
LIMIT 10;

-- 4. HAVING Query: Filter for cities with chronic air quality issues.
-- Purpose: To find cities where the long-term average AQI exceeds the "Unhealthy" threshold of 150.
SELECT city, AVG(aqi) AS avg_aqi 
FROM cleaned_dataset 
GROUP BY city 
HAVING AVG(aqi) > 150;

-- 5. BETWEEN Query: Analyse seasonal pollution during the winter peak.
-- Purpose: To extract pollution levels for the high-impact winter months of November through January.
SELECT city, date, aqi 
FROM cleaned_dataset 
WHERE date BETWEEN '2019-11-01' AND '2020-01-31';

-- 6. Advanced Analytical Query: Distribution of pollution categories per city.
-- Purpose: Combines WHERE, GROUP BY, COUNT, and ORDER BY to show the frequency 
-- of different air quality levels (like 'Severe' or 'Poor') for each city.
SELECT city, aqi_bucket, COUNT(*) AS days_count
FROM cleaned_dataset
WHERE aqi > 0
GROUP BY city, aqi_bucket
ORDER BY city ASC, days_count DESC;