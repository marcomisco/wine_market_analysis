-- We would like to do a selection of wines that are easy to find all over the world. 
-- Find the top 3 most common grape all over the world and for each grape, give us the the 5 best rated wines.

SELECT grapes.name, most_used_grapes_per_country.grape_id, most_used_grapes_per_country.wines_count
FROM grapes
INNER JOIN most_used_grapes_per_country
ON grapes.id = most_used_grapes_per_country.id
ORDER BY most_used_grapes_per_country.wines_count DESC
LIMIT 3;


SELECT mugpc.wines_count AS mugpc_count,
    grapes.name AS grape_name,
    mugpc.country_code AS mugpc_cntry_code,
    countries.name AS cntry_name,
    mugpc.grape_id AS mugpc_grape_id
FROM most_used_grapes_per_country AS mugpc
JOIN countries ON mugpc_cntry_code = countries.code
JOIN grapes ON mugpc.grape_id = grapes.id
GROUP BY mugpc.wines_count
ORDER BY mugpc_count DESC
LIMIT 3;


