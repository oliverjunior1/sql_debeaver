SELECT * FROM Album a;
SELECT COUNT(*) FROM Album a;
SELECT COUNT(*) AS Records FROM Album a;
SELECT COUNT(*) FROM Album a WHERE Column1 is NULL;
SELECT AlbumId, Title FROM Album a WHERE ArtistId IS NULL;

SELECT * FROM Artist a;

-- caracterizando os registros dos artistas
SELECT a2.ArtistId, a2.Name, COUNT(*) AS Records FROM Album a INNER JOIN Artist a2 GROUP BY 1;
SELECT a2.ArtistId, a2.Name, COUNT(*) AS Records FROM Album a INNER JOIN Artist a2 GROUP BY 1 ORDER BY Records LIMIT 3;

SELECT * FROM Customer c LIMIT 10;
SELECT COUNT(*) FROM Customer c2;
SELECT FirstName, Address FROM Customer c;

-- Quantos clientes moram na Broadway?
SELECT COUNT(*) FROM Customer c WHERE Address LIKE '%Broadway%';
SELECT State, COUNT(*) AS Total FROM Customer c GROUP BY 1 ORDER BY Total DESC LIMIT 10;

-- verificar company dos clientes
SELECT * FROM Customer c;
SELECT COUNT(*) FROM Customer c WHERE Company IS NOT NULL;

SELECT FirstName FROM Customer c WHERE Company IS NULL;

-- Quais dos clientes são colaboradores?
SELECT * FROM Employee e;

SELECT c.FirstName, c.LastName FROM Customer c 
	WHERE Company IS NULL AND c.FirstName IN 
		(SELECT e.FirstName FROM Employee e);

SELECT c.FirstName FROM Customer c INNER JOIN Employee e WHERE c.FirstName = c.FirstName;

SELECT * FROM Invoice i LIMIT 10;



