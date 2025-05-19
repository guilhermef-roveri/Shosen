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
CONSTRAINT fkUsuario FOREIGN KEY(fkUsuario) REFERENCES usuario(idUsuario)
);

INSERT INTO usuario (nome, email, senha)
VALUES ('Ana Silva', 'ana.silva@email.com', 'senha123'),
 ('Bruno Costa', 'bruno.costa@email.com', 'abc12345'),
 ('Carla Mendes', 'carla.mendes@email.com', 'minhasenha'),
 ('Diego Rocha', 'diego.rocha@email.com', '12345678');

INSERT INTO treino (fkUsuario, dia, tempoTreino)
VALUES (1, '2025-05-10', 1),
 (2, '2025-05-11', 2),
 (3, '2025-05-12', 3);
SELECT * FROM usuario;	


SELECT * FROM treino;

INSERT INTO treino(fkUsuario,dia,tempoTreino) VALUES(1,Curdate(),3);

-- Criacao tabela do quiz
CREATE TABLE acertosQuiz(
idResultado INT AUTO_INCREMENT,
fkUsuario INT,
acertos INT,
dia DATE,
CONSTRAINT fkQuiz FOREIGN KEY(fkUsuario) references usuario(idUsuario),
PRIMARY KEY(idResultado,fkUsuario)
);


INSERT INTO usuario (nome, email, senha) VALUES 
('Ana Silva', 'ana.silva@example.com', 'senha123'),
('Bruno Costa', 'bruno.costa@example.com', 'abc456'),
('Carla Mendes', 'carla.mendes@example.com', 'carla789'),
('Daniel Souza', 'daniel.souza@example.com', 'daniel321'),
('Eduarda Lima', 'eduarda.lima@example.com', 'edu123'),
('Felipe Rocha', 'felipe.rocha@example.com', 'felipe456'),
('Gabriela Teixeira', 'gabriela.teixeira@example.com', 'gabi789'),
('Henrique Alves', 'henrique.alves@example.com', 'henrique321');

INSERT INTO treino (fkUsuario, dia, tempoTreino) VALUES 
(1, '2025-05-10', 45),
(2, '2025-05-11', 30),
(3, '2025-05-12', 60),
(4, '2025-05-13', 40),
(5, '2025-05-14', 35),
(6, '2025-05-15', 50),
(7, '2025-05-16', 55),
(8, '2025-05-17', 25);



INSERT INTO acertosQuiz (fkUsuario, acertos, dia) VALUES
(1, 8, '2025-05-10'),
(2, 6, '2025-05-11'),
(3, 9, '2025-05-12'),
(4, 7, '2025-05-13'),
(5, 5, '2025-05-14'),
(6, 10, '2025-05-15'),
(7, 4, '2025-05-16'),
(8, 6, '2025-05-17');

SELECT SUM(tempoTreino) as TempoTreinado FROM treino
INNER JOIN usuario on idUsuario = fkUsuario WHERE fkUsuario = 8; -- Horas de treino totais do usuário

SELECT round(AVG(tempoTreino),2) as MediaTreinoGeral FROM treino
INNER JOIN usuario on idUsuario = fkUsuario; -- Media de Treino Geral

SELECT round(AVG(tempoTreino),2) as MediaTreinoUsuario FROM treino -- Horas de treino do usuário
INNER JOIN usuario on idUsuario = fkUsuario WHERE idUsuario = 3;

SELECT * FROM treino;
