create database Dia5;
use Dia5;

CREATE TABLE departamento (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
presupuesto DOUBLE UNSIGNED NOT NULL,
gastos DOUBLE UNSIGNED NOT NULL
); 


CREATE TABLE empleado (
id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nif VARCHAR(9) NOT NULL UNIQUE,
nombre VARCHAR(100) NOT NULL,
apellido1 VARCHAR(100) NOT NULL,
apellido2 VARCHAR(100),
id_departamento INT UNSIGNED,
FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

INSERT INTO departamento VALUES(1, 'Desarrollo', 120000, 6000);
INSERT INTO departamento VALUES(2, 'Sistemas', 150000, 21000);
INSERT INTO departamento VALUES(3, 'Recursos Humanos', 280000, 25000);
INSERT INTO departamento VALUES(4, 'Contabilidad', 110000, 3000);
INSERT INTO departamento VALUES(5, 'I+D', 375000, 380000);
INSERT INTO departamento VALUES(6, 'Proyectos', 0, 0);
INSERT INTO departamento VALUES(7, 'Publicidad', 0, 1000);

INSERT INTO empleado VALUES(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1);
INSERT INTO empleado VALUES(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2);
INSERT INTO empleado VALUES(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3);
INSERT INTO empleado VALUES(4, '77705545E', 'Adrián', 'Suárez', NULL, 4);
INSERT INTO empleado VALUES(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5);
INSERT INTO empleado VALUES(6, '38382980M', 'María', 'Santana', 'Moreno', 1);
INSERT INTO empleado VALUES(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2);
INSERT INTO empleado VALUES(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3);
INSERT INTO empleado VALUES(9, '56399183D', 'Juan', 'Gómez', 'López', 2);
INSERT INTO empleado VALUES(10, '46384486H', 'Diego','Flores', 'Salas', 5);
INSERT INTO empleado VALUES(11, '67389283A', 'Marta','Herrera', 'Gil', 1);
INSERT INTO empleado VALUES(12, '41234836R', 'Irene','Salas', 'Flores', NULL);
INSERT INTO empleado VALUES(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);

-- Lista el primer apellido de todos los empleados
select apellido1 from empleado;

-- Lista el primer apellido de los empleados eliminando los apellidos que esten repetidos
select distinct apellido1 from empleado;

-- Lista todas los columnas de la tabla empleados
select * from empleado;

-- Lista el identificador de los departamentos de los empleados que aparecen en la tabla empleados
select id_departamento from empleado;

-- Listar el identificador de los departamentos de los empleados que aparecen en la tabla empleado, eliminando los identificadores que aparecen repetidos
select distinct id_departamento from empleado;

-- lista el nombre y apellidos de los empleados en una unica columna
select concat(nombre, apellido1 , coalesce(`apellido2`,"")) as nombre_completo from empleado;

-- Lista el nombre y apellidos de los empleados en una unica columna, convirtiendo todos los caracteres en mayuscula
select upper(concat(nombre, apellido1 , coalesce(`apellido2`,""))) as nombre_completo from empleado;

-- Lista el nombre y apellidos de los empleados en una unica columna, convirtiendo todos los caracteres en minuscula
select lower(concat(nombre, apellido1 , coalesce(`apellido2`,""))) as nombre_completo from empleado;

-- Lista el identificador de los empleados junto al nif, pero el nif debera aparecer en dos columnas, una mostrara unicamente los difgitos del nif y la otra la letra
SELECT id,
    SUBSTRING(nif, 2, LENGTH(nif) - 2) AS numero,
    SUBSTRING(nif, -1) AS letra
FROM empleado;
select * from empleado;
-- Lista el nombre de cada departamento y el valor del presupuesto actual del que dispone. Para calcular este dato tendrá que restar al valor del
-- presupuesto inicial (columna presupuesto) los gastos que se han generado (columna gastos). Tenga en cuenta que en algunos casos pueden existir
-- valores negativos. Utilice un alias apropiado para la nueva columna columna que está calculando.

-- Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente.

-- Lista el nombre de todos los departamentos ordenados de forma ascendente.

-- Lista el nombre de todos los departamentos ordenados de forma descendente.

-- Lista los apellidos y el nombre de todos los empleados, ordenados de forma alfabética tendiendo en cuenta en primer lugar sus apellidos y luego su nombre.

-- Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto.

-- Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto.

-- Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen mayor gasto.

-- Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto.

-- Devuelve una lista con el nombr y el gasto, de los 2 departamentos que tienen menor gasto.

-- Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto.

-- Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto.

-- Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador BETWEEN.

-- Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador BETWEEN.

-- Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador BETWEEN.

-- Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador BETWEEN.

-- Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean mayores que el presupuesto del que disponen.

-- Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean menores que el presupuesto del que disponen.

-- Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean iguales al presupuesto del que disponen.

-- Lista todos los datos de los empleados cuyo segundo apellido sea NULL.

-- Lista todos los datos de los empleados cuyo segundo apellido no sea NULL.

-- Lista todos los datos de los empleados cuyo segundo apellido sea López.

-- Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. Sin utilizar el operador IN.

-- Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. utilizando el operador IN.

-- Lista los nombres, apellidos y nif de los empleados que trabajan en el departamento 3.

-- Lista los nombres, apellidos y nif de los empleados que trabajan en los departamentos 2, 4 o 5.

-- CONSULTAS MULTITABLAS (INTERNAS)
-- Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno.

-- Devuelve un listado con los empleados y los datos de los departamentos donde trabaja cada uno. Ordena el resultado, 
-- en primer lugar por el nombre del departamento (en orden alfabético) y en segundo lugar por los apellidos y el nombre de los empleados.

-- Devuelve un listado con el identificador y el nombre del departamento, solamente de aquellos departamentos que tienen empleados.

-- Devuelve un listado con el identificador, el nombre del departamento y el valor del presupuesto actual del que dispone, solamente de aquellos
-- departamentos que tienen empleados. El valor del presupuesto actual lo puede calcular restando al valor del presupuesto inicial 
-- (columna presupuesto) el valor de los gastos que ha generado (columna gastos).

-- Devuelve el nombre del departamento donde trabaja el empleado que tiene el nif 38382980M.

-- Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz Santana.

-- Devuelve un listado con los datos de los empleados que trabajan en el departamento de I+D. Ordena el resultado alfabéticamente.
 
 -- Devuelve un listado con los datos de los empleados que trabajan en el departamento de Sistemas, Contabilidad o I+D. Ordena el resultado alfabéticamente.
 
 -- Devuelve una lista con el nombre de los empleados que tienen los departamentos que no tienen un presupuesto entre 100000 y 200000
 
 -- Devuelve un listado con el nombre de los departamentos donde existe algún empleado cuyo segundo apellido sea NULL. 
 -- Tenga en cuenta que no debe mostrar nombres de departamentos que estén repetidos.
 
-- CONSULTAS MULTITABLAS (EXTERNAS)
 
-- Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. 
-- Este listado también debe incluir los empleados que no tienen ningún departamento asociado.

-- Devuelve un listado donde sólo aparezcan aquellos empleados que no tienen ningún departamento asociado.
 
-- Devuelve un listado donde sólo aparezcan aquellos departamentos que no tienen ningún empleado asociado.
 
-- Devuelve un listado con todos los empleados junto con los datos de los departamentos donde trabajan. El listado debe incluir los empleados que no
-- tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. Ordene el listado alfabéticamente por el nombre del departamento.

-- Devuelve un listado con los empleados que no tienen ningún departamento asociado y los departamentos que no tienen ningún empleado asociado. 
-- Ordene el listado alfabéticamente por el nombre del departamento.
 
 
 
 
 
 
 
 
 
 
 