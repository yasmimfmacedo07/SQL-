SELECT nome, funcao, salario FROM empregados
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