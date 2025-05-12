-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql server
*/

CREATE DATABASE Shosen;

use Shosen;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(60),
senha VARCHAR(25)
);

INSERT INTO usuario (nome, email, senha)
VALUES ('Ana Silva', 'ana.silva@email.com', 'senha123'),
 ('Bruno Costa', 'bruno.costa@email.com', 'abc12345'),
 ('Carla Mendes', 'carla.mendes@email.com', 'minhasenha'),
 ('Diego Rocha', 'diego.rocha@email.com', '12345678');

 