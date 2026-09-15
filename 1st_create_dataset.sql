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

DELETE FROM clientes
WHERE id = 5;

SELECT *
FROM clientes
WHERE id = 5;

-- Como mostrar todos os registros da tabela clientes?
SELECT * FROM clientes;

-- Como selecionar somente nome e salário?
SELECT nome, salario FROM clientes;

-- Como encontrar clientes com salário acima de R$ 5.000?
SELECT * FROM clientes WHERE salario > 5000; 

-- Como ordenar os clientes do maior para o menor salário?
SELECT * FROM clientes
ORDER BY salario DESC;
-- LIMIT 1;

-- Como alterar o salário do cliente cujo id é 2 para R$ 5.000?
UPDATE clientes
SET salario = 5000
WHERE id = 2;

SELECT * FROM clientes;

-- Exercicio:
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco REAL,
    estoque INTEGER
);

INSERT INTO produtos
(id, nome, categoria, preco, estoque)
VALUES
(1, 'Notebook', 'Eletrico', 5000, 25),
(2, 'Mouse', 'Eletrico', 25, 40),
(3, 'Teclado', 'Eletrico', 30, 30),
(4, 'Monitor', 'Eletrico', 700, 12),
(5, 'Impressora', 'Eletrico', 350,10),
(6, 'Headset', 'Eletrico', 100,40);

-- Mostrar todos os produtos.
SELECT * FROM produtos;

-- Mostrar somente nome e preço:
SELECT nome, preco FROM produtos;

-- Encontrar produtos com preço superior a R$ 1.000.
SELECT * FROM produtos WHERE preco > 1000;

-- Encontrar produtos com estoque menor que 10.
SELECT * FROM produtos
WHERE estoque < 10;

-- Ordenar produtos do mais caro para o mais barato.
SELECT * FROM produtos ORDER BY preco DESC;


