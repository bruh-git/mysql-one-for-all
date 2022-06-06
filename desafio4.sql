SELECT 
u.usuario AS usuario,
IF(MAX(YEAR(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM 
SpotifyClone.usuarios AS u
INNER JOIN 
SpotifyClone.historico_de_reproducoes AS h
ON u.id = h.usuarios_id1
GROUP BY u.id
ORDER BY usuario;