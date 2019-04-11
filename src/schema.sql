DROP TABLE "t_price_ware";
DROP TABLE "t_sale_rep";
DROP TABLE "t_rest_hist";
DROP TABLE "t_rest";
DROP TABLE "t_sale_str";
DROP TABLE "t_sale";
DROP TABLE "t_client";
DROP TABLE "t_dept";
DROP TABLE "t_price_model";
DROP TABLE "t_model";
DROP TABLE "t_ctl_node";
DROP TABLE "t_supply_str";
DROP TABLE "t_supply";
DROP TABLE "t_supplier";
DROP TABLE "t_ware";


CREATE TABLE "t_supplier"
(
"id_supplier" NUMBER ,
"moniker" NVARCHAR2(50) UNIQUE,
"name" NVARCHAR2(50),
CONSTRAINT "t_supplier_pk" PRIMARY KEY ("id_supplier")
);


CREATE TABLE "t_supply"
(
"id_supply" NUMBER ,
"code" NVARCHAR2(30),
"num" NVARCHAR2(30),
"dt" DATE,
"id_supplier" NUMBER,
"e_state" NUMERIC, -- FIXME
"summa" NUMBER(14,2),
"nds" NUMBER(14,2),
CONSTRAINT "t_supply_pk" PRIMARY KEY ("id_supply")
);

ALTER TABLE "t_supply" ADD CONSTRAINT "t_supply_fk" FOREIGN KEY ("id_supplier") REFERENCES "t_supplier"("id_supplier");


CREATE TABLE "t_ctl_node"
( 
"id_ctl_node" NUMBER, 
"id_parent" NUMBER, 
"code" NVARCHAR2(12),
"tree_code" NVARCHAR2(240),
"name" NUMBER,
CONSTRAINTS "t_ctl_node_pk" PRIMARY KEY("id_ctl_node")
 );
 
--ALTER TABLE "t_ctl_node" ADD CONSTRAINT "t_ctl_node_fk" FOREIGN KEY ("name") REFERENCES "t_ctl_node"("id_parent"); 


 CREATE TABLE "t_model"
 (
 "id_model" NUMBER,
 "moniker" NVARCHAR2(12) UNIQUE,
 "name" NVARCHAR2(50),
 "id_node" NUMBER,
 "grp" NVARCHAR2(20),
 "subgrp" NVARCHAR2(30),
 "label" NVARCHAR2 (15),
 "price" NUMBER(8,2),
 CONSTRAINTS "t_model_pk" PRIMARY KEY ("id_model")
 );
 
 ALTER TABLE "t_model" ADD CONSTRAINT "t_model_fk" FOREIGN KEY ("id_node") REFERENCES "t_ctl_node"("id_ctl_node");


CREATE TABLE "t_price_model"
(
"id_model" NUMBER,
"dt_beg" DATE,
"dt_end" DATE,
"price" NUMBER
);

ALTER TABLE "t_price_model" ADD CONSTRAINT "t_price_model_fk" FOREIGN KEY ("id_model") REFERENCES "t_model"("id_model");


CREATE TABLE "t_ware"
(
"id_ware" NUMBER PRIMARY KEY,
"moniker" NVARCHAR2(50),
"name" NVARCHAR2(50),
"id_model" NUMBER,
"sz_orig" NVARCHAR2(50),
"sz_rus" NVARCHAR2 (50),
"price" NUMBER(8,2)
);


CREATE TABLE "t_rest"
(
"id_ware" NUMBER,
"qty" INTEGER
);

ALTER TABLE "t_rest" ADD CONSTRAINT "t_rest_fk" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware");


CREATE TABLE "t_rest_hist"
(
"id_ware" NUMBER,
"dt_beg" DATE,
"dt_end" DATE,
"qty" INTEGER
);

ALTER TABLE "t_rest_hist" ADD CONSTRAINT "t_rest_hist_fk" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware");


CREATE TABLE "t_supply_str"
(
"id_supply_str" NUMBER,
"id_supply" NUMBER,
"num" INTEGER,
"id_ware" NUMBER,
"qty" INTEGER,
"price" NUMBER(8,2),
"summa" NUMBER(14,2),
"nds" NUMBER(14,2),
CONSTRAINT "t_supply_str_pk" PRIMARY KEY ("id_supply_str")
);

ALTER TABLE "t_supply_str" ADD CONSTRAINT "t_supply_str_fk" FOREIGN KEY ("id_supply") REFERENCES "t_supply"("id_supply");
ALTER TABLE "t_supply_str" ADD CONSTRAINT "t_supply_str_fk_ware" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware");


CREATE TABLE "t_sale_rep"
(
"id_ware" NUMBER,
"month" DATE,
"inp_qty" INTEGER,
"inp_sum" INTEGER,
"supply_qty" INTEGER,
"supply_sum" INTEGER,
"sale_sum" INTEGER,
"sales_sum" NUMBER,
"out_sum" INTEGER,
"out_sums" NUMBER
);

ALTER TABLE "t_sale_rep" ADD CONSTRAINT "t_sale_rep_fk" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware"); 


CREATE TABLE "t_price_ware"
(
"id_ware" NUMBER,
"dt_beg" DATE,
"dt_end" DATE,
"price" NUMBER
);

ALTER TABLE "t_price_ware" ADD CONSTRAINT "t_price_ware_fk" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware");


CREATE TABLE "t_dept"
(
"id_dept" NUMBER,
"name" NVARCHAR2(50),
"id_parent" NUMBER, --allow nulls
CONSTRAINTS "t_dept_pk" PRIMARY KEY("id_dept")
);

ALTER TABLE "t_dept" ADD CONSTRAINT "id_parent_fk" FOREIGN KEY ("id_parent") REFERENCES "t_dept"("id_dept");


CREATE TABLE "t_client"
(
"id_client" NUMBER,
"id_dept" NUMBER,
"moniker" NVARCHAR2(50),
"name" NVARCHAR2(50),
"is_vip" NVARCHAR2(5),
"town" NVARCHAR2(50),
CONSTRAINTS "t_client_pk" PRIMARY KEY("id_client")
);

ALTER TABLE "t_client" ADD CONSTRAINT " t_client_fk" FOREIGN KEY ("id_dept") REFERENCES "t_dept"("id_dept");


CREATE TABLE "t_sale"
(
"id_sale" NUMBER,
"num" NVARCHAR2(30),
"dt" DATE,
"id_client" NUMBER,
"e_state" NUMBER,
"discount"  NUMBER(8,6),
"summa" NUMBER (14,2),
"nds" NUMBER (14,2),
CONSTRAINTS "t_sale_pk" PRIMARY KEY ("id_sale")
);

ALTER TABLE "t_sale" ADD CONSTRAINT "id_client_fk" FOREIGN KEY("id_client") REFERENCES "t_client"("id_client");

CREATE TABLE "t_sale_str"
(
"id_sale_str" NUMBER,
"id_sale" NUMBER,
"num" INTEGER,
"id_ware" NUMBER,
"qty" INTEGER,
"price" NUMBER(8,2),
"disc_price" NUMBER (8,6),
"summa" NUMBER (14,2),
"nds" NUMBER(14,2),
CONSTRAINTS "t_sale_str_pk" PRIMARY KEY ("id_sale_str")
);

ALTER TABLE "t_sale_str" ADD CONSTRAINT "t_sale_str_fk" FOREIGN KEY("id_sale") REFERENCES "t_sale"("id_sale");
ALTER TABLE "t_sale_str" ADD CONSTRAINT "t_sale_str_fk_ware" FOREIGN KEY ("id_ware") REFERENCES "t_ware"("id_ware");


