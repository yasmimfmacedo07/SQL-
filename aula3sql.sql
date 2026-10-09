SELECT num_departamento, funcao, max(salario) Sal_Max, min(salario) Sal_Min, avg(salario) Sal_Med, count(*) Quantos, sum(salario) Somatorio 
FROM empregados
GROUP BY ndep, funcao 
ORDER BY 1, 3;

select * from empregados;

SELECT funcao, max(salario)
FROM empregados
WHERE funcao != 'Presidente'
GROUP BY funcao
ORDER BY max(salario) ASC; 

SELECT COUNT(*)	"Todos",
COUNT(salario)	"#Salario não null",
COUNT(premios)	"#Premios não null",
COUNT(salario*14+premios) "#Expressão não null"
FROM empregados;

SELECT count(ALL funcao) "Todos",
count(DISTINCT funcao) "Profissões",
count(funcao)"Igual a ALL"
FROM empregados;