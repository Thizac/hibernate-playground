create sequence classes_id_seq
    increment 1
    minvalue 1
    maxvalue 9223372036854775807
    start 1
    cache 1;

create table classes (
                         id INT NOT NULL PRIMARY KEY default nextval('classes_id_seq'::regclass),
                         name VARCHAR(12)
);