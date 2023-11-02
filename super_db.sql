-- Active: 1698732586590@@127.0.0.1@3306@superstore_db

SELECT * from items WHERE isnull(properties->'$.gluten_free');

SELECT * from items WHERE properties->'$.color'='blue';

select * from items where JSON_EXTRACT(properties,'$.color')='blue';