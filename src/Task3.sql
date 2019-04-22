update t_ctl_node set code = 1322 where id_ctl_node = 1;
update t_ctl_node set code = 1323 where id_ctl_node = 2;
update t_ctl_node set code = 1324 where id_ctl_node = 3;
update t_ctl_node set code = 1325 where id_ctl_node = 4;
update t_ctl_node set code = 1326 where id_ctl_node = 5;

update t_ctl_node set tree_code = '1322b' where id_ctl_node = 1;
update t_ctl_node set tree_code = '1323b' where id_ctl_node = 2;
update t_ctl_node set tree_code = '1324b' where id_ctl_node = 3;
update t_ctl_node set tree_code = '1325b' where id_ctl_node = 4;
update t_ctl_node set tree_code = '1326b' where id_ctl_node = 5;

update t_ctl_node set name = 'Parent' where id_ctl_node =1;
update t_ctl_node set name = 'first_child' where id_ctl_node =2;
update t_ctl_node set name = 'second_child' where id_ctl_node =3;
update t_ctl_node set name = 'third_child' where id_ctl_node =4;
update t_ctl_node set name = 'fourth_child' where id_ctl_node =5;

UPDATE t_ctl_node set id_parent = 1 where id_ctl_node = 2;
UPDATE t_ctl_node set id_parent = 2 where id_ctl_node = 3;
UPDATE t_ctl_node set id_parent = 3 where id_ctl_node = 4;
UPDATE t_ctl_node set id_parent = 4 where id_ctl_node = 5;

COMMIT;

/*Tree output*/
 SELECT lpad(' ', 5*level) || NAME AS Tree FROM t_ctl_node START WITH id_parent IS NULL CONNECT BY PRIOR id_ctl_node = id_parent ORDER SIBLINGS BY NAME;
 
/*uncomment if you want to see the output as a string like a cmd path*/
--SELECT SYS_CONNECT_BY_PATH(name,'/') as Path FROM t_ctl_node WHERE id_ctl_node=3 START WITH id_parent IS NULL CONNECT BY PRIOR id_ctl_node = id_parent;

