3.1-
SELECT * FROM almacenes;

3.2-
SELECT * from cajas WHERE valor>=150;

3.3-
SELECT DISTINCT contenido from cajas;

3.4-
SELECT AVG(valor) from cajas;

3.5-
SELECT AVG(valor) from cajas c JOIN almacenes a ON c.ALMACEN = a.CODIGO GROUP BY a.CODIGO;

3.6-
SELECT a.CODIGO FROM almacenes a JOIN cajas c ON a.CODIGO = c.ALMACEN GROUP BY a.CODIGO HAVING AVG(c.VALOR)>=150;

3.7-
SELECT c.NUMREFERENCIA, a.LUGAR FROM cajas c JOIN almacenes a ON a.codigo=c.almacen;

3.8-
SELECT c.ALMACEN, a.LUGAR FROM cajas c JOIN almacenes a ON a.codigo=c.almacen;

3.9-
SELECT a.CODIGO FROM cajas c JOIN almacenes a ON a.codigo = c.almacen GROUP BY a.codigo HAVING count(*) > (SELECT CAPACIDAD FROM almacenes WHERE CODIGO = a.CODIGO);

3.10-
SELECT c.NUMREFERENCIA FROM almacenes a JOIN cajas c ON a.CODIGO = c.ALMACEN WHERE a.LUGAR = 'Bilbao';

3.11-
INSERT INTO almacenes VALUES (6, 'Barcelona', 3);
SELECT * FROM almacenes;

3.12-
INSERT INTO cajas VALUES ('H5RT', 'Papel', 200, 2);
SELECT * FROM cajas;

3.13-
UPDATE cajas SET VALOR = VALOR * 0.85;

3.14-
UPDATE cajas c SET c.VALOR = c.VALOR * 0.8 WHERE c.VALOR > (Select avg(c2.valor) from (Select * from cajas) AS c2);

3.15-
DELETE FROM cajas WHERE valor<100;

3.16-
DELETE FROM cajas WHERE ALMACEN IN (SELECT a.CODIGO FROM (SELECT * FROM cajas) AS c JOIN almacenes a ON a.codigo = c.almacen GROUP BY a.codigo HAVING count(*) > (SELECT CAPACIDAD FROM almacenes WHERE CODIGO = a.CODIGO));