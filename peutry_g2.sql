USE master
DROP DATABASE DB_AULA16_4N
CREATE DATABASE DB_AULA16_4N
USE DB_AULA16_4N

-- Criação das tabelas

CREATE TABLE cliente (
	clienteID INT PRIMARY KEY IDENTITY (1,1),
	nome VARCHAR (100),
	cpf VARCHAR (11)
);

CREATE TABLE onibus (
	onibusID INT PRIMARY KEY IDENTITY,
	placa VARCHAR(10),
	qtdAssentos INT,
	wifi CHAR(1)
);

CREATE TABLE viagem (
	viagemID INT PRIMARY KEY IDENTITY,
	onibusID INT REFERENCES onibus(onibusID),
	data DATE,
	destino VARCHAR(100)
);

CREATE TABLE clienteViagem (
	clienteID INT REFERENCES cliente(clienteID),
	viagemID INT REFERENCES viagem(viagemID),
	valor DECIMAL(10, 2)
);

-- Restições

-- Inserção dos dados

INSERT INTO [cliente] (nome,cpf)
VALUES
  ('Laís Melo','952.177.487-33'),
  ('Ana Laura Moraes','255.468.944-67'),
  ('Eduardo Das Chagas','358.543.348-45'),
  ('Dom Pacheco','162.683.378-46'),
  ('Hugo Rezende','766.960.567-52'),
  ('Letícia Braz','549.146.343-72'),
  ('Yuri Magalhaes','142.819.333-35'),
  ('Joaquim Cabral','783.124.755-98'),
  ('Otto Muniz','273.778.186-43'),
  ('Heitor Henrique de Barros','139.515.818-12'),
  ('Beatriz Carvalho','558.274.884-45'),
  ('Luiz Guilherme Dutra','579.524.632-64'),
  ('Maria de Morais','734.609.121-11'),
  ('Milena Queiroz','047.405.608-82'),
  ('Carlos Henrique Borges','252.552.337-42'),
  ('Ana Clara da Cruz','507.558.474-27'),
  ('Heitor Gabriel de Castro','472.441.887-76'),
  ('Pedro Gabriel Rodrigues','508.453.923-83'),
  ('Anthony Miguel Rosa','868.222.535-83'),
  ('Débora de Paula','549.424.644-79'),
  ('Otávio Cordeiro','162.059.842-30'),
  ('Chloe Duarte','278.173.636-38'),
  ('Liam Caetano','160.805.572-82'),
  ('Ana Elisa Marques','412.852.284-87'),
  ('José Lucas Nunes','928.830.522-56'),
  ('Olívia Caetano','476.431.617-01'),
  ('Kevin Felix','428.842.723-48'),
  ('Ricardo Braga','450.337.768-47'),
  ('Álvaro Santos','458.424.591-46'),
  ('Antônio Carneiro','238.419.129-33'),
  ('Agatha de Morais','218.239.293-68'),
  ('Davi de Freitas','766.634.517-75'),
  ('Liz Maria Castro','275.328.548-16'),
  ('Oliver Paulino','862.115.378-75'),
  ('Mathias Caetano','438.140.141-27'),
  ('Agnes Firmino','357.398.103-83'),
  ('Richard Lemos','973.580.873-79'),
  ('José Lucas Duarte','853.342.387-18'),
  ('Augusto Galdino','826.838.287-71'),
  ('Luiz Felipe Nascimento','981.632.555-35'),
  ('Dylan Pinheiro','043.882.784-73'),
  ('Luana Lima','212.955.034-23'),
  ('Vicente dos Santos','483.784.686-85'),
  ('Catarina Oliveira','593.195.471-78'),
  ('Serena Simoes','613.855.812-41'),
  ('Gael Pires','927.637.788-94'),
  ('Lorenzo Henrique Abreu','684.816.676-96'),
  ('Heitor Henrique Cavalcante','311.684.346-28'),
  ('Ítalo da Silva','399.848.921-75'),
  ('Benício da Rocha','537.103.526-65'),
  ('Yasmin Diniz','115.324.797-17'),
  ('Ana Lívia Monteiro','638.273.124-89'),
  ('Cauã Fagundes','133.867.717-58'),
  ('Hadassa Souza','784.146.351-25'),
  ('Catarina de Carvalho','366.770.418-89'),
  ('Marina Sántos','151.136.763-35'),
  ('Lorena Vitória de Barros','905.124.463-76'),
  ('Diogo do Nascimento','474.613.484-60'),
  ('Leonardo Fagundes','054.564.711-07'),
  ('Theodora de Araujo','707.047.852-35'),
  ('Maria Elisa Magalhaes','268.171.835-69'),
  ('João Arthur Miranda','511.465.745-27'),
  ('Camila Leal','456.517.737-75'),
  ('João Emanuel Braz','681.234.840-48'),
  ('Isaac Machado','963.815.247-60'),
  ('Alexandre Cunha','867.614.882-78'),
  ('Maria Esther Caetano','441.361.481-35'),
  ('Bruno Viana','247.687.630-31'),
  ('Diego Vieira','305.665.707-89'),
  ('Ana Clara Dias','013.629.454-74'),
  ('Paola Borges','041.519.322-86'),
  ('Marcelo Guedes','169.546.472-91'),
  ('Lara Santiago','902.398.591-66'),
  ('Lucas Coutinho','765.247.338-39'),
  ('Raul Leite','231.724.640-34'),
  ('Pedro Gabriel Ramos','818.278.246-46'),
  ('Ana Liz Trindade','904.514.014-60'),
  ('Lucas Cavalcante','832.258.581-56'),
  ('Lara Marinho','038.266.114-77'),
  ('Aline Macedo','276.862.430-20'),
  ('Gustavo de Moura','882.585.054-24'),
  ('Rodrigo Fernandes','141.810.343-54'),
  ('Bernardo Antunes','630.268.553-54'),
  ('Matteo Santiago','784.209.564-69'),
  ('Christopher Duarte','234.355.015-97'),
  ('Yasmin de Santana','195.781.386-64'),
  ('Chloe Mendonca','849.961.471-15'),
  ('Ana Luísa de Jesus','327.258.811-37'),
  ('Isabelly Figueiredo','519.792.023-44'),
  ('Júlia Azevedo','442.089.323-24'),
  ('Miguel dos Reis','271.613.310-37'),
  ('Vicente Cunha','166.192.625-85'),
  ('Milena de Castro','399.745.818-91'),
  ('Ítalo da Cruz','486.414.745-64'),
  ('Nina Candido','240.797.995-56'),
  ('Théo de Moura','956.211.565-70'),
  ('Fernanda Faria','038.323.583-26'),
  ('Lorenzo Miguel Evangelista','172.536.547-95'),
  ('Júlia Garcia','747.266.456-83'),
  ('Louise de Carvalho','618.277.861-75');

