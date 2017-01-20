DROP USER IF EXISTS "indexed_car_user";
DROP DATABASE IF EXISTS "indexed_cars";
CREATE USER "indexed_car_user";
CREATE DATABASE "indexed_cars";

\c indexed_cars;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql
\i scripts/car_model_data.sql

SELECT DISTINCT "make_title"
FROM "car_models"
WHERE "make_code" = 'LAM'; /*time: 4.324*/

SELECT DISTINCT "model_title"
FROM "car_models"
WHERE "make_code" = 'NISSAN' AND "model_code" = 'GT-R'; /*time: 127.817*/

SELECT "make_code", "model_code", "model_title", "year"
FROM "car_models"
WHERE "make_code" = 'LAM'; /*time: 6.700*/

SELECT *
FROM "car_models"
WHERE "year" BETWEEN 2010 AND 2015; /*time: 395.328*/

SELECT *
FROM "car_models"
WHERE "year" = 2010; /*time: 189.748*/

