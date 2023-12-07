WITH 
consolidado as (
	SELECT 
		mv.title, mv.movieiD, tg.tag
	FROM 
		movies_parquet mv
	JOIN 
		tags_parquet tg
	ON 
		mv.movieId = tg.movieId),
tags as (
SELECT 
	tag
   ,COUNT(DISTINCT movieID) as qtd_filmes
FROM 
	consolidado
GROUP BY 
	tag)
SELECT 
	*
FROM 
	tags
ORDER BY 
	qtd_filmes DESC