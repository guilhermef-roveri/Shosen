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

SELECT * FROM shosen.acertosQuiz;

SELECT * FROM treino;


