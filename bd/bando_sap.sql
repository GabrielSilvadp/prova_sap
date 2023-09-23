CREATE DATABASE sap;

USE sap;

CREATE TABLE login(
	nome VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL,
    senha CHAR (14) NOT NULL
);

CREATE TABLE defeitos(
	codDef INT PRIMARY KEY,
	data DATETIME NOT NULL,
    horaInical DATETIME NOT NULL,
    horaFinal DATETIME NOT NULL,
    tipoDef VARCHAR (100)
);

CREATE TABLE equipamento(
	codEqui INT PRIMARY KEY,
	tipoEqui VARCHAR (100)
);


-- Terminar table relatório
CREATE TABLE relatorios(
	data DATETIME
);