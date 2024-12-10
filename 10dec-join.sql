CREATE TABLE tableA (
    pk INT PRIMARY KEY,
    value1 VARCHAR(255)
);

INSERT INTO tableA (pk, value1)
VALUES (1, 'fox');
INSERT INTO tableA (pk, value1)
VALUES (2, 'cop');
INSERT INTO tableA (pk, value1)
VALUES (3, 'taxi');
INSERT INTO tableA (pk, value1)
VALUES (6, 'washington');
INSERT INTO tableA (pk, value1)
VALUES (7, 'dell');
INSERT INTO tableA (pk, value1)
VALUES (5, 'arizona');
INSERT INTO tableA (pk, value1)
VALUES (4, 'lincoln');
INSERT INTO tableA (pk, value1)
VALUES (10, 'lucent');


CREATE TABLE tableB (
    pk INT PRIMARY KEY,
    value1 VARCHAR(255)
);

INSERT INTO tableB (pk, value1)
VALUES(1, 'trot');
INSERT INTO tableB (pk, value1)
VALUES(2, 'car');
INSERT INTO tableB (pk, value1)
VALUES(3, 'cab');
INSERT INTO tableB (pk, value1)
VALUES(6, 'monument');
INSERT INTO tableB (pk, value1)
VALUES(7, 'pc');
INSERT INTO tableB (pk, value1)
VALUES(8, 'microsoft');
INSERT INTO tableB (pk, value1)
VALUES(9, 'apple');
INSERT INTO tableB (pk, value1)
VALUES(11, 'scotch');

SELECT --inner join
    tableA.value1 AS value1_A,
    tableB.value1 AS value1_B
FROM 
    tableA
INNER JOIN 
    tableB
ON 
    tableA.pk = tableB.pk;


SELECT --left outer join
    tableA.value1 AS value1_A,
    tableB.value1 AS value1_B
FROM 
    tableA
LEFT JOIN 
    tableB
ON 
    tableA.pk = tableB.pk;

SELECT --right outer join
    tableA.value1 AS value1_A,
    tableB.value1 AS value1_B
FROM 
    tableA
RIGHT JOIN 
    tableB
ON 
    tableA.pk = tableB.pk;

select * from tableA natural join tableB;









