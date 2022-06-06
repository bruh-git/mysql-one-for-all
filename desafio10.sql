SELECT 
c.cancoes AS nome,
COUNT(h.data_reproducao) AS reproducoes
FROM
SpotifyClone.cancoes AS c
INNER JOIN 
SpotifyClone.historico_de_reproducoes AS h
ON c.id = h.cancoes_id
INNER JOIN 
SpotifyClone.usuarios AS u
ON h.usuarios_id1 = u.id
INNER JOIN SpotifyClone.planos as p
ON u.planos_id = p.id
WHERE p.id = 1
OR p.id = 4
GROUP BY nome
ORDER BY nome;