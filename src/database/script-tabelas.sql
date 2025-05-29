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