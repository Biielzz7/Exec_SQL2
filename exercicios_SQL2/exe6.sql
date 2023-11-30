SELECT 
CONVERT(CHAR(10), hora_saida, 108) AS saida,
CONVERT(CHAR(10), hora_chegada, 108) AS chegada,
destino
FROM viagem


SELECT nome
FROM motorista
WHERE codigo IN
	(
	SELECT motorista
	FROM viagem
	WHERE destino = 'Sorocaba'
	)


SELECT descricao
FROM onibus
WHERE codigo IN
	(
	SELECT onibus
	FROM viagem
	WHERE destino LIKE 'Rio%'
	)

SELECT descricao, marca, ano
FROM onibus
WHERE placa IN
	(
	SELECT codigo_Motorista
	FROM viagem
	WHERE codigo_motorista IN
		(
		SELECT nome
	    FROM motorista
		WHERE nome LIKE 'Luiz%'
	)
)

	SELECT nome, naturialidade, 
	CASE WHEN(LEN(data_nasc) > 30)
	THEN
	data_nasc
	ELSE
	'NULL'
	END AS data_nasc
	FROM motorista
