
/*Criação TABELA*/
CREATE TABLE funcionarios (
	pessoa_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
    primeiro_nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    ano_nascimento INT NOT NULL,
    funcao VARCHAR(50) NOT NULL,
    last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (pessoa_id),
    KEY idx_pessoa_primeiro_nome (primeiro_nome)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Valores inseridos*/
INSERT INTO funcionarios VALUES (1, 'Mariana', 'Felix', 2005, 'Desenvolvedor(a)', CURRENT_TIMESTAMP),
(2, 'João', 'Alberione', 1995, 'Gerente', CURRENT_TIMESTAMP),
(3, 'Maria', 'Alves', 1996, 'Desenvolvedor(a)', CURRENT_TIMESTAMP),
(4, 'Oscar', 'Diniz', 2000, 'Analista', CURRENT_TIMESTAMP),
(5, 'Alberto', 'Muniz', 1980, 'CEO', CURRENT_TIMESTAMP);
(6, 'Ana', 'Ferreira', 1988, 'Gerente TI', CURRENT_TIMESTAMP),
(7, 'Isabela', 'Mendes', 1980, 'Analista RH', CURRENT_TIMESTAMP),
(8, 'Luiz', 'Oliveira', 1991, 'Analista Cyberseguranca', CURRENT_TIMESTAMP),
(9, 'Carla', 'Barbosa', 1989, 'UX Designer', CURRENT_TIMESTAMP),
(10, 'Pedro', 'Almeida', 1990, 'Cientista de Dados', CURRENT_TIMESTAMP),
(11, 'Beatriz', 'Pereira', 1993, 'Marketing', CURRENT_TIMESTAMP),
(12, 'Rafael', 'Rocha', 1987, 'Engenheiro(a)', CURRENT_TIMESTAMP),
(13, 'Lucas', 'Gomes', 1996, 'Arquiteto', CURRENT_TIMESTAMP),
(14, 'Maria', 'Silva', 1990, 'Engenheiro(a)', CURRENT_TIMESTAMP);

/*QUERIES*/
SELECT DISTINCT sobrenome FROM funcionarios; 

SELECT * FROM funcionarios
WHERE funcao <> 'Desenvolvedor(a)';

SELECT COUNT(*) 
FROM funcionarios
WHERE ano_nascimento > 1990;

SELECT funcao AS Função, CONCAT(primeiro_nome,' ',sobrenome) AS Funcionario FROM funcionarios
LIMIT 3 OFFSET 10;

SELECT CONCAT(primeiro_nome,' ',sobrenome) AS Funcionário 
FROM funcionarios
ORDER BY primeiro_nome;

SELECT COUNT(*) AS num_gerentes
FROM funcionarios
WHERE funcao = 'Gerente';

SELECT DISTINCT funcao
FROM funcionarios
WHERE ano_nascimento < 1990;

SELECT DISTINCT ano_nascimento
FROM funcionarios
ORDER BY ano_nascimento DESC;

SELECT DISTINCT ano_nascimento
FROM funcionarios
WHERE ano_nascimento > 1990
ORDER BY ano_nascimento DESC
LIMIT 5;

SELECT pessoa_id, funcao AS Cargo
FROM funcionarios;


/*AS queries*/
SELECT CONCAT(primeiro_nome,' ',sobrenome) AS NomeCompleto, funcao AS Função, last_update AS Updated
FROM funcionarios;

SELECT primeiro_nome AS Nome, sobrenome AS Sobrenome, ano_nascimento AS Nascimento
FROM funcionarios;