INSERT INTO [onibus] (placa,qtdAssentos,wifi)
VALUES
  ('LIB-8617',79,'1'),
  ('MIS-4868',86,'0'),
  ('LKL-4335',63,'0'),
  ('SFG-7244',85,'1'),
  ('MTG-5662',81,'0');

INSERT INTO [viagem] (data,destino,onibusID)
VALUES
  ('16/02/2025','Araguaína',3),
  ('20/03/2025','Porto Nacional',5),
  ('14/07/2025','Miracema',5),
  ('22/03/2025','Porto Nacional',3),
  ('11/09/2025','Almas',4),
  ('13/11/2024','Porto Nacional',4),
  ('20/04/2025','Miracema',4),
  ('13/02/2025','Dianópolis',4),
  ('18/03/2025','Gurupi',3),
  ('19/04/2025','Dianópolis',5),
  ('07/05/2025','Palmas',5),
  ('03/04/2025','Araguaína',4),
  ('16/08/2025','Almas',3),
  ('21/09/2025','Palmas',3),
  ('07/10/2025','Almas',4),
  ('09/10/2025','Dianópolis',3),
  ('17/06/2025','Palmas',4),
  ('22/07/2025','Araguaína',2),
  ('15/04/2025','Araguaína',4),
  ('10/09/2025','Gurupi',5);
INSERT INTO [viagem] (data,destino,onibusID)
VALUES
  ('26/03/2025','Jalapão',2),
  ('22/05/2025','Miracema',4),
  ('23/11/2024','Gurupi',1),
  ('06/03/2025','Almas',5),
  ('25/04/2025','Dianópolis',3),
  ('14/04/2025','Jalapão',3),
  ('19/04/2025','Gurupi',4),
  ('28/05/2025','Araguaína',1),
  ('09/12/2024','Jalapão',2),
  ('29/03/2025','Miracema',1),
  ('12/05/2025','Dianópolis',3),
  ('20/06/2025','Almas',5),
  ('10/08/2025','Gurupi',4),
  ('24/04/2025','Miracema',2),
  ('29/03/2025','Araguaína',5),
  ('23/03/2025','Araguaína',5),
  ('06/07/2025','Jalapão',3),
  ('01/02/2025','Dianópolis',4),
  ('10/11/2025','Gurupi',4),
  ('27/06/2025','Porto Nacional',3);

-- clienteViagem

INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (1,12,209.26),
  (28,19,279.43),
  (11,37,125.39),
  (46,21,285.43),
  (46,23,114.67),
  (3,8,231.68),
  (11,22,164.72),
  (18,25,210.27),
  (4,4,82.28),
  (28,35,37.24),
  (30,34,167.58),
  (26,10,203.40),
  (18,9,164.51),
  (19,7,145.68),
  (47,2,193.30),
  (25,37,63.69),
  (26,38,141.50),
  (11,9,232.40),
  (34,33,82.93),
  (18,6,80.35),
  (38,9,89.73),
  (39,38,89.12),
  (33,21,131.39),
  (30,21,207.73),
  (16,5,93.10),
  (33,12,171.10),
  (36,40,60.05),
  (34,19,53.80),
  (6,38,257.46),
  (48,23,40.68),
  (15,3,156.72),
  (48,15,121.81),
  (8,26,100.52),
  (33,36,82.91),
  (23,14,40.20),
  (11,37,78.93),
  (22,28,200.73),
  (16,12,71.78),
  (26,15,44.07),
  (28,11,24.14),
  (9,4,162.60),
  (26,27,180.32),
  (40,18,145.43),
  (8,33,196.05),
  (23,6,198.19),
  (5,8,231.96),
  (33,14,209.22),
  (11,40,165.45),
  (28,32,229.60),
  (9,37,143.46);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (18,36,128.70),
  (5,5,117.38),
  (34,17,244.69),
  (9,38,138.00),
  (20,17,147.53),
  (14,29,119.17),
  (8,36,188.21),
  (20,18,88.46),
  (43,39,139.55),
  (19,15,202.66),
  (44,23,165.08),
  (15,33,84.54),
  (33,16,213.41),
  (46,3,145.26),
  (42,39,52.40),
  (19,22,46.23),
  (42,22,90.07),
  (23,9,126.29),
  (4,6,96.38),
  (17,6,39.31),
  (16,14,104.84),
  (39,3,159.22),
  (42,29,293.34),
  (36,18,169.84),
  (41,32,143.28),
  (37,15,102.46),
  (20,17,24.96),
  (50,6,30.06),
  (38,22,108.65),
  (36,22,124.27),
  (39,5,133.37),
  (19,17,110.63),
  (16,14,177.11),
  (11,38,186.87),
  (7,35,101.65),
  (18,19,37.00),
  (25,38,147.43),
  (28,37,139.50),
  (47,10,221.42),
  (45,36,94.83),
  (45,3,266.11),
  (3,14,181.88),
  (46,39,91.27),
  (19,26,21.32),
  (29,35,80.87),
  (36,36,27.83),
  (46,12,170.61),
  (4,18,213.85),
  (6,23,133.73),
  (39,31,279.70);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (18,2,200.91),
  (4,11,215.46),
  (15,5,83.81),
  (17,35,272.31),
  (45,23,263.48),
  (37,39,69.30),
  (29,39,286.66),
  (5,34,181.79),
  (11,40,128.07),
  (24,35,21.06),
  (19,2,104.90),
  (33,27,83.99),
  (12,27,171.79),
  (12,5,81.26),
  (14,21,193.26),
  (31,14,275.09),
  (2,11,121.82),
  (27,10,218.37),
  (30,30,79.25),
  (7,17,259.83),
  (5,37,36.40),
  (5,10,190.82),
  (14,37,68.41),
  (8,11,53.06),
  (43,8,192.29),
  (10,16,157.70),
  (47,18,37.68),
  (32,13,243.52),
  (22,22,78.78),
  (39,18,106.89),
  (20,28,118.44),
  (45,33,160.82),
  (39,5,186.42),
  (10,11,284.82),
  (7,20,284.72),
  (20,36,24.82),
  (26,37,112.85),
  (49,11,110.95),
  (43,9,276.37),
  (44,18,198.41),
  (17,7,64.98),
  (6,10,22.23),
  (31,12,83.43),
  (20,31,70.73),
  (49,21,249.30),
  (14,23,76.91),
  (45,9,235.05),
  (16,24,294.26),
  (4,13,291.98),
  (21,22,241.77);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (16,35,29.66),
  (48,35,254.85),
  (32,12,204.71),
  (18,16,41.13),
  (37,35,21.17),
  (27,24,84.28),
  (6,11,274.79),
  (2,16,164.48),
  (3,3,79.90),
  (20,36,102.66),
  (13,2,22.13),
  (23,22,273.85),
  (11,19,204.19),
  (24,31,121.73),
  (37,15,105.48),
  (40,19,271.39),
  (7,14,247.51),
  (32,4,239.40),
  (22,27,170.72),
  (49,5,284.15),
  (18,9,272.96),
  (13,14,112.68),
  (10,28,209.84),
  (24,7,75.10),
  (19,19,81.59),
  (3,5,289.02),
  (30,24,127.18),
  (4,24,52.61),
  (8,35,80.14),
  (26,25,29.74),
  (43,32,221.78),
  (9,20,128.51),
  (23,33,69.04),
  (37,12,98.91),
  (17,32,197.72),
  (26,36,49.43),
  (23,5,78.61),
  (26,13,127.41),
  (2,23,92.16),
  (14,34,216.10),
  (11,26,222.13),
  (12,39,255.87),
  (4,20,223.48),
  (12,11,208.75),
  (5,23,253.50),
  (9,35,229.44),
  (17,37,106.55),
  (42,4,286.93),
  (22,29,28.24),
  (32,26,155.16);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (42,22,39.96),
  (18,36,111.12),
  (29,17,190.52),
  (42,27,79.30),
  (33,6,94.72),
  (7,24,136.04),
  (32,17,113.55),
  (44,17,216.31),
  (32,14,199.32),
  (44,5,53.27),
  (41,13,23.33),
  (27,30,283.88),
  (22,39,39.83),
  (14,7,85.82),
  (3,32,212.17),
  (16,22,262.69),
  (40,32,60.58),
  (18,7,35.30),
  (41,13,205.00),
  (17,26,229.71),
  (24,33,133.37),
  (14,15,156.72),
  (9,26,92.27),
  (27,37,292.99),
  (27,16,146.07),
  (13,7,202.64),
  (7,38,199.56),
  (31,27,279.59),
  (15,40,240.97),
  (19,27,283.80),
  (44,15,298.94),
  (36,1,20.45),
  (41,26,119.78),
  (20,6,139.90),
  (11,30,256.49),
  (10,15,108.17),
  (18,2,281.77),
  (43,20,125.47),
  (36,14,133.14),
  (31,8,95.84),
  (33,5,275.60),
  (32,28,262.97),
  (28,4,73.19),
  (11,33,112.53),
  (14,39,299.22),
  (2,1,287.07),
  (26,14,55.16),
  (27,27,165.55),
  (41,3,53.68),
  (48,32,290.13);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (39,5,255.31),
  (6,8,246.54),
  (33,35,32.10),
  (40,32,90.87),
  (19,28,55.77),
  (2,18,265.19),
  (19,13,178.60),
  (29,7,267.53),
  (36,30,283.48),
  (10,30,269.64),
  (37,9,93.39),
  (48,32,94.25),
  (37,3,85.27),
  (32,13,208.24),
  (35,23,117.40),
  (38,11,167.78),
  (45,33,295.33),
  (10,3,144.89),
  (13,34,55.29),
  (31,26,227.69),
  (6,40,280.80),
  (49,24,159.19),
  (39,2,26.28),
  (33,38,93.52),
  (47,17,290.23),
  (23,25,284.04),
  (5,22,56.55),
  (12,21,288.02),
  (9,18,53.77),
  (22,7,200.85),
  (37,15,36.22),
  (10,28,223.68),
  (34,20,177.42),
  (20,24,281.36),
  (34,3,257.97),
  (30,27,48.94),
  (10,28,250.50),
  (6,17,116.30),
  (41,34,228.31),
  (23,37,238.28),
  (48,34,296.80),
  (25,16,290.81),
  (18,21,117.80),
  (7,9,127.24),
  (37,7,248.62),
  (47,15,75.30),
  (18,38,290.25),
  (13,7,295.31),
  (33,29,221.54),
  (11,4,152.09);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (40,36,36.51),
  (39,14,189.71),
  (15,1,280.53),
  (12,13,127.44),
  (46,23,172.13),
  (39,8,106.83),
  (24,4,25.56),
  (32,5,150.64),
  (19,30,150.12),
  (32,21,233.22),
  (30,2,31.33),
  (37,34,92.01),
  (13,22,62.80),
  (28,24,54.51),
  (32,17,49.94),
  (12,34,61.34),
  (32,28,284.68),
  (12,27,141.15),
  (2,30,22.77),
  (27,5,184.20),
  (10,12,63.81),
  (45,40,246.29),
  (27,2,39.22),
  (12,16,97.71),
  (15,25,276.80),
  (34,9,83.29),
  (8,11,157.11),
  (44,13,25.03),
  (2,35,206.76),
  (23,21,133.94),
  (5,4,90.43),
  (6,32,150.61),
  (16,12,261.54),
  (5,33,139.83),
  (22,22,32.73),
  (36,4,204.47),
  (19,5,163.42),
  (38,6,167.35),
  (11,23,167.89),
  (3,29,258.74),
  (18,16,173.03),
  (14,32,45.94),
  (16,12,42.13),
  (37,31,86.28),
  (6,37,131.31),
  (11,6,254.17),
  (21,29,265.47),
  (8,36,156.32),
  (32,29,206.42),
  (38,8,142.79);
INSERT INTO [clienteViagem] (clienteID,viagemID,valor)
VALUES
  (27,9,102.85),
  (13,10,141.40),
  (32,8,75.15),
  (32,6,24.66),
  (19,24,91.22),
  (3,14,53.88),
  (35,4,255.18),
  (40,23,68.16),
  (40,14,255.30),
  (38,23,230.43),
  (38,12,232.36),
  (7,5,138.58),
  (27,10,86.73),
  (29,28,232.00),
  (38,27,258.82),
  (35,19,185.56),
  (18,19,145.81),
  (44,35,172.08),
  (18,26,92.50),
  (27,36,213.88),
  (20,7,111.23),
  (7,11,59.10),
  (18,23,20.06),
  (12,17,91.79),
  (33,1,148.46),
  (36,27,256.81),
  (28,5,171.51),
  (43,22,259.73),
  (25,14,261.74),
  (39,19,73.09),
  (6,32,268.93),
  (9,16,168.61),
  (21,35,176.27),
  (41,6,141.06),
  (17,30,54.87),
  (20,35,107.24),
  (29,37,29.57),
  (42,37,132.24),
  (16,8,61.92),
  (49,3,45.76),
  (8,16,83.57),
  (35,24,258.34),
  (7,26,215.63),
  (35,27,95.75),
  (29,16,267.43),
  (24,34,269.02),
  (38,20,51.12),
  (19,22,185.04),
  (36,12,76.68),
  (31,29,274.31);

-- 1. Contagem de viagens por destino (apenas destinos com 5 ou mais)
-- Filtra grupos usando HAVING
SELECT destino, COUNT(*) AS QtdViagens
FROM viagem
GROUP BY destino
HAVING COUNT(*) >= 5;

-- 2. Faturamento total por destino
-- Soma os valores da tabela clienteViagem agrupados pelo destino da viagem
SELECT v.destino, SUM(cv.valor) AS TotalArrecadado
FROM viagem v
JOIN clienteViagem cv ON v.viagemID = cv.viagemID
GROUP BY v.destino;

-- 3. Clientes que viajaram em ônibus sem Wi-Fi para Araguaína
-- Conecta 4 tabelas para filtrar pelo destino E pela característica do ônibus
SELECT DISTINCT c.nome
FROM cliente c
JOIN clienteViagem cv ON c.clienteID = cv.clienteID
JOIN viagem v ON cv.viagemID = v.viagemID
JOIN onibus o ON v.onibusID = o.onibusID
WHERE o.wifi = '0' AND v.destino = 'Araguaína';

-- 4. Ranking de clientes por quantidade de viagens
-- Conta quantos registros existem em clienteViagem para cada cliente
SELECT c.nome, COUNT(cv.viagemID) AS TotalViagens
FROM cliente c
JOIN clienteViagem cv ON c.clienteID = cv.clienteID
GROUP BY c.nome
ORDER BY TotalViagens DESC;

-- 5. Listagem de viagens com ônibus com Wi-Fi
-- Mostra dados da viagem e do ônibus onde wifi é '1'
SELECT v.data, v.destino, o.placa
FROM viagem v
JOIN onibus o ON v.onibusID = o.onibusID
WHERE o.wifi = '1';

-- 6. Histórico de destinos por cliente (sem repetições)
-- O DISTINCT evita mostrar "Araguaína" duas vezes se o cliente foi lá duas vezes
SELECT DISTINCT c.nome, v.destino
FROM cliente c
JOIN clienteViagem cv ON c.clienteID = cv.clienteID
JOIN viagem v ON cv.viagemID = v.viagemID;

-- 7. Ônibus nunca utilizados
-- Usa LEFT JOIN: se o lado da viagem for NULO, o ônibus nunca viajou
SELECT o.placa, o.onibusID
FROM onibus o
LEFT JOIN viagem v ON o.onibusID = v.onibusID
WHERE v.viagemID IS NULL;

-- 8. Ranking de gastos por cliente
-- Soma tudo que cada cliente já pagou, do maior para o menor
SELECT c.nome, SUM(cv.valor) AS TotalGasto
FROM cliente c
JOIN clienteViagem cv ON c.clienteID = cv.clienteID
GROUP BY c.nome
ORDER BY TotalGasto DESC;

-- 9. Estatísticas por destino: Qtde viagens e Média de preço
-- Calcula a média (AVG) dos valores pagos nas passagens para aquele local
SELECT v.destino, 
       COUNT(DISTINCT v.viagemID) AS NumeroDeViagens, 
       AVG(cv.valor) AS MediaValorPago
FROM viagem v
JOIN clienteViagem cv ON v.viagemID = cv.viagemID
GROUP BY v.destino;

-- 10. Total de passageiros transportados por ônibus
-- Conta quantos clientes passaram por cada placa de ônibus
SELECT o.placa, COUNT(cv.clienteID) AS TotalPassageiros
FROM onibus o
JOIN viagem v ON o.onibusID = v.onibusID
JOIN clienteViagem cv ON v.viagemID = cv.viagemID
GROUP BY o.placa;

-- 11. Maior valor pago em uma passagem por destino
-- Função MAX encontra a passagem mais cara vendida para cada lugar
SELECT v.destino, MAX(cv.valor) AS MaiorValorPago
FROM viagem v
JOIN clienteViagem cv ON v.viagemID = cv.viagemID
GROUP BY v.destino;

-- 12. Clientes fiéis (mais de uma viagem para o mesmo destino)
-- Agrupa por Cliente E Destino, e filtra quem tem contagem > 1
SELECT c.nome, v.destino, COUNT(*) AS QtdViagens
FROM cliente c
JOIN clienteViagem cv ON c.clienteID = cv.clienteID
JOIN viagem v ON cv.viagemID = v.viagemID
GROUP BY c.nome, v.destino
HAVING COUNT(*) > 1;

-- 13. Diversidade de clientes por destino
-- Conta clientes DISTINTOS (se o mesmo cliente foi 3x, conta como 1)
SELECT v.destino, COUNT(DISTINCT cv.clienteID) AS QtdClientesDiferentes
FROM viagem v
JOIN clienteViagem cv ON v.viagemID = cv.viagemID
GROUP BY v.destino;

-- 14. Apagar clientes que viajaram para Gurupi
-- Usa uma subconsulta para encontrar os IDs dos clientes que foram a Gurupi
DELETE FROM cliente
WHERE clienteID IN (
    SELECT cv.clienteID
    FROM clienteViagem cv
    JOIN viagem v ON cv.viagemID = v.viagemID
    WHERE v.destino = 'Gurupi'
);

-- 15. Apagar o ônibus ID 5 mantendo as viagens (Setar como NULL)
-- Primeiro desvincula o ônibus das viagens (atualiza para NULL)
UPDATE viagem 
SET onibusID = NULL 
WHERE onibusID = 5;

-- Depois apaga o ônibus
DELETE FROM onibus 
WHERE onibusID = 5;