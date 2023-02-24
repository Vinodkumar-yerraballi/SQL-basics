-- to selecet the sum of the total score 
SELECT
  sum(score)
FROM
  PLAYER_MATCH_DETAILS
--  find the particuler person score in the database
SELECT
  sum(score)
FROM
  PLAYER_MATCH_DETAILS
WHERE
  name = 'Ram';
-- find the which player have low scroe
SELECT
  name,
  min(score)
FROM
  PLAYER_MATCH_DETAILS;
-- find the average scroe in the scores from the database
SELECT
  avg(score)
FROM
  PLAYER_MATCH_DETAILS;
-- Which person have get maximu runs in the database
SELECT
  name,
  max(score)
FROM
  PLAYER_MATCH_DETAILS;
-- find the how match team will played in the database
SELECT
  count(MATCH)
FROM
  PLAYER_MATCH_DETAILS;
-- How many matches david play in the database
SELECT
  count(MATCH)
FROM
  PLAYER_MATCH_DETAILS
WHERE
  name = 'David';

-- How to find the players in the database with remove duplicates values
SELECT
  count(DISTINCT name)
FROM
  PLAYER_MATCH_DETAILS;

-- find the min and max score for the database
SELECT
  min(score),
  max(score)
FROM
  PLAYER_MATCH_DETAILS;

-- to create temporary name column name
SELECT
  name AS player_name
FROM
  PLAYER_MATCH_DETAILS;

SELECT
  max(score) AS maximum_score
FROM
  PLAYER_MATCH_DETAILS;