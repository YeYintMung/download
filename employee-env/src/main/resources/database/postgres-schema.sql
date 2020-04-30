/* define the schemas. */
CREATE DATABASE assignmentdb;

drop table account;

CREATE TABLE account(
    username varchar(128),
    password varchar(60),
    emp_id int NOT NULL,
  	createDate timestamp NOT NULL,
  	updateDate timestamp,
    constraint pk_tbl_account primary key (username)
);

drop table department;

CREATE TABLE department ( 
   dep_id SERIAL PRIMARY KEY,
   dep_name varchar(255) NOT NULL
);

drop table position;

CREATE TABLE position ( 
   pos_id SERIAL PRIMARY KEY NOT NULL,
   pos_name varchar(255) NOT NULL
);

drop table japaneseskill;

CREATE TABLE japaneseskill ( 
   lev_id SERIAL PRIMARY KEY,
   lev_name varchar(255) NOT NULL
);

drop table employee;

CREATE TABLE employee ( 
  emp_id SERIAL PRIMARY KEY,
  emp_name varchar(255) NOT NULL,
  dob date NOT NULL,
  gender varchar NOT NULL,
  marital_status varchar NOT NULL,
  dep_id int NOT NULL,
  pos_id int NOT NULL,
  jp_level int NOT NULL,
  phone varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  createDate date NOT NULL,
    constraint emp_dep_id foreign key (dep_id) REFERENCES department(dep_id),
    constraint emp_pos_id foreign key (pos_id) REFERENCES position(pos_id),
    constraint emp_jp_level foreign key (jp_level) REFERENCES japaneseskill(lev_id)
);