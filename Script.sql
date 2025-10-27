SELECT *
From atp_players

SELECT *
From atp_ranking

SELECT Name, COUNT(*) AS nb
FROM atp_ranking
GROUP BY Name
HAVING COUNT(*) > 1;

SELECT player_id, COUNT(*) AS nb
FROM atp_players
GROUP BY player_id
HAVING COUNT(*) > 1;

SELECT *
From atp_ranking
Where Name is NULL or player_id is NULL;

SELECT *
From atp_players
Where name_first is NULL or name_last is NULL or player_id is NULL;

ALTER TABLE atp_players ADD COLUMN Name TEXT;
UPDATE atp_players
SET Name = name_first || ' ' || name_last;


CREATE VIEW v_players AS
SELECT  
    player_id,
    Name,
    hand,
    dob,
    ioc,
    height
FROM atp_players;


SELECT *
FROM v_players

CREATE VIEW v_ranking AS
SELECT  
    player_id,
    Name,
    Rank,
    Points,
    country
FROM atp_ranking;

SELECT *
From v_ranking 












 