-- We have a marketing budget for this year, 
-- which country should we prioritise and why?
SELECT *
FROM countries
ORDER BY 
users_count DESC,
wines_count DESC
LIMIT 3