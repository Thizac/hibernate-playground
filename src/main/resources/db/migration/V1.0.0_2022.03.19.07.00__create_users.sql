create sequence user_id_seq
    increment 1
    minvalue 1
    maxvalue 9223372036854775807
    start 1
    cache 1;

CREATE TABLE USERS
(
    id BIGINT NOT NULL PRIMARY KEY default nextval('user_id_seq'::regclass),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(50),
    gender VARCHAR(50),
    city VARCHAR(50)
);
