/*QUERY-08
Have no right results cuz we have only 1 product for each line.
You need  to insert more than 1 line in the field.
*/
SELECT tm.id_model,tm.name,tm.label,tm.price,
tw.name,tw.id_ware,
ts.id_sale_str,ts.count_id_sale,ts.id_ware,ts.count_qty,ts.avg_summa,ts.discount_min,ts.discount_max
FROM t_model tm
JOIN t_ware tw
ON tm.id_model = tw.id_model
JOIN 
(
SELECT id_sale_str AS id_sale_str,
id_ware AS id_ware,
MIN(discount)AS discount_min,
MAX(discount) AS discount_max,
SUM(qty) AS count_qty,
AVG(summa) AS avg_summa,
SUM(id_sale)AS count_id_sale
FROM t_sale_str 
GROUP BY id_sale_str,id_ware) ts 
ON tw.id_ware =ts.id_ware
ORDER BY id_model; 
