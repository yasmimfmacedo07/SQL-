/*WHERE*/
SELECT num_departamento, nome, numero, salario*14 AS premio
FROM empregados
WHERE salario + premios >= 1800;

/*AND/OR*/
SELECT *
FROM empregados
WHERE num_departamento=20 AND salario >1200;

/*GROUP BY*/
SELECT num_departamento, MIN(SALARIO)
FROM empregados
GROUP BY num_departamento;

/*COUNT*/
SELECT COUNT(*)
FROM empregados;

/*HAVING*/
SELECT num_departamento, AVG(SALARIO)
FROM empregados
GROUP BY num_departamento
HAVING COUNT(*) >2;

/*LIKE*/
SELECT *
FROM empregados
WHERE nome LIKE "R%";

/*IN*/
SELECT *
FROM empregados
WHERE numero IN (10,15,20);

/*BETWEEN*/
SELECT *
FROM empregados
WHERE salario between 1100 AND 2700;

/*NULL*/ 
SELECT nome, salario
FROM empregados
WHERE salario IS NOT NULL;