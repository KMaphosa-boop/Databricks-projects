-- Databricks notebook source
SELECT *
FROM dbacademy.default.practice_data

SELECT order_id , amount ,
CASE 
    WHEN amount > 5000 THEN 'High Value'
    WHEN amount BETWEEN 1000 AND 5000 THEN 'Medium Value'
    WHEN amount < 1000 THEN 'Low Value'
END AS amount_value
FROM dbacademy.default.practice_data;

SELECT payment_method ,
CASE 
    WHEN payment_method = 'Card' THEN 'Bank Payment'
    WHEN payment_method = 'EFT' THEN 'Electronic Payment'
    WHEN payment_method = 'Cash' THEN 'physical Payment'
    ELSE 'Other'
END AS Method_type
FROM dbacademy.default.practice_data;
