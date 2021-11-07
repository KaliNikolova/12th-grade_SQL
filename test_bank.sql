ALTER TABLE client
MODIFY COLUMN cegn varchar(10);

INSERT INTO client
VALUES(
    'Ivan',
    '61 Iskar Str.',
    '088 8888888',
    1234567890
);

INSERT INTO client
VALUES(
    'Martin',
    '61 Iskar Str.',
    '088 8888888',
    6234567890
);

INSERT INTO client
VALUES(
    'Kali',
    '61 Iskar Str.',
    '088 8888888',
    1114567890
);

UPDATE client
SET cegn = '4444444444'
WHERE cname = 'Martin';

DELETE
FROM client
WHERE cegn = '4444444444';


INSERT INTO account
VALUES(0, 100.00, 'saving');

INSERT INTO account
VALUES(0, 4500.00, 'saving');

INSERT INTO account
VALUES(0, 4500.00, 'checking');

DELETE
FROM account
WHERE anumber = 1;

UPDATE account
SET abalance = 120.00
WHERE anumber = 3;

ALTER TABLE bank
ADD FOREIGN KEY (cegn)
REFERENCES client (cegn);

ALTER TABLE bank
ADD FOREIGN KEY (anumber)
REFERENCES account (anumber);