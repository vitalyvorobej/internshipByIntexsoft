/* script for filling the database with data*/


DELETE FROM t_supply_str;
DELETE FROM t_supply;
DELETE FROM t_supplier;
DELETE FROM t_rest;
DELETE FROM t_rest_hist;
DELETE FROM t_sale_rep;
DELETE FROM t_price_ware;
DELETE FROM t_sale_str;
DELETE FROM t_sale;
DELETE FROM t_client;
DELETE FROM t_dept;
DELETE FROM t_ware;
DELETE FROM t_price_model;
DELETE FROM t_model;
DELETE FROM t_ctl_node;


INSERT INTO t_supplier(id_supplier,moniker,name) VALUES (1,'fast_travel','Alex Boyi');
INSERT INTO t_supplier(id_supplier,moniker,name) VALUES (2,'adres_co','Dmitry Bens');
INSERT INTO t_supplier(id_supplier,moniker,name) VALUES (3,'never_see_you','Alexander Dmitriev');
INSERT INTO t_supplier(id_supplier,moniker,name) VALUES (4,'example_sheep','Igor Vasuk');
INSERT INTO t_supplier(id_supplier,moniker,name) VALUES (5,'have_no_time','Pavel Ishutin');

INSERT INTO t_supply(id_supply,code,num,dt,id_supplier,e_state,summa,nds) VALUES (1,'2300','+37512985','02.jan.12',1,12,1500,10);
INSERT INTO t_supply(id_supply,code,num,dt,id_supplier,e_state,summa,nds) VALUES (2,'230018','+37512926','27.jan.12',2,14,1250,12);
INSERT INTO t_supply(id_supply,code,num,dt,id_supplier,e_state,summa,nds) VALUES (3,'230092','+37512135','29.jun.12',3,113,1780,11);
INSERT INTO t_supply(id_supply,code,num,dt,id_supplier,e_state,summa,nds) VALUES (4,'230012','+37512909','11.jun.11',4,11,13200,15);
INSERT INTO t_supply(id_supply,code,num,dt,id_supplier,e_state,summa,nds) VALUES (5,'23015','+37512912','13.feb.12',5,10,88900,15);

INSERT INTO t_ctl_node(id_ctl_node,id_parent,code,tree_code,name) VALUES (1,6,'14800','12d8',1);
INSERT INTO t_ctl_node(id_ctl_node,id_parent,code,tree_code,name) VALUES (2,7,'76','11d9',2);
INSERT INTO t_ctl_node(id_ctl_node,id_parent,code,tree_code,name) VALUES (3,8,'134','10s4',3);
INSERT INTO t_ctl_node(id_ctl_node,id_parent,code,tree_code,name) VALUES (4,9,'152','3f8',4);
INSERT INTO t_ctl_node(id_ctl_node,id_parent,code,tree_code,name) VALUES (5,10,'109','12sfd8',5);

INSERT INTO t_model(id_model,moniker,name,id_node,grp,subgrp,label,price) VALUES (1,1,'sode',1,'first_group','under_first_group','Coca',1100);
INSERT INTO t_model(id_model,moniker,name,id_node,grp,subgrp,label,price) VALUES (2,2,'water',2,'second_group','under_sec_group','Pepsi',1200);
INSERT INTO t_model(id_model,moniker,name,id_node,grp,subgrp,label,price) VALUES (3,3,'wisky',3,'third_group','under_third_group','Kim',1300);
INSERT INTO t_model(id_model,moniker,name,id_node,grp,subgrp,label,price) VALUES (4,4,'rom',4,'fourth_group','under_fourth_group','Jackdn',1400);
INSERT INTO t_model(id_model,moniker,name,id_node,grp,subgrp,label,price) VALUES (5,5,'beer',5,'fifth_group','under_fifth_group','Syris',1500);


INSERT INTO t_ware(id_ware,moniker,name,id_model,sz_orig,sz_rus,price) VALUES (1,'1','pop',1,25,28,1000);
INSERT INTO t_ware(id_ware,moniker,name,id_model,sz_orig,sz_rus,price) VALUES (2,'2','star',2,27,26,1100);
INSERT INTO t_ware(id_ware,moniker,name,id_model,sz_orig,sz_rus,price) VALUES (3,'3','def',3,24,23,1200);
INSERT INTO t_ware(id_ware,moniker,name,id_model,sz_orig,sz_rus,price) VALUES (4,'4','rebr',4,30,32,1300);
INSERT INTO t_ware(id_ware,moniker,name,id_model,sz_orig,sz_rus,price) VALUES (5,'5','kien',5,22,33,1400);



INSERT INTO t_supply_str(id_supply_str,id_supply,num,id_ware,qty,price,summa,nds) VALUES (1,1,2,1,3,8250,13800,10);
INSERT INTO t_supply_str(id_supply_str,id_supply,num,id_ware,qty,price,summa,nds) VALUES (2,2,1,2,2,4650,9200,8);
INSERT INTO t_supply_str(id_supply_str,id_supply,num,id_ware,qty,price,summa,nds) VALUES (3,3,3,3,4,9300,1400,11);
INSERT INTO t_supply_str(id_supply_str,id_supply,num,id_ware,qty,price,summa,nds) VALUES (4,4,5,4,6,22400,8600,3);
INSERT INTO t_supply_str(id_supply_str,id_supply,num,id_ware,qty,price,summa,nds) VALUES (5,5,6,5,5,17500,4576,8);

INSERT INTO t_price_model(id_model,dt_beg,dt_end,price) VALUES (1,'02.jan.12','02.jan.13',1000);
INSERT INTO t_price_model(id_model,dt_beg,dt_end,price) VALUES (2,'24.feb.10','24.feb.15',1100);
INSERT INTO t_price_model(id_model,dt_beg,dt_end,price) VALUES (3,'22.may.09','22.may.10',1200);
INSERT INTO t_price_model(id_model,dt_beg,dt_end,price) VALUES (4,'13.dec.1997','12.feb.2008',1300);
INSERT INTO t_price_model(id_model,dt_beg,dt_end,price) VALUES (5,'13.jan.1998','13.jan.2000',1400);

INSERT INTO t_rest(id_ware, qty) VALUES (1,3);
INSERT INTO t_rest(id_ware, qty) VALUES (2,5);
INSERT INTO t_rest(id_ware, qty) VALUES (3,4);
INSERT INTO t_rest(id_ware, qty) VALUES (4,2);
INSERT INTO t_rest(id_ware, qty) VALUES (5,1);

INSERT INTO t_rest_hist(id_ware,dt_beg,dt_end,qty) VALUES (1,'02.jan.12','02.jan.13',2);
INSERT INTO t_rest_hist(id_ware,dt_beg,dt_end,qty) VALUES (2,'02.feb.12','02.feb.13',3);
INSERT INTO t_rest_hist(id_ware,dt_beg,dt_end,qty) VALUES (3,'02.mar.12','02.apr.13',4);
INSERT INTO t_rest_hist(id_ware,dt_beg,dt_end,qty) VALUES (4,'02.may.12','02.jun.13',1);
INSERT INTO t_rest_hist(id_ware,dt_beg,dt_end,qty) VALUES (5,'02.jun.12','02.jul.13',5);

INSERT INTO t_sale_rep(id_ware,month,inp_qty,inp_sum,supply_qty,supply_sum,sale_sum,sales_sum,out_sum,out_sums) VALUES (1,'01.jan.2010',1000,230,2000,1300,700,250,280,5290);
INSERT INTO t_sale_rep(id_ware,month,inp_qty,inp_sum,supply_qty,supply_sum,sale_sum,sales_sum,out_sum,out_sums) VALUES (2,'01.feb.2010',1400,280,2100,1700,800,650,780,4290);
INSERT INTO t_sale_rep(id_ware,month,inp_qty,inp_sum,supply_qty,supply_sum,sale_sum,sales_sum,out_sum,out_sums) VALUES (3,'01.mar.2010',1300,270,2200,1600,900,550,880,3290);
INSERT INTO t_sale_rep(id_ware,month,inp_qty,inp_sum,supply_qty,supply_sum,sale_sum,sales_sum,out_sum,out_sums) VALUES (4,'01.apr.2010',1200,260,2300,1500,500,450,980,2290);
INSERT INTO t_sale_rep(id_ware,month,inp_qty,inp_sum,supply_qty,supply_sum,sale_sum,sales_sum,out_sum,out_sums) VALUES (5,'01.may.2010',1100,250,2400,1400,400,350,1080,1290);

