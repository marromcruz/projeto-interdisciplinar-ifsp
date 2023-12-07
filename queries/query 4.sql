WITH 
consolidado as (
	SELECT 
		rt.userid, rt.rating, mv.title
	FROM 
		ratings_parquet rt
	JOIN 
		movies_parquet mv
	ON 
		rt.movieId = mv.movieId),
avaliacoes as (
SELECT 
	title
   ,COUNT(DISTINCT userId) as qtd_avaliacoes
FROM 
	consolidado
GROUP BY 
	title)

SELECT 
	*
FROM 
	avaliacoes
ORDER BY 
	qtd_avaliacoes ASC