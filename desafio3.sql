SELECT 
u.usuario AS usuario,
COUNT(*) AS qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos)/60,2) AS total_minutos
FROM 
SpotifyClone.historico_de_reproducoes AS h
INNER JOIN 
SpotifyClone.usuarios AS u
ON u.id = h.usuarios_id1
INNER JOIN
SpotifyClone.cancoes AS c 
ON c.id = h.cancoes_id
GROUP BY u.usuario ORDER BY u.usuario;