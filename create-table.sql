CREATE SCHEMA netology_sql;

CREATE TABLE netology_sql.persons (
    name           VARCHAR(100),
    surname        VARCHAR(100),
    age            SMALLINT CHECK (age >= 0 AND age <= 150),
    phone_number   VARCHAR(100) DEFAULT 'Номер не указан',
    city_of_living VARCHAR(100),
    CONSTRAINT PRIMARY KEY (name, surname, age)
);

INSERT INTO netology_sql.persons (name, surname, age, phone_number, city_of_living)
VALUES ('Nikolay', 'Sidorov', 27, '+7178956799', 'Ekaterinburg'),
       ('Valentina', 'Tereshcova', 53, '+79535113563', 'Moscow'),
       ('Ivan', 'Antropov', 37, null, 'St.Petersburg'),
       ('Peter', 'Lapin', 28, '+7121456455', 'Moscow'),
       ('Lev', 'Andreev', 23, '+75688675786', 'Nizhny Tagil');