create sequence cars_id_seq
    increment 1
    minvalue 1
    maxvalue 9223372036854775807
    start 1
    cache 1;


create table cars
(
    id      BIGINT NOT NULL PRIMARY KEY default nextval('cars_id_seq'::regclass),
    model   VARCHAR(50),
    year    VARCHAR(4),
    mark    VARCHAR(50),
    vin     VARCHAR(50),
    user_id BIGINT,

    CONSTRAINT fk_user FOREIGN KEY (USER_ID) REFERENCES USERS (ID)
);