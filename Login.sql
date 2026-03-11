-- Criar base de dados
CREATE DATABASE sistema_login;

-- Usar a base de dados
USE sistema_login;

-- Criar tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Inserir usuário de exemplo
INSERT INTO usuarios (nome, email, senha)
VALUES ('Edson', 'edson@email.com', '123456');

-- Teste de login
SELECT * FROM usuarios
WHERE email = 'edson@email.com'
AND senha = '123456';
