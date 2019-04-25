/*QUERY-07*/
UPDATE t_sale SET discount=30 WHERE id_sale = 1;
UPDATE t_sale SET discount= 25.2 WHERE id_sale = 4;
UPDATE t_sale SET id_client=1,discount= 26 WHERE id_sale =2;
UPDATE t_sale SET id_client=1,discount= 24 WHERE id_sale =3;
UPDATE t_sale SET id_client=4,discount= 33.3 WHERE id_sale =5;

COMMIT;

SELECT id_client, 
COUNT (id_sale), 
SUM (summa),
AVG (discount),
MIN (discount),
MAX (discount) 
FROM t_sale 
WHERE discount>25
GROUP BY id_client;
