create sequence cars_id_seq
    increment 1
    minvalue 1
    maxvalue 9223372036854775807
    start 1
    cache 1;


create table cars
(
    id      INT NOT NULL PRIMARY KEY default nextval('cars_id_seq'::regclass),
    model   VARCHAR(50),
    year    date,
    mark    VARCHAR(50),
    vin     VARCHAR(50),
    user_id INT,

    CONSTRAINT fk_user FOREIGN KEY (USER_ID) REFERENCES USERS (ID)
);