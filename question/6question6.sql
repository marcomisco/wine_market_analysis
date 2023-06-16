-- We would to give create a country leaderboard, give us a visual that shows the average wine rating for each country. 
-- Do the same for the vintages.

SELECT countries.name AS country, 
regions.country_code, 
ROUND(AVG(wines.ratings_average), 2) AS avg_rating
FROM wines
JOIN regions ON wines.region_id = regions.id
JOIN countries ON countries.code = regions.country_code
GROUP BY regions.country_code, countries.name
ORDER BY avg_rating DESC;




SELECT countries.name AS country,
    ROUND(AVG(vintages.ratings_average),2) AS vint_rtng_avg
FROM vintages
JOIN wines ON vintages.wine_id = wines.id
JOIN regions ON wines.region_id = regions.id
JOIN countries ON countries.code = regions.country_code
GROUP BY country
ORDER BY vint_rtng_avg DESC;