-- to find the sum of the each player score and using the gropby function
SELECT
  name,
  sum(score)
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  name;
-- using the groupby condition in more columns in the database
SELECT
  name,
  year,
  sum(score)
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  name,
  year;

-- select the the who scored the more then half centuries we use this query
SELECT
  name,
  count(score) AS half_centuries
FROM
  PLAYER_MATCH_DETAILS
WHERE
  score >= 50
GROUP BY
  name;
-- find the how many sixes and fours scored by palyer in descendin
SELECT
  name,
  sum(fours) AS fours_scored,
  sum(sixes) AS sixes_scored
FROM
  PLAYER_MATCH_DETAILS
GROUP BY
  name
ORDER BY
  sixes_scored DESC,
  fours_scored DESC;