select distinct funcao from empregados; 

SELECT DISTINCT funcao, num_departamento 'Profissão e departamento'
FROM empregados
ORDER BY num_departamento, funcao;

SELECT num_departamento, nome, funcao, salario
FROM empregados
ORDER BY num_departamento, salario DESC, nome;

SELECT DISTINCT nome, funcao, salario*14 + IFNULL(premios,0) 'Ganho Anual'
FROM empregados
ORDER BY 2 ASC, 'Ganho Anual' DESC, nome ASC;

SELECT * FROM empregados
WHERE num_departamento = 10;

SELECT * 
FROM empregados 
WHERE num_departamento = 10 
AND funcao != 'Encarregado';

SELECT * FROM empregados
WHERE num_departamento = 10 
AND (NOT funcao = 'Encarregado'
OR num_departamento = 20);

SELECT nome, salario
FROM empregados
WHERE salario BETWEEN 1000 AND 3000;

SELECT nome, numero
FROM empregados
WHERE nome IN ('Jorge Sampaio', 'Augusto Reis', 'Duarte Guedes');

SELECT nome, numero
FROM empregados
WHERE nome LIKE 'A%' 
OR nome LIKE '_O%';

SELECT nome 'Sem Premios', premios
FROM empregados
WHERE premios IS NULL;

UPDATE empregados
SET salario = salario * 1.1
Where num_departamento = 10;

UPDATE empregados
SET salario = salario * 1.1
WHERE num_departamento = 20;

UPDATE empregados
SET salario = salario * 1.1
WHERE num_departamento = 30;

Select salario, funcao
from empregados
WHERE nome = 'Jorge Sampaio';

UPDATE empregados
SET salario = 100000, funcao = 'CHEFAO'
WHERE nome = 'Jorge Sampaio';

SELECT * FROM empregados;

DELETE FROM empregados;

DELETE FROM empregados
WHERE salario < 2000;

DELETE FROM empregados
WHERE salario < 5000
AND num_departamento = 20;

SELECT nome, funcao, salario FROM empregados /*EXERCÍCIO AVALIATIVO*/ 
ORDER BY salario DESC;

SELECT numero,nome FROM empregados
WHERE nome LIKE '%Silva%' ; 

SELECT nome, funcao, num_departamento FROM empregados
WHERE num_departamento IN(10,30);

SELECT nome, salario FROM empregados
WHERE num_departamento = 30 AND salario BETWEEN 1500 AND 4000;

SELECT nome, funcao, salario
FROM empregados
WHERE funcao = 'Analista' OR salario > 6000;

SELECT nome, premios
FROM empregados
WHERE premios IS NOT NULL;

SELECT COUNT(*) AS total_empregados
FROM empregados, departamentos
WHERE empregados.num_departamento = departamentos.num_departamento
AND departamentos.localizacao = 'Mealhada';

ALTER TABLE empregados
ADD email VARCHAR(100) NULL;

UPDATE empregados
SET salario = salario * 1.10
WHERE funcao = 'Vendedor';
SELECT nome, salario
FROM empregados 
WHERE funcao = 'Vendedor';

DELETE FROM empregados
WHERE numero = 1844;

SELECT * 
FROM empregados
WHERE numero = 1844;

INSERT INTO empregados(numero, nome, funcao, salario, premios, num_departamento, email)
VALUES(2001,'Lucas Almeida','Analista',4200.00, null,20, null);
SELECT * FROM empregados
WHERE numero = 2001;