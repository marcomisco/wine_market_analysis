-- We has detected that a big cluster of customers like a specific 
-- combination of tastes. We have identified few primary keywords that 
-- matches this and we would like you to find all the wines that have 
-- those keywords. To ensure accuracy of our selection, ensure that more 
-- than 10 users confirmed those keywords. Also, identify 
-- the flavor_groups related to those keywords.
-- Coffee
-- Toast
-- Green apple
-- cream
-- citrus



SELECT wines.name,wines.ratings_average, wines.ratings_count ,keywords_wine.group_name , keywords_wine.keyword_type , keywords.name
FROM wines
JOIN keywords_wine
ON wines.id = keywords_wine.wine_id
JOIN keywords
ON keywords_wine.keyword_id = keywords.id
WHERE keywords_wine.count > 10 
AND keywords_wine.keyword_type = "primary"
AND keywords.name IN ('coffee','toast' ,'green apple', 'cream', 'citrus');