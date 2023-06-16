-- --We would like to give a price to the best winery, which one should we choose and why?



-- SELECT wineries.name, COUNT(wineries.name), wines.ratings_average , wines.ratings_count
-- FROM wines
-- INNER JOIN wineries
-- ON wines.winery_id = wineries.id
-- WHERE wines.ratings_average > 4.6 and wines.ratings_count > 1000
-- GROUP BY wineries.name
-- ORDER BY COUNT(wineries.name) DESC



-- Find the best winery
SELECT wineries.name, AVG(wines.ratings_average) AS winery_avg
FROM wines
INNER JOIN wineries
ON wines.winery_id = wineries.id 
GROUP BY wineries.name
ORDER BY winery_avg DESC
LIMIT 5;