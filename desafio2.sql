SELECT 
COUNT(DISTINCT cancoes.cancoes) AS cancoes, 
COUNT(DISTINCT artistas.artistas) AS artistas,
COUNT(DISTINCT albuns.albuns) AS albuns
FROM SpotifyClone.cancoes AS cancoes,SpotifyClone.artistas AS artistas, SpotifyClone.albuns AS albuns;