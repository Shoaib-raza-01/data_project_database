-- first part ---making the user
-- creating the user ipl with password as ipl123
CREATE USER ipl WITH PASSWORD 'ipl123';

-- making this user as superuser
ALTER USER ipl WITH SUPERUSER;

-- creating database
CREATE DATABASE ipl_database OWNER ipl;

-- now we will initialize with this user and database
-- so we type this in out terminal
psql -U ipl -d ipl_database;



-- second part deleting the user

-- drop the created database
DROP DATABASE ipl_database;

-- drop the user
DROP USER ipl;



-- third part loading the data from CSV to a table
-- creating table
CREATE TABLE matches (
	    id serial PRIMARY KEY,
	    season integer,
	    city text,
	    date date,
	    team1 text,
	    team2 text,
	    toss_winner text,
	    toss_decision text,
	    result text,
	    dl_applied integer,
	    winner text,
	    win_by_runs integer,
	    win_by_wickets integer,
	    player_of_match text,
	    venue text,
	    umpire1 text,
	    umpire2 text
);

-- copy the csv file into the table
\COPY matches FROM '/link/to/your/dataset/matches.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE deliveries (
    match_id integer,
    inning integer,
    batting_team text,
    bowling_team text,
    over integer,
    ball integer,
    batsman text,
    non_striker text,
    bowler text,
    is_super_over boolean,
    wide_runs integer,
    bye_runs integer,
    legbye_runs integer,
    noball_runs integer,
    penalty_runs integer,
    batsman_runs integer,
    extra_runs integer,
    total_runs integer,
    player_dismissed text,
    dismissal_kind text,
    fielder text
);

\COPY deliveries FROM '/home/link/to/your/dataset/deliveries.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE umpires (
    umpire VARCHAR(255),
    country VARCHAR(255)
);

\COPY umpires FROM '/home/link/to/your/dataset/umpires.csv' DELIMITER ',' CSV HEADER;


-- updating the team name for optimizes calculation to runs

UPDATE matches
SET team2 = 'Rising Pune Supergiants'
WHERE team2 = 'Rising Pune Supergiant';


UPDATE matches
SET team1 = 'Rising Pune Supergiants'
WHERE team1 = 'Rising Pune Supergiant';


UPDATE deliveries
SET batting_team = 'Rising Pune Supergiants'
WHERE batting_team = 'Rising Pune Supergiant';


UPDATE deliveries
SET bowling_team = 'Rising Pune Supergiants'
WHERE bowling_team = 'Rising Pune Supergiant';
