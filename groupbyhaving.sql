
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


SELECT
  name,
  count(score) AS half_centuries
FROM
  player_match_details
WHERE
  score >= 50
GROUP BY
  name
ORDER BY
  half_centuries DESC;

SELECT
  name,
  sum(fours) AS no_of_fours
FROM
  player_match_details
GROUP BY
  name
ORDER BY
  no_of_fours DESC;
-- Get playernameand the total number of matches played asno_of_matchesby each player in the year 2012.

-- Note: Output must contain rows in the descending order ofno_of_matchesof each player.

SELECT
  name,
  count(MATCH) AS no_of_matches
FROM
  player_match_details
WHERE
  year = 2012
GROUP BY
  name
ORDER BY
  no_of_matches DESC;
-- Get the year-wise performance, i.e., no_of_matchesand runs_scoredby each player.

-- Note: Output must contain rows in the ascending order ofname&year

-- Expected Output Format:
-- -- 

SELECT
  name,
  year,
  count(MATCH) AS no_of_matches,
  sum(score) AS runs_scored
FROM
  player_match_details
GROUP BY
  name,
  year
ORDER BY
  name,
  year ASC;

-- For each player who scored more than 50 in at least 2 matches, get the total number of matches where the players scored more than 50.

-- Note: Output must contain rows in the ascending order ofnameof the player.


SELECT
  name,
  count(MATCH) AS no_of_matches
FROM
  player_match_details
WHERE
  score > 50
GROUP BY
  name
HAVING
  no_of_matches >= 2
ORDER BY
  name ASC;