CREATE DATABASE school;

USE school;
CREATE TABLE escola (
	matricula BIGINT auto_increment,
    aluno VARCHAR(256),
    turma INT,
    telefone VARCHAR(256),
    email VARCHAR(256),
    nota DECIMAL(3,2),
    responsavel VARCHAR(256),
    contato INT,
    PRIMARY KEY (matricula)
    );
    
    INSERT INTO escola (aluno,turma,telefone,email,nota,responsavel,contato) 
    VALUES ("Wandinha Adams",1953,11991190207,"wandinhapokasideia@yahoo.com",7.1,"Morgana",11966735436);
    
     INSERT INTO escola (aluno,turma,telefone,email,nota,responsavel,contato) 
     VALUES ("Adam L. Bassoto",1183,1187339845,"adam_gordin@yahoo.com",9.5,"Vitoria",11945332888);
    
     INSERT INTO escola (aluno,turma,telefone,email,nota,responsavel,contato)
     VALUES ("Joaniza",2053,1198764566,"joanizajoana@yahoo.com",3.9,"Vitorina",11989224355);
     
      INSERT INTO escola (aluno,turma,telefone,email,nota,responsavel,contato)
     VALUES ("Paulo Borrachinha",2053,1198764566,"luffyborracha@yahoo.com",6.9,"Ana Queijo",11989224355);
     
      INSERT INTO escola (aluno,turma,telefone,email,nota,responsavel,contato)
     VALUES ("Daico",1756,1183789493,"cacadordepiratas@yahoo.com",4.1,"Emancipado",11987675566);
    
    SELECT * FROM escola;
    
    SELECT * FROM escola WHERE nota < 7;
    
    SELECT * FROM escola WHERE nota > 7;
    
    UPDATE escola
	SET aluno = "Anderson Silva"
	WHERE matricula=1;
    
    DELETE FROM escola WHERE matricula;
    
    SET SQL_SAFE_UPDATES =0;