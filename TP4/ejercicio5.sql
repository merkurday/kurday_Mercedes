select * from empleados;
select * from departamentos;
-- a) Lista el apellido de todos los empleados.
select apellido from empleados;
-- b) Lista el apellido de los empleados eliminando los apellidos que estén repetidos.
select distinct apellido from empleados;
-- c) Lista todas las columnas de la tabla empleados.
select * from empleados;
-- d) Lista el nombre y apellido de todos los empleados.
select nombre, apellido from empleados;
-- e) Lista el cuit/cuil de los departamentos de los empleados que aparecen en la tabla empleados.
select cuil_cuit from empleados;
-- f) Lista el nombre y apellido de los empleados en una única columna.
select concat(nombre,",",apellido) as Nom_Ap from empleados;
-- g) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en mayúscula.
select upper(concat(nombre,",",apellido)) as Nom_Ap from empleados;
-- h) Lista el nombre y apellido de los empleados en una única columna, convirtiendo todos los caracteres en minúscula.
select lower(concat(nombre,",",apellido)) as Nom_Ap from empleados;
-- i) Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.
select nombre,presupuesto from departamentos order by presupuesto;
-- j) Lista el nombre de todos los departamentos ordenados de forma ascendente.
select nombre from departamentos order by nombre ASC;
-- k) Lista el nombre de todos los departamentos ordenados de forma descendente.
select nombre from departamentos order by nombre DESC;
-- l) Lista el apellido y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar su apellido y luego su nombre.
select concat(apellido,",",nombre) as Ape_Nom from empleados order by apellido,nombre;
-- m) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos order by presupuesto desc limit 3;
-- n) Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos order by presupuesto asc limit 3;
-- o) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a $150000.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos where presupuesto >= 150000;
-- p) Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos where presupuesto >= 100000 and presupuesto <= 200000;
-- q) Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre $100000 y $200000. Sin utilizar el operador BETWEEN.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos where presupuesto < 100000 or presupuesto > 200000;
-- r) Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre $100000 y $200000. Utilizando el operador BETWEEN.
select concat(nombre,",",presupuesto) as Nom_Pre from departamentos where presupuesto between 100000 and 200000;
-- s) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.
select empleados.nombre, departamentos.nombre, departamentos.presupuesto,departamentos.estado from empleados inner join departamentos on empleados.emplaedo_id = departamentos.departamento_id;
-- t) Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por apellido y el nombre de los empleados.
select empleados.nombre,empleados.apellido, departamentos.nombre, departamentos.presupuesto,departamentos.estado from empleados inner join departamentos on empleados.emplaedo_id = departamentos.departamento_id order by departamentos.nombre,empleados.apellido,empleados.nombre;
-- u) Devuelve un listado con el código y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.
select departamento_id, nombre from departamentos where departamento_id in (select departamento from empleados group by departamento having count(*) >= 1);
-- v) Devuelve el nombre del departamento donde trabaja el empleado que tiene el cuit 27-38382980-3.
select nombre from departamentos where departamento_id in(select cuil_cuit from empleados group by departamentos.nombre having cuil_cuit = 27-38382980-3);
-- w) Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz.
select departamentos.nombre, empleados.nombre from departamentos inner join empleados on departamentos.departamento_id = empleados.emplaedo_id where empleados.nombre like "Pepe";
-- x) Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
select empleados.* from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id and departamentos.nombre like('I+D') order by empleados.apellido;
-- y) Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
select empleados.* from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id where departamentos.nombre in ("I+D","Contabilidad","Sistemas") order by empleados.apellido;
-- z) Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre $100000 y $200000.
select empleados.* from empleados inner join departamentos on empleados.departamento = departamentos.departamento_id where departamentos.presupuesto between 100000 and 200000 order by empleados.apellido;
