CREATE DATABASE sap;

USE sap;

CREATE TABLE login(
	login VARCHAR (100) NOT NULL,
    senha CHAR (14) NOT NULL
);

CREATE TABLE defeitos(
	codDef INT PRIMARY KEY,
	data DATETIME NOT NULL,
    horaInical DATETIME NOT NULL,
    horaFinal DATETIME NOT NULL,
    tipoDef VARCHAR (100) NOT NULL
);

CREATE TABLE equipamento(
	codEqui INT PRIMARY KEY,
	tipoEqui VARCHAR (100)
);

INSERT INTO defeitos(codDef, tipoDef)
VALUES
(1, 'Quebra ferramenta'),
(2, 'Travamento Eixo H'),
(3, 'Queima motor'),
(4, 'Queima placa rede'),
(5, 'Bomba d''água inoperante'),
(6, 'Disco rígido não iniciou');

INSERT INTO equipamento(codEqui, tipoEqui)
VALUES
(1, 'Torno CNC'),
(2, 'Fresa'),
(3, 'Computador');

ALTER TABLE relatorios ADD COLUMN codRelEqui INT;
ALTER TABLE relatorios ADD COLUMN codRelDef INT;

ALTER TABLE relatorios ADD CONSTRAINT fk_equipamento FOREIGN KEY (codRelEqui) REFERENCES equipamento(codEqui);
ALTER TABLE relatorios ADD CONSTRAINT fk_defeitos FOREIGN KEY (codRelDef) REFERENCES defeitos(codDef);  

CREATE TABLE relatorios(
	id INT PRIMARY KEY AUTO_INCREMENT,
	data DATETIME,
    horaInicial DATETIME,
    horaFinal DATETIME,
    tempoParado DATETIME
);