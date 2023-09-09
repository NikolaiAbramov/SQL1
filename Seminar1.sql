/*2*/
SELECT product_name, manufacturer 
FROM mobile_phones WHERE product_count>2;

/*3*/
SELECT * FROM mobile_phones
WHERE manufacturer = "Samsung";

/*4,1*/
SELECT * FROM mobile_phones 
WHERE product_name REGEXP 'iphone'; 
/*4,2*/
SELECT * FROM mobile_phones 
WHERE manufacturer REGEXP 'Samsung';
/*4,4*/
SELECT * FROM mobile_phones 
WHERE product_name LIKE '%8%';

