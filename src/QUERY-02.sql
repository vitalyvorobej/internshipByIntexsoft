/**Script to solve task2. "Find sales, prices without discounts which differ from the price of goods"*/
UPDATE t_sale_str SET price = 1500 where id_sale_str=1;
UPDATE t_sale_str SET price = 1600 where id_sale_str=2;
UPDATE t_sale_str SET price = 1700 where id_sale_str=3;
UPDATE t_sale_str SET price = 1800 where id_sale_str=4;
UPDATE t_sale_str SET price = 1900 where id_sale_str=5; 
COMMIT;
SELECT tss.id_sale_str,tss.price,tw.id_ware,tw.price FROM t_ware tw JOIN t_sale_str tss ON tw.id_ware =tss.id_sale_str WHERE tw.price != tss.price;
