CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER,
    cidade TEXT,
    salario REAL
);

INSERT INTO clientes
(id, nome, idade, cidade, salario)
VALUES
(1, 'João', 32, 'Goiânia', 3500);


SELECT * FROM clientes;

INSERT INTO clientes
(id, nome, idade, cidade, salario)
VALUES
(2, 'Maria', 28, 'Brasília', 4200),
(3, 'Pedro', 25, 'Anápolis', 3800),
(4, 'Ana', 29, 'Goiânia', 3100),
(5, 'Carlos', 41, 'São Paulo', 6500);

SELECT * FROM clientes;

SELECT nome, cidade FROM clientes;

SELECT * FROM clientes;

SELECT nome FROM clientes;

SELECT nome, salario
FROM clientes;

SELECT nome, salario, idade
FROM clientes;

SELECT *
FROM clientes
WHERE cidade = "Goiânia";

SELECT *
FROM clientes
WHERE idade > 30;

SELECT *
FROM clientes
WHERE salario > 4000;

SELECT *
FROM clientes
WHERE cidade = 'Goiânia'
AND salario > 3000;

SELECT *
FROM clientes
WHERE cidade = 'Goiânia'
OR cidade = 'Brasília';

-- Clientes maiores de 30 anos
SELECT *
FROM clientes
WHERE idade > 30;

-- Clientes de Goiânia
SELECT *
FROM clientes
WHERE cidade = "Goiânia";

-- Clientes com salário acima de 4.000
SELECT *
FROM clientes
WHERE salario > 4000;

-- Clientes de Goiânia que ganham mais de 3.000
SELECT *
FROM clientes
WHERE cidade = "Goiânia" AND "salário" > 3000;

-- clientes do menor para o maior salário.
SELECT * FROM clientes
ORDER BY salario ASC;

-- Ordem decrescente
SELECT * FROM clientes
ORDER BY salario DESC;

-- Ordenando por idade
SELECT * FROM clientes
ORDER BY idade DESC;

-- e queremos somente os 3 maiores salários.
SELECT * FROM clientes
ORDER BY salario DESC LIMIT 3;

UPDATE clientes
SET salario = 4000
WHERE id = 1;

