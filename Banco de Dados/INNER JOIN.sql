
-- Comando para indicar qual banco de dados utilizar
USE gerenciamento_f1;

-- Comando para inserir na tabela pilotos equipes o nome do piloto e da respectiva equipe utilizando SELECT para trazer os dados das tabelas Pilotos e Equipes.
INSERT INTO Pilotos_Equipe (id_equipe, id_piloto)
	 VALUES (
		(SELECT id_equipe FROM Equipes WHERE nome = 'McLaren'),
		(SELECT id_piloto FROM Pilotos WHERE nome = 'Lando Norris')
);

--Utilizado o comando INNER JOIN para combinar os dados de diferentes tabelas
SELECT P.nome AS NomePiloto, E.nome AS NomeEquipe FROM 
	Pilotos_Equipe PE
	INNER JOIN Pilotos P ON PE.id_piloto = P.id_piloto
	INNER JOIN Equipes E ON P.id_equipe = E.ID_equipe;

