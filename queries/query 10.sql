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
	title),

media_avaliacoes as (
SELECT 
	title
   ,AVG(rating) as media_avaliacoes
FROM 
	consolidado
GROUP BY 
	title)

SELECT 
	av.title
   ,av.qtd_avaliacoes
   ,ma.media_avaliacoes
FROM 
	avaliacoes av
INNER JOIN 
	media_avaliacoes ma
ON 
	av.title = ma.title
WHERE 
	qtd_avaliacoes > 100
ORDER BY 
	media_avaliacoes DESC