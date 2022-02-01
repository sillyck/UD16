USE actividades;
SELECT NOMBRE FROM articulos;
SELECT NOMBRE, PRECIO FROM articulos;
SELECT NOMBRE, PRECIO FROM articulos where PRECIO <= 200;
SELECT * FROM articulos where PRECIO >= 60 and PRECIO <= 120;
SELECT NOMBRE, PRECIO * 166.386 AS "PESETAS" FROM articulos;
SELECT avg(PRECIO) AS "PRECIO MEDIO" FROM articulos;
SELECT avg(PRECIO) AS "PRECIO MEDIO FABRICANTE 2" FROM articulos where FABRICANTE = 2;
SELECT count(*) AS "NUMERO ARTICULOS PRECIO 180€ O MAS" FROM articulos where PRECIO >= 180;
SELECT NOMBRE, PRECIO FROM articulos where PRECIO >= 180 order by PRECIO desc, NOMBRE;
SELECT * FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO;
SELECT a.NOMBRE, PRECIO, f.NOMBRE FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO;
SELECT f.CODIGO, avg(PRECIO) AS "PRECIO MEDIO POR FABRICANTE" FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO group by f.CODIGO;
SELECT f.NOMBRE, avg(PRECIO) AS "PRECIO MEDIO POR FABRICANTE" FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO group by f.CODIGO;
SELECT f.NOMBRE FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO group by f.CODIGO having avg(PRECIO) >= 150;
SELECT NOMBRE, PRECIO FROM articulos order by PRECIO, NOMBRE limit 1;
SELECT f.NOMBRE, a.NOMBRE, PRECIO FROM articulos a join fabricantes f on a.FABRICANTE = f.CODIGO where PRECIO = (SELECT max(PRECIO) FROM articulos a2 where a2.FABRICANTE = f.CODIGO);
INSERT INTO articulos VALUES (11, "Altavoces", 70, 2);
UPDATE articulos set NOMBRE = "Impresora Laser" where CODIGO = 8;
SET SQL_SAFE_UPDATES = 0;
UPDATE articulos set PRECIO = PRECIO*0.9;
UPDATE articulos set PRECIO = PRECIO-10 where precio >= 120;