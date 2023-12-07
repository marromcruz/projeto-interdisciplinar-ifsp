WITH 
consolidado as (
	SELECT 
		rt.userid, rt.rating, mv.title, mv.movieiD
	FROM 
		ratings_parquet rt
	JOIN 
		movies_parquet mv
	ON 
		rt.movieId = mv.movieId),
avaliacoes as (
SELECT 
	userId
   ,COUNT(DISTINCT movieID) as qtd_avaliacoes
FROM 
	consolidado
GROUP BY 
	userId)

SELECT 
	*
FROM 
	avaliacoes
ORDER BY 
	qtd_avaliacoes DESC