
-- to find the top 10 players who playes most matches 
SELECT
  name,
  year,
  count(MATCH) AS total_matches
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  name,
  year
ORDER BY
  total_matches DESC
LIMIT
  10 OFFSET 0;

-- find the top 5 players in 2010 and 2014 got average score in asc

SELECT
  name,
  avg(score) AS avg_score,
  year
FROM
  PLAYER_MATCH_DETAILS
WHERE
  year BETWEEN 2010
  AND 2014
GROUP BY
  name
ORDER BY
  avg_score ASC
LIMIT
  5 OFFSET 0;


SELECT
  name,
  avg(score) AS avg_score,
  sum(score) AS total_score,
  year
FROM
  PLAYER_MATCH_DETAILS
WHERE
  year BETWEEN 2010
  AND 2014
GROUP BY
  name
HAVING
  avg_score < 75
ORDER BY
  avg_score DESC;


-- WHERE vs HAVING: WHERE is used to filter rows and this operation is performed before grouping.
-- HAVING is used to filter groups and this operation is performed after grouping.