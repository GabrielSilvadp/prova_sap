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

-- Terminar table relatório
CREATE TABLE relatorios(
	data DATETIME
);


INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2017-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 09:15:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 10:00:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2018-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '2', '2',TO_DATETIME(' 0000-00-00 13:50:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 15:00:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2019-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '3',TO_DATETIME(' 0000-00-00 13:10:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 17:30:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2019-02-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '3', '4',TO_DATETIME(' 0000-00-00 08:00:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 09:15:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2016-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '2', '5',TO_DATETIME(' 0000-00-00 07:45:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 08:50:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2018-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '3', '6',TO_DATETIME(' 0000-00-00 07:50:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 11:00:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2019-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 15:00:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 15:50:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2019-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 16:00:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 17:00:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2019-03-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 16:30:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 18:15:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2017-01-05 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 09:00:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 15:15:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2017-02-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '1', '1',TO_DATETIME(' 0000-00-00 11:00:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 11:15:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2018-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '2', '2',TO_DATETIME(' 0000-00-00 09:45:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 10:45:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2017-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '2', '3',TO_DATETIME(' 0000-00-00 01:01:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 03:03:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2018-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '2', '2',TO_DATETIME(' 0000-00-00 09:15:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 22:45:00', 'YYYY/MM/DD HH:MM:SS');
INSERT INTO defeitos (data, codEqui, codDef, horaInicial, horaFinal) VALUES (TO_DATETIME(' 2017-01-03 00:00:00', 'YYYY/MM/DD HH:MM:SS'), '3', '6',TO_DATETIME(' 0000-00-00 05:05:00', 'DD/MM/YYYY HH:MM:SS') , TO_DATETIME(' 0000-00-00 06:06:00', 'YYYY/MM/DD HH:MM:SS');
