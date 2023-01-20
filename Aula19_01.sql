CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;
CREATE TABLE tb_categoria_curso(
	id BIGINT AUTO_INCREMENT,
    nome_categoria VARCHAR(255),
    tempo_curso VARCHAR(255),
    PRIMARY KEY (id)
    );
    
    
CREATE TABLE tb_cursos(
id_cursos BIGINT AUTO_INCREMENT,
curso VARCHAR(255),
instituicao VARCHAR(255),
cidade VARCHAR (255),
disponibilidade CHAR,
quantidade_alunos int,
categoria_id BIGINT,

PRIMARY KEY (id_cursos),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria_curso(id)
);

-- tb_categorias
INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Desenvolvedor FULL STACK","1 ano");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Lógica de Programação","3 meses");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Back end","6 meses");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Banco de Dados","6 meses");

INSERT INTO tb_categoria_curso (nome_categoria, tempo_curso)
VALUE ("Excel Avançado","3 meses");

SELECT * FROM tb_categoria_curso;

-- tb_cursos
INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Lógica de Programação", "Generation","São Paulo", "S",7,1);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Desenvolvedor Mobile", "Kenzie","São Paulo","N",33,1);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("JavasScript iniciante", "DevMedia","Rio de Janeiro","N",29,2);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Html/Css/Js", "Microsoft","São Paulo","N",62,2);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Phyton", "Estudandus","Bahia","S",20,3);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("C++", "CodeCamp","Goiânia","N",52,3);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("React JS", "Generation","Distrito Federal","S",45,4);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("GitHub", "Arata","Alagoas","N",11,4);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Inglês Instrumental", "LNK Idiomas","São Paulo","N",40,5);

INSERT INTO tb_cursos (curso, instituicao, cidade, disponibilidade, quantidade_alunos, categoria_id)
VALUE ("Ux/Ui", "Dev Media","São Paulo","S",40,5);

SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE quantidade_alunos > 50;
SELECT * FROM tb_cursos WHERE quantidade_alunos < 50;

SELECT * FROM tb_cursos WHERE  curso LIKE "%J";
SELECT * FROM tb_cursos INNER JOIN tb_categoria_curso ON tb_categoria_curso.id = tb_cursos.categoria_id;
SELECT * FROM tb_cursos INNER JOIN tb_categoria_curso ON tb_categoria_curso.id = tb_cursos.categoria_id WHERE nome_categoria LIKE "%Banco de Dados%";
