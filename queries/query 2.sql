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
   ,AVG(rating) as media_avaliacoes
FROM 
	consolidado
GROUP BY 
	title)

SELECT 
	*
FROM 
	avaliacoes
ORDER BY 
	media_avaliacoes DESC