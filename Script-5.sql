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





