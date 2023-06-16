-- We want to highlight 10 wines to increase our sales,
--  which ones should we choose and why?
SELECT name,ratings_average ,ratings_count
FROM wines
WHERE wines.ratings_count > 1000 
ORDER BY ratings_average DESC
LIMIT 10