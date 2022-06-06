SELECT 
a.artistas AS artista,
al.albuns AS album,
COUNT(s.usuarios_id1) AS seguidores
FROM 
SpotifyClone.artistas AS a
INNER JOIN
SpotifyClone.albuns AS al
ON a.id = al.artistas_id
INNER JOIN 
SpotifyClone.seguindo_artistas AS s
ON s.artistas_id = a.id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album
;