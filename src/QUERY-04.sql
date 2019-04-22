SELECT lpad(' ',10*level) || name AS Tree FROM t_dept START WITH id_parent IS NULL CONNECT BY PRIOR id_dept = id_parent;
