create sequence teachers_id_seq
    increment 1
    minvalue 1
    maxvalue 9223372036854775807
    start 1
    cache 1;

create table teachers (
                          id INT NOT NULL PRIMARY KEY default nextval('teachers_id_seq'::regclass),
                          name VARCHAR(50),
                          last_name VARCHAR(50),
                          title VARCHAR(50),
                          email VARCHAR(50)
);