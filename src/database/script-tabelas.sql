CREATE DATABASE IF NOT EXISTS Shosen;

use Shosen;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(60),
senha VARCHAR(25),
UNIQUE INDEX index_email(email)
);

CREATE TABLE treino(
idTreino INT PRIMARY KEY AUTO_INCREMENT,
fkUsuario INT,
dia DATE,
tempoTreino INT,
CONSTRAINT fkUsuario FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario),
CONSTRAINT unqUsuarioPorDia UNIQUE(fkUsuario,dia)
);

-- Criacao tabela do quiz
CREATE TABLE acertosQuiz(
idResultado INT AUTO_INCREMENT,
fkUsuario INT,
acertos INT,
dia DATE,
CONSTRAINT fkQuiz FOREIGN KEY(fkUsuario) references usuario(idUsuario),
PRIMARY KEY(idResultado,fkUsuario)
);



SELECT SUM(tempoTreino) as TempoTreinado FROM treino
INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = 3; -- Horas de treino totais do usuário

SELECT round(AVG(tempoTreino)) as MediaTreinoGeral FROM treino
INNER JOIN usuario on idUsuario = fkUsuario; -- Media de Treino Geral

 SELECT round(AVG(tempoTreino)) as MediaTreinoUsuario FROM treino 
INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = 3; -- Média de treino do usuário

-- Horas de treino do usuário

SELECT * FROM treino;


SELECT DAY(dia) FROM treino 
INNER JOIN  usuario on idUsuario = fkUsuario
WHERE idUsuario = 3; -- Dias da semana de treino do usuário

SELECT COUNT(tempoTreino), nome, DAY(dia) FROM treino
INNER JOIN usuario on idUsuario = fkUsuario
GROUP BY nome, dia; -- Tempo de treino

SELECT * FROM treino 
INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = 3;


use Shosen;

SELECT * FROM usuario;

INSERT INTO usuario(nome,email,senha)
VALUES('Nicolas Barbosa','nicolas@gmail.com','Minhasenha1234'),
('Felipe Ese','felipe@ese.com','$Ese1234'),
('Artur Duarte','artur@gmail.com','@12345Tur');

desc treino;

-- Nicolas Barbosa (ID = 2)
INSERT INTO treino(fkUsuario, dia, tempoTreino) VALUES
(2, '2025-05-20', 45),
(2, '2025-05-21', 30),
(2, '2025-05-22', 50),
(2, '2025-05-23', 40),
(2, '2025-05-24', 60),
(2, '2025-05-25', 35),
(2, '2025-05-26', 55);

-- Felipe Ese (ID = 3)
INSERT INTO treino(fkUsuario, dia, tempoTreino) VALUES
(3, '2025-05-20', 25),
(3, '2025-05-21', 40),
(3, '2025-05-22', 30),
(3, '2025-05-23', 35),
(3, '2025-05-24', 50),
(3, '2025-05-25', 45),
(3, '2025-05-26', 60);

-- Artur Duarte (ID = 4)
INSERT INTO treino(fkUsuario, dia, tempoTreino) VALUES
(4, '2025-05-20', 60),
(4, '2025-05-21', 55),
(4, '2025-05-22', 40),
(4, '2025-05-23', 30),
(4, '2025-05-24', 45),
(4, '2025-05-25', 35),
(4, '2025-05-26', 50);


desc acertosQuiz;

INSERT INTO acertosQuiz(fkUsuario,acertos)
VALUES(2,10),(3,7),(4,4);