
/*
script to solve the problem "Find products, prices for which differ from the price of the model."
*/
select w.id_ware, w.price,m.id_model,m.price AS model_price FROM t_ware w LEFT JOIN t_model m ON w.id_ware = m.id_model WHERE w.price !=m.price;

/* 
Update table t_ware, after update the script above will not display the results.
*/
UPDATE t_ware SET price = 1100 WHERE id_ware = 1;
UPDATE t_ware SET price = 1200 WHERE id_ware = 2;
UPDATE t_ware SET price = 1300 WHERE id_ware = 3;
UPDATE t_ware SET price = 1400 WHERE id_ware = 4;
UPDATE t_ware SET price = 1500 WHERE id_ware = 5;
COMMIT;