INSERT INTO t_price_ware(id_ware,dt_beg,dt_end,price) VALUES (1,'01.jan.2000','01.jan.2001',1100);
INSERT INTO t_price_ware(id_ware,dt_beg,dt_end,price) VALUES (2,'01.feb.2000','01.feb.2001',1200);
INSERT INTO t_price_ware(id_ware,dt_beg,dt_end,price) VALUES (3,'01.mar.2000','01.mar.2001',1300);
INSERT INTO t_price_ware(id_ware,dt_beg,dt_end,price) VALUES (4,'01.apr.2000','01.apr.2001',1400);
INSERT INTO t_price_ware(id_ware,dt_beg,dt_end,price) VALUES (5,'01.may.2000','01.may.2001',1500);

INSERT INTO t_dept(id_dept,name,id_parent) VALUES (1,'first_dept',null);
INSERT INTO t_dept(id_dept,name,id_parent) VALUES (2,'second_dept',1);
INSERT INTO t_dept(id_dept,name,id_parent) VALUES (3,'third_dept',2);
INSERT INTO t_dept(id_dept,name,id_parent) VALUES (4,'fourth_dept',3);
INSERT INTO t_dept(id_dept,name,id_parent) VALUES (5,'fifth_dept',null);

INSERT INTO t_client(id_client,id_dept,moniker,name,is_vip,town) VALUES(1,2,'first_moniker','first_name','true','groDNO');
INSERT INTO t_client(id_client,id_dept,moniker,name,is_vip,town) VALUES(2,1,'second_moniker','second_name','false','minSK');
INSERT INTO t_client(id_client,id_dept,moniker,name,is_vip,town) VALUES(3,3,'third_moniker','third_name','true','mogilev');
INSERT INTO t_client(id_client,id_dept,moniker,name,is_vip,town) VALUES(4,4,'fourth_moniker','fourth_name','false','brEST');
INSERT INTO t_client(id_client,id_dept,moniker,name,is_vip,town) VALUES(5,5,'fifth_moniker','fifth_name','true','gOMEL');

INSERT INTO t_sale(id_sale,num,dt,id_client,e_state,discount,summa,nds) VALUES (1,'1s1','12.jan.2005',1,12,10.2,150,10);
INSERT INTO t_sale(id_sale,num,dt,id_client,e_state,discount,summa,nds) VALUES (2,'1s2','12.jan.2004',1,12,10.3,1500,14);
INSERT INTO t_sale(id_sale,num,dt,id_client,e_state,discount,summa,nds) VALUES (3,'1s3','12.jan.2003',1,12,10.4,120,13);
INSERT INTO t_sale(id_sale,num,dt,id_client,e_state,discount,summa,nds) VALUES (4,'1s4','12.jan.2002',1,12,10.6,15015,12);
INSERT INTO t_sale(id_sale,num,dt,id_client,e_state,discount,summa,nds) VALUES (5,'1s5','12.jan.2001',1,12,10.8,15022,11);

INSERT INTO t_sale_str(id_sale_str,id_sale,num,id_ware,qty,price,discount,disc_price,summa,nds) VALUES (1,1,1,1,1,1000,30,700,1500.2,10);
INSERT INTO t_sale_str(id_sale_str,id_sale,num,id_ware,qty,price,discount,disc_price,summa,nds) VALUES (2,2,2,2,2,1100,25,825,1000,10);
INSERT INTO t_sale_str(id_sale_str,id_sale,num,id_ware,qty,price,discount,disc_price,summa,nds) VALUES (3,3,3,3,3,1200,20,960,1000,10);
INSERT INTO t_sale_str(id_sale_str,id_sale,num,id_ware,qty,price,discount,disc_price,summa,nds) VALUES (4,4,4,4,4,1300,15,1105,1000,10);
INSERT INTO t_sale_str(id_sale_str,id_sale,num,id_ware,qty,price,discount,disc_price,summa,nds) VALUES (5,5,5,5,5,1400,10,1350,1000,10);

COMMIT;

select * from t_supplier;
select * from t_supply;    
select * from t_ware;                   
select * from t_supply_str;
select * from t_ctl_node;
select * from t_model;
select * from t_price_model;
select * from t_rest;
select * from t_rest_hist;
select * from t_sale_rep;
select * from t_price_ware;
select * from t_dept;
select * from t_client;
select * from t_sale;
select * from t_sale_str;
