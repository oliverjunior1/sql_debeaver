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

