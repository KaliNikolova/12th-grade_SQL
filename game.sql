INSERT INTO team
VALUES('Shampion', 'red', 'white');

INSERT INTO team
VALUES('CSKA', 'red', 'white');

INSERT INTO team
VALUES('Levski', 'blue', 'white');

DELETE FROM team
WHERE tname = 'CSKA';

UPDATE team
SET second_color = 'black'
WHERE tname = 'Levski';


INSERT INTO player 
VALUES ('Kali', '2003-10-01');

INSERT INTO player 
VALUES ('Persi', '2003-05-18');

INSERT INTO player 
VALUES ('Sofi', '2003-10-22');

UPDATE player
SET birth_date = '2003-01-01'
WHERE pname = 'Persi';

DELETE FROM player
WHERE pname = 'Persi';


INSERT INTO fan
VALUES ('Niki', '1038293749');

INSERT INTO fan
VALUES ('Alexandar', '1238293749');

INSERT INTO fan
VALUES ('Daniel Penchev', '1038292342');

UPDATE fan
SET egn = '1234567890'
WHERE fname = 'Alexandar';

DELETE FROM fan
WHERE fname = 'Niki';

ALTER TABLE captains
ADD FOREIGN KEY (team)
REFERENCES team (tname);

ALTER TABLE captains
ADD FOREIGN KEY (captain)
REFERENCES player (pname);

ALTER TABLE favourite_team
ADD FOREIGN KEY (team)
REFERENCES team (tname);

ALTER TABLE favourite_team
ADD FOREIGN KEY (fan)
REFERENCES fan (egn);

ALTER TABLE favourite_player
ADD FOREIGN KEY (player)
REFERENCES player (pname);

ALTER TABLE favourite_player 
ADD FOREIGN KEY (fan)
REFERENCES fan (egn);