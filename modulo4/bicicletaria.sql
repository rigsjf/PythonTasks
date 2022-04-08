use bicicletaria;
CREATE TABLE bicicletas_aluguel (
	Id_Aluguel INT NOT NULL,
    NumeroSerie_Bicicleta VARCHAR(60) NOT NULL,
    FOREIGN KEY (Id_Aluguel) REFERENCES aluguel(Id),
    FOREIGN KEY (NumeroSerie_Bicicleta) REFERENCES bicicleta(NumeroSerie)
);

INSERT INTO loja VALUES ('01901633000133','A BICICLETARIA LTDA','011984482589','AVENIDA PAULISTA 1000','bicicletaria@email.com');
INSERT INTO loja VALUES ('45779689725430','LOCACAO DE BIKES LTDA','012984482589','AVENIDA PAULISTA 2000','bicicletaria@email.com');
INSERT INTO cliente VALUES ('12345678900','Pedro Paulo Silva','55984847258','pedro@email.com');
INSERT INTO cliente VALUES ('22345687612', 'Joao', '1123469843', 'joao@email.com');
INSERT INTO cliente VALUES ('00936513278', 'Eliseu', '1126843843', 'eliseu@email.com');
INSERT INTO bicicleta VALUES ('bike25356678','AMARELO',26,1,'01901633000133');
INSERT INTO bicicleta VALUES ('bike24536784', 'Vermelho', 20, 1, '45779689725430');
INSERT INTO aluguel VALUES(0,'2022-03-30 12:00:00','Diario',null,'01901633000133','12345678900');
INSERT INTO aluguel VALUES(0,'2022-03-30 12:00:00','Diario',null,'45779689725430','12345678900');
INSERT INTO bicicletas_aluguel VALUES (1,'bike25356678');
SELECT * FROM bicicleta where CNPJ_Loja = '01901633000133';
SELECT c.Nome  FROM cliente c, aluguel a WHERE c.CPF = a.CPF_Cliente AND a.CNPJ_Loja = '45779689725430';
SELECT * FROM aluguel WHERE DataInicio > '2022-03-29 23:59:59' AND DataInicio < '2022-03-31 00:00:00';
CREATE DATABASE `bicicletaria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
select * from aluguel a JOIN bicicletas_aluguel b ON b.Id_Aluguel = a.Id;