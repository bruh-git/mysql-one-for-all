SELECT 
c.cancoes AS cancao,
COUNT(h.data_reproducao) AS reproducoes
FROM
SpotifyClone.cancoes AS c
INNER JOIN 
SpotifyClone.historico_de_reproducoes AS h
ON c.id = h.cancoes_id
GROUP BY c.id
HAVING reproducoes >=2
ORDER BY cancao
LIMIT 2;