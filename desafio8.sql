SELECT 
a.artistas AS artista,
al.albuns AS album
FROM 
SpotifyClone.artistas AS a
INNER JOIN
SpotifyClone.albuns AS al
ON a.id = al.artistas_id
WHERE a.id = 1;