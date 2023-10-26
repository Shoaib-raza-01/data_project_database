-- Question_1
-- Total runs scored by team

SELECT batting_team, SUM(total_runs) AS total
FROM deliveries
GROUP BY batting_team;


-- Question_2
-- Top batsman for Royal Challengers Bangalore

SELECT batsman, SUM(total_runs) AS total
FROM deliveries
WHERE batting_team = 'Royal Challengers Bangalore'
GROUP BY batsman
ORDER BY total DESC
LIMIT 10;


-- Question_3
-- Foreign umpire analysis

SELECT country, COUNT(country) AS Count
FROM umpire
WHERE country <> ' India'
GROUP BY country;


-- Question_4
-- Stacked chart of matches played by team by season

SELECT season, Teams.team1 AS teams, COUNT(*) AS count
FROM (
    SELECT season, team1 FROM matches
    UNION ALL 
    SELECT season, team2 FROM matches
) AS Teams
GROUP BY season, Teams.team1
ORDER BY season ASC;


     

-- Question_5
-- Number of matches played per year for all the years in IPL.

SELECT season, COUNT(*) AS No_of_matches_played
FROM matches
GROUP BY season
ORDER BY season ASC;


-- Question_6.
-- Number of matches won per team per year in IPL.

SELECT season, winner , COUNT(winner)
FROM matches
GROUP BY season, winner
ORDER BY season;


-- Question_7
-- Extra runs conceded per team in the year 2016

SELECT season, batting_team, SUM(extra_runs) as Extras
FROM deliveries
JOIN matches 
ON matches.id = deliveries.match_id
WHERE season=2016 
GROUP BY season,batting_team
ORDER BY season,batting_team;


-- Question_8
-- Top 10 economical bowlers in the year 2015

SELECT bowler, (SUM(total_runs)/(COUNT(bowler)/6)) AS economy
FROM deliveries
JOIN matches 
ON matches.id = deliveries.match_id
WHERE season=2015
GROUP BY bowler
ORDER BY economy
LIMIT 10;