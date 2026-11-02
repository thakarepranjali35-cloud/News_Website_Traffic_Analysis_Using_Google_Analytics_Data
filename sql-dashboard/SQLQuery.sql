USE nwta_dashboard;
SHOW TABLES;
CREATE TABLE analytics_data (

    Date DATE,

    Country VARCHAR(50),

    Device VARCHAR(50),

    Revenue FLOAT,

    Clicks INT,

    Impressions INT,

    Search_Count INT,

    Keyword_Category VARCHAR(100)

);
SHOW TABLES;
DESCRIBE analytics_data;
USE nwta_dashboard;

SHOW TABLES;
SELECT * FROM search_query_data
LIMIT 10;
SELECT * 
FROM `NWTA dataset.xlsx - Search Query`
LIMIT 10;
SELECT SUM(Search_Count) AS Total_Searches
FROM `NWTA dataset.xlsx - Search Query`;
SELECT SUM(Clicks) AS Total_Clicks
FROM `NWTA dataset.xlsx - Search Query`;
SELECT Keyword_Category,
       SUM(Search_Count) AS Searches
FROM `NWTA dataset.xlsx - Search Query`
GROUP BY Keyword_Category
ORDER BY Searches DESC;
SELECT Search_Query,
       Search_Count
FROM `NWTA dataset.xlsx - Search Query`
ORDER BY Search_Count DESC
LIMIT 10;
SELECT USER();