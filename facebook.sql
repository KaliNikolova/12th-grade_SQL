CREATE TABLE users(
    uid INT AUTO_INCREMENT,
    ue_mail VARCHAR(50),
    upassword VARCHAR(32),
    PRIMARY KEY(uid)
);

CREATE TABLE friends(uid1 INT, uid2 INT);

ALTER TABLE friends
ADD PRIMARY KEY (uid1, uid2);

CREATE TABLE walls(
    uid INT,
    uid_writer INT,
    post_text VARCHAR(1000),
    post_date DATE
);

CREATE TABLE groups(
    gid INT AUTO_INCREMENT,
    gname VARCHAR(100),
    gdescription VARCHAR(300),
    PRIMARY KEY(gid)
);

CREATE TABLE groupMembers(
    gid INT,
    uid INT,
    PRIMARY KEY(gid, uid)
);

ALTER TABLE
    users ADD uregistration_date DATE;

ALTER TABLE
    groups MODIFY COLUMN gdescription VARCHAR(300) NOT NULL DEFAULT '';


INSERT INTO users
VALUES (0, 'kali@gmail.com', '12345678', '2017-03-03');

INSERT INTO users
VALUES (0, 'sofi@gmail.com', 'sofi1234', '2018-09-13');

INSERT INTO groups
VALUES (0, '12 a', 'Grupa na klasa');

INSERT INTO groupmembers
VALUES (1, 1);

INSERT INTO groupmembers
VALUES (1, 2);

INSERT INTO friends
VALUES (1, 2);

INSERT INTO walls
VALUES (1, 2, "Happy birthday", '2021-10-22');

ALTER TABLE friends
ADD FOREIGN KEY (uid1)
REFERENCES fan (uid);

ALTER TABLE friends
ADD FOREIGN KEY (uid2)
REFERENCES fan (uid);

ALTER TABLE groupmembers
ADD FOREIGN KEY (uid)
REFERENCES fan (uid);

ALTER TABLE groupmembers
ADD FOREIGN KEY (gid)
REFERENCES fan (gid);