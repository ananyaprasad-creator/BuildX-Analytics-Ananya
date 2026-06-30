# BuildX-Analytics-Ananya
Dataset Selected:-
The dataset used for this project contains historical daily air quality data from various cities across India
. It includes measurements of major pollutants such as PM2.5, PM10, NO2, CO, and SO2, along with the calculated Air Quality Index (AQI) and corresponding AQI_Bucket (e.g., Severe, Poor, Moderate)

Why I Selected It:-
I chose this dataset because it provides a "real-world" scenario for practicing the full data science lifecycle
. It contains over 29,000 rows with missing values and varied naming conventions, making it an excellent candidate for data cleaning in Python, complex querying in SQL, and dynamic storytelling in Power BI

Business Questions Answered
Using SQL and Python analysis, this project addresses three critical questions:
City Comparisons: What is the average AQI for every city to identify the most consistently polluted urban areas? .
Extreme Events: Which specific dates and cities recorded the top 10 most hazardous (highest AQI) pollution spikes in the dataset.
Seasonal Trends: How do air quality levels fluctuate during the high-impact winter months (November through January)

 Tools Used
Python (Pandas Library): Used for data cleaning, handling missing pollutant values, and standardising column headers to lowercase for pipeline consistency 
SQL (SQLite/Online IDE): Used to perform business analysis using operators like GROUP BY, HAVING, ORDER BY, and BETWEEN .
Power BI Desktop: Used to build an interactive dashboard featuring DAX measures, Line Charts, Slicers, and Cards to visualise pollution trends 

One Key Insight
Delhi consistently identifies as a critical high-pollution zone, particularly during the winter months from November to January, where AQI levels frequently enter the "Severe" and "Very Poor" categories

<img width="1920" height="1080" alt="Screenshot 2026-06-30 154114" src="https://github.com/user-attachments/assets/eb5ec77d-6019-4ae4-98c6-780946dadc6f" />
<img width="1920" height="1020" alt="Screenshot 2026-06-30 153802" src="https://github.com/user-attachments/assets/e36221e7-7bea-49d7-9b4f-c95b93ec4cf6" />
