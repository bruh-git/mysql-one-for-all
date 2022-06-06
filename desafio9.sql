SELECT 
COUNT(h.data_reproducao) AS quantidade_musicas_no_historico
FROM 
SpotifyClone.historico_de_reproducoes AS h
INNER JOIN
SpotifyClone.usuarios AS u
ON h.usuarios_id1 = u.id
WHERE h.usuarios_id1 = 3;