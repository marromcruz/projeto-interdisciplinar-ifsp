SELECT 
	COUNT(DISTINCT movieID) AS QTD_Filmes
FROM
	movies_parquet
WHERE
	genres = '(no genres listed)' or genres is NULL