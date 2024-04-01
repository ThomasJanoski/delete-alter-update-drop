CREATE TABLE Animais (
	ID INTEGER PRIMARY KEY AUTOINCREMENT,
  	Nome VARCHAR(50) NOT NULL,
  	Nasc DATE NOT NULL,
  	Peso DECIMAL(10, 2),
  	Cor VARCHAR(50)
);

INSERT INTO Animais (Nome, Nasc, Peso, Cor) VALUES 
("Ágata",         DATE("2015-04-09"), 13.9, "branco"),
("Félix",         DATE("2016-06-06"), 14.3, "preto"),
("Tom",           DATE("2013-02-08"), 11.2, "azul"),
("Garfield",      DATE("2015-07-06"), 17.1, "laranja"),
("Frajola",       DATE("2013-08-01"), 13.7, "preto"),
("Manda-chuva",   DATE("2012-02-03"), 12.3, "amarelo"),
("Snowball",      DATE("2014-04-06"), 13.2, "preto"),
("Ágata",         DATE("2015-08-03"), 11.9, "azul"),
("Gato de Botas", DATE("2012-12-10"), 11.6, "amarelo"),
("Kitty",         DATE("2020-04-06"), 11.6, "amarelo"),
("Milu",          DATE("2013-02-04"), 17.9, "branco"),
("Pluto",         DATE("2012-01-03"), 12.3, "amarelo"),
("Pateta",        DATE("2015-05-01"), 17.7, "preto"),
("Snoopy",        DATE("2013-07-02"), 18.2, "branco"),
("Rex",           DATE("2019-11-03"), 19.7, "beje"),
("Bidu",          DATE("2012-09-08"), 12.4, "azul"),
("Dum Dum",       DATE("2015-04-06"), 11.2, "laranja"),
("Muttley",       DATE("2011-02-03"), 14.3, "laranja"),
("Scooby",        DATE("2012-01-02"), 19.9, "marrom"),
("Rufus",         DATE("2014-04-05"), 19.7, "branco"),
("Rex",           DATE("2015-08-19"), 19.7, "branco");

ALTER TABLE Animais ADD "Especie"; -- Adicionar campo Especie

UPDATE Animais SET Nome = "Goofy" WHERE Nome = "Pateta"; -- Trocar nome Goofy por Pateta
UPDATE Animais SET Peso = 10 WHERE Nome = "Garfield"; -- Trocar peso de Garfield para 10
UPDATE Animais SET Cor = "laranja" WHERE Especie = "gato"; -- Trocar cor dos gatos para Laranja
ALTER TABLE Animais ADD "Altura"; -- Adicionar campo Altura
ALTER TABLE Animais ADD "Observacao"; -- Adicionar campo Observacao
DELETE FROM Animais WHERE Peso > 200; -- Deletar animais com peso > 200
DELETE FROM Animais WHERE Nome LIKE "C%"; -- Deletar animais com nome começando com "C"
ALTER TABLE Animais DROP COLUMN "Cor"; -- Deletar coluna "Cor"
ALTER TABLE table_name MODIFY COLUMN Nome VARCHAR(80); -- Modificar tipo "Nome" para VARCHAR(80) (SQLITE não funciona)
DELETE FROM Animais WHERE Especie = "gatos" or Especie = "cachorros";
ALTER TABLE Animais DROP COLUMN "Cor"; -- Deletar coluna "Cor"
ALTER TABLE Animais DROP COLUMN "Nasc"; -- Deletar coluna "Nasc"
DELETE FROM Animais; -- Deletar todos os animais
ALTER TABLE Animais DROP COLUMN "Especie"; -- Deletar coluna "Especie"