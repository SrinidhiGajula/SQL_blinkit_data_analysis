select * from blinkit_data;

UPDATE blinkit_data
SET Item_Fat_Content=
CASE when Item_Fat_Content IN('LF' , 'low fat') THEN 'Low_Fat'
when Item_Fat_Content = 'reg' then 'Regular'
else Item_Fat_Content
END

SELECT CAST(sum(Sales)/1000000 AS DECIMAL(10,2)) AS Total_Sales_Million 
from blinkit_data

SELECT CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales
from blinkit_data

SELECT COUNT(*) AS TOTAL_ITEMS_2022 FROM blinkit_data AS TOTAL_ITEMS WHERE Outlet_Establishment_Year= 2022

SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating from blinkit_data

SELECT Item_Fat_Content,CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales,COUNT(*) AS TOTAL_ITEMS,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
from blinkit_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC

SELECT Item_Type,CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales,COUNT(*) AS TOTAL_ITEMS,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
from blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC

SELECT Outlet_Establishment_Year,CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales,
COUNT(*) AS TOTAL_ITEMS,
CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
from blinkit_data 
GROUP BY Outlet_Establishment_Year
ORDER BY Total_Sales DESC

SELECT Item_Fat_Content,Outlet_Location_Type,
	CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales,COUNT(*) AS TOTAL_ITEMS,
	CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
from blinkit_data
GROUP BY Item_Fat_Content, Outlet_Location_Type
ORDER BY Total_Sales DESC

SELECT Outlet_Size,
CAST(sum(Sales)/100 AS DECIMAL(10,2)) AS Total_Sales,
CAST ((sum(Sales)*100.0/sum(sum(Sales)) OVER()) AS DECIMAL(10,2)) AS Total_Sales_Percentage
from blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales_Percentage DESC

SELECT Outlet_Location_Type,CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales
from blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC

SELECT Outlet_Type,
	CAST(sum(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	CAST(avg(Sales) AS DECIMAL(10,2)) AS Avg_Sales,COUNT(*) AS TOTAL_ITEMS,
	CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
from blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC

