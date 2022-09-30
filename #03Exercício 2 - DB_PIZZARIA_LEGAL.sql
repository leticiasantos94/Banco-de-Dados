CREATE DATABASE DB_PIZZARIA_LEGAL;
USE DB_PIZZARIA_LEGAL;

CREATE TABLE TB_CATEGORIA(
ID BIGINT AUTO_INCREMENT,
TIPO VARCHAR(255),
BORDA VARCHAR(255),
PRIMARY KEY(ID));

CREATE TABLE TB_PIZZA(
ID BIGINT AUTO_INCREMENT,
NOME VARCHAR(255),
INGREDIENTES VARCHAR(255),
TAMANHO VARCHAR(255),
PREÇO DECIMAL(6,2),
CATEGORIA_ID BIGINT,
PRIMARY KEY(ID),
FOREIGN KEY(CATEGORIA_ID) REFERENCES TB_CATEGORIA(ID));

INSERT INTO TB_CATEGORIA(TIPO,BORDA) VALUES ("SALGADA", "COM BORDA RECHEADA"), ("SALGADA", "SEM BORDA RECHEADA"),
("DOCE", "SEM BORDA RECHEADA"), ("DOCE", "COM BORDA RECHEADA"), ("SALGADA", "COM BORDA DOCE");

SELECT * FROM TB_CATEGORIA;

INSERT INTO TB_PIZZA(NOME, INGREDIENTES, TAMANHO, PREÇO, CATEGORIA_ID) VALUES
("MUÇARELA", "MUÇARELA, MOLHO DE TOMATE, TOMATE", "GRANDE", 40.00, 2), ("PALMITO", "PALMITO, MUÇARELA, MOLHO DE TOMATE",
"GRANDE", 90.00, 2), ("AMERICANA", "PRESUNTO, MUÇARELA, TOMATE, MOLHO DE TOMATE", "MEDIA", 47.00, 1),
("ATUM", "ATUM, MUÇAREÇA, CEBOLA, MOLHO DE TOMATE", "MEDIA", 62.00, 1),
("BRIGADEIRO", "BRIGADEIRO, GRANULADO", "GRANDE", 42.00, 4), ("BANOFFE", "BANANA, CREME BRANCO", "MEDIA", 46.00, 3),
("CALABRESA", "CALABRESA, MUÇARELA, MOLHO DE TOMATE, OREGANO", "GRANDE", 55.00, 5),
("MARGUERITA", "MUÇARELA, TOMATE, MOLHO DE TOMATE, MANJERICAO", "MEDIA", 72.00, 2);

SELECT * FROM TB_PIZZA;

SELECT * FROM TB_PIZZA WHERE PREÇO >45.00;
SELECT * FROM TB_PIZZA WHERE PREÇO BETWEEN 50.00 AND 100.00;

SELECT * FROM tB_PIZZA WHERE NOME LIKE "%M%"; 

SELECT * FROM TB_PIZZA INNER JOIN TB_CATEGORIA ON TB_PIZZA.CATEGORIA_ID = TB_CATEGORIA.ID;
SELECT * FROM TB_PIZZA INNER JOIN TB_CATEGORIA ON TB_PIZZA.CATEGORIA_ID = TB_CATEGORIA.ID WHERE TIPO = "DOCE";