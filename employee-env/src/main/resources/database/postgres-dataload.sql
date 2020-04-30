/* load the records. */
INSERT INTO account(username, password, emp_id, createDate, updateDate) 
VALUES('demo', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', 1, '2018-06-22 19:10:25-07', '2018-06-22 19:10:25-07');

INSERT INTO department(dep_name) 
VALUES('Dev-1');
INSERT INTO department(dep_name) 
VALUES('Dev-2');
INSERT INTO department(dep_name) 
VALUES('Dev-3');

INSERT INTO position(pos_name) 
VALUES('JSE');
INSERT INTO position(pos_name) 
VALUES('SE');
INSERT INTO position(pos_name) 
VALUES('SSE');
INSERT INTO position(pos_name) 
VALUES('TL');
INSERT INTO position(pos_name) 
VALUES('PL');
INSERT INTO position(pos_name) 
VALUES('PM');
INSERT INTO position(pos_name) 
VALUES('Junior HR');
INSERT INTO position(pos_name) 
VALUES('Senior HR');

INSERT INTO japaneseskill(lev_name) 
VALUES('Beginner');
INSERT INTO japaneseskill(lev_name) 
VALUES('N5');
INSERT INTO japaneseskill(lev_name) 
VALUES('N4');
INSERT INTO japaneseskill(lev_name) 
VALUES('N3');
INSERT INTO japaneseskill(lev_name) 
VALUES('N2');
INSERT INTO japaneseskill(lev_name) 
VALUES('N1');

commit;