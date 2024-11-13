-- Criação da tabela Restaurante
create database restaurante;

-- Banco de dados utilizado
use restaurante;

-- Criação da tabela
create table funcionarios(
	id_funcionario int primary key auto_increment,
    nome varchar(255),
    cpf varchar (14),
    data_nascimento date,
    endereco varchar (255),
    telefone varchar (100),
    email varchar (100),
    cargo varchar (100),
    salario decimal (10,2),
    data_admissao date
);

-- Visualização da tabela
show tables;

-- Criação de tabela
create table cliente(
	id_cliente int primary key auto_increment,
    nome varchar (255),
    cpf varchar (14),
    data_nascimento date,
    endereco varchar (255),
    telefone varchar (15),
    email varchar (100),
    data_cadastro date
);

-- Criação da tabela
create table produtos(
	id_produto int primary key auto_increment,
    nome varchar (255),
    descricao text,
    preco decimal (10,2),
    categoria varchar (100)
);

-- Criação de tabela
create table pedidos(
	id_pedido int primary key auto_increment,
    id_cliente int,
    id_funcionario int,
    id_produto int,
    quantidade int,
    preco decimal (10,2),
    data_pedido date,
    status varchar (50),
    foreign key (id_cliente) references cliente (id_cliente),
    foreign key (id_funcionario) references funcionarios (id_funcionario),
    foreign key (id_produto) references produtos (id_produto)
);

-- Criação de tabela
create table info_produtos(
	id_info int primary key auto_increment,
    id_produto int,
    ingredientes text,
    fornecedor varchar (255),
    foreign key (id_produto) references produtos (id_produto)
);

-- Selecionando o Banco de Dados
use restaurante;

-- Selecionar Tabela
select * from funcionarios;

-- Inserir registro tópico 2
insert into funcionarios (nome, cpf, data_nascimento, endereco, telefone, email, cargo, salario, data_admissao) values
						 ('Ricardo Souza', '111.222.333-44', '1992-05-12', 'Rua Harmonia 157, São Paulo', '11987651234', 'ricardo.sousa@email.com', 'Chefe de Cozinha', '6000.00', '2019-03-15');  

-- Inserir registro tópico 3
insert into funcionarios (nome, cpf, data_nascimento, endereco, telefone, email, cargo, salario, data_admissao) values
						 ('Lívia Castro', '222.333.444-55', '1989-11-25', 'Av. Rebouças 1234, São Paulo', '11987653421', 'livia.castro@email.com', 'Subgerente', 5500.00, '2019-06-20'),
						 ('Marcos Lima', '333.444.555-66', '1985-04-17', 'Rua Augusta 2020, São Paulo', '11987655678', 'marcos.lima@email.com', 'Barman', 2800.00, '2020-01-10'),
						 ('Carla Mendes', '444.555.666-77', '1993-07-03', 'Av. Paulista 1853, São Paulo', '11987659876', 'carla.mendes@email.com', 'Atendente', 2600.00, '2020-07-15'),
						 ('Tiago Nunes', '555.666.777-88', '1978-08-12', 'Rua Funchal 500, São Paulo', '11987656789', 'tiago.nunes@email.com', 'Sommelier', 3400.00, '2021-04-22'),
						 ('Cláudia Vieira', '666.777.888-99', '1981-01-19', 'Alameda Lorena 1300, São Paulo', '11987657890', 'claudia.vieira@email.com', 'Cozinheira', 3200.00, '2021-08-30'),
						 ('Pedro Martins', '777.888.999-00', '1983-12-05', 'Rua dos Pinheiros 800, São Paulo', '11987658901', 'pedro.martins@email.com', 'Garçom', 2700.00, '2022-03-15'),
						 ('Fernanda Rocha', '888.999.000-11', '1990-09-27', 'Av. Faria Lima 1500, São Paulo', '11987659012', 'fernanda.rocha@email.com', 'Garçonete', 2700.00, '2022-05-20'),
						 ('André Costa', '999.000.111-22', '1986-03-14', 'Rua Bela Cintra 985, São Paulo', '11987660123', 'andre.costa@email.com', 'Gerente', 4700.00, '2022-10-10'),
						 ('Sofia Alves', '000.111.222-33', '1995-06-01', 'Rua Consolação 1235, São Paulo', '11987661234', 'sofia.alves@email.com', 'Recepcionista', 2400.00, '2023-01-01');

-- Selecionar Tabela
select * from cliente;

-- Inserir registro tópico 4
insert into cliente values (null, 'Lucas Silva', '123.456.789-01', '1990-01-15', 'Av. Brigadeiro Faria Lima, 1571, São Paulo', '11987651234', 'lucas.silva@email.com', '2023-01-12');

-- Inserir registro tópico 5
insert into cliente values (null, 'Ana Paula', '234.567.890-12', '1985-03-22', 'Rua Oscar Freire, 1290, São Paulo', '11987652345', 'ana.paula@email.com', '2023-01-12'),
						   (null, 'Rafael Costa', '345.678.901-23', '1992-07-18', 'Av. Paulista, 1844, São Paulo', '11987653456', 'rafael.costa@email.com', '2023-01-12'),
						   (null, 'Camila Rodrigues', '456.789.012-34', '1988-05-24', 'Rua Augusta, 2530, São Paulo', '11987654567', 'camila.rodrigues@email.com', '2023-01-12'),
						   (null, 'Eduardo Santos', '567.890.123-45', '1975-11-30', 'Alameda Santos, 980, São Paulo', '11987655678', 'eduardo.santos@email.com', '2023-01-12'),
						   (null, 'Fernanda Lima', '678.901.234-56', '1994-04-15', 'Rua da Consolação, 2000, São Paulo', '11987656789', 'fernanda.lima@email.com', '2023-01-12'),
						   (null, 'Gustavo Pereira', '789.012.345-67', '1982-02-28', 'Av. Rebouças, 3001, São Paulo', '11987657890', 'gustavo.pereira@email.com', '2023-01-12'),
						   (null, 'Juliana Machado', '890.123.456-78', '1996-09-14', 'Av. Brasil, 1620, São Paulo', '11987658901', 'juliana.machado@email.com', '2023-01-12'),
						   (null, 'Marcos Ribeiro', '901.234.567-89', '1991-12-12', 'Rua Bela Cintra, 1225, São Paulo', '11987659012', 'marcos.ribeiro@email.com', '2023-01-12'),
						   (null, 'Patricia Almeida', '912.345.678-90', '1987-06-19', 'Rua Haddock Lobo, 1327, São Paulo', '11987660123', 'patricia.almeida@email.com', '2023-01-12'),
						   (null, 'Roberto Nunes', '923.456.789-01', '1979-03-21', 'Av. Nove de Julho, 2045, São Paulo', '11987661234', 'roberto.nunes@email.com', '2023-01-12'),
						   (null, 'Sandra Gomes', '934.567.890-12', '1984-08-10', 'Rua Pamplona, 1453, São Paulo', '11987662345', 'sandra.gomes@email.com', '2023-01-12'),
						   (null, 'Tiago Souza', '945.678.901-23', '1989-01-15', 'Av. Europa, 784, São Paulo', '11987663456', 'tiago.souza@email.com', '2023-01-12'),
						   (null, 'Vanessa Moraes', '956.789.012-34', '1974-10-23', 'Rua Amauri, 350, São Paulo', '11987664567', 'vanessa.moraes@email.com', '2023-01-12'),
						   (null, 'Daniel Oliveira', '967.890.123-45', '1993-12-11', 'Rua dos Pinheiros, 900, São Paulo', '11987665678', 'daniel.oliveira@email.com', '2023-01-12'),
						   (null, 'Maria Clara', '978.901.234-56', '1998-03-05', 'Av. Ibirapuera, 3103, São Paulo', '11987666789', 'maria.clara@email.com', '2023-01-12'),
					   	   (null, 'João Pedro', '989.012.345-67', '1981-05-27', 'Rua Tabapuã, 1123, São Paulo', '11987667890', 'joao.pedro@email.com', '2023-01-12'),
						   (null, 'Larissa Fonseca', '991.123.456-78', '1986-11-09', 'Av. Cidade Jardim, 400, São Paulo', '11987668901', 'larissa.fonseca@email.com', '2023-01-12'),
						   (null, 'Henrique Silva', '992.234.567-89', '1990-02-14', 'Av. São Gabriel, 477, São Paulo', '11987669012', 'henrique.silva@email.com', '2023-01-12'),
						   (null, 'Isabela Freitas', '993.345.678-90', '1994-07-20', 'Rua Veneza, 1000, São Paulo', '11987670123', 'isabela.freitas@email.com', '2023-01-12'),
						   (null, 'Giovanna Rocha', '994.456.789-01', '1987-12-01', 'Rua Artur Azevedo, 1767, São Paulo', '11987671234', 'giovanna.rocha@email.com', '2023-01-12'),
						   (null, 'Leonardo Alves', '995.567.890-12', '1988-01-22', 'Rua Joaquim Antunes, 760, São Paulo', '11987672345', 'leonardo.alves@email.com', '2023-01-12'),
						   (null, 'Beatriz Santos', '996.678.901-23', '1976-06-16', 'Av. Santo Amaro, 1230, São Paulo', '11987673456', 'beatriz.santos@email.com', '2023-01-12'),
						   (null, 'Carlos Eduardo', '997.789.012-34', '1972-04-04', 'Rua Estados Unidos, 1457, São Paulo', '11987674567', 'carlos.eduardo@email.com', '2023-01-12'),
						   (null, 'Fábio Lopes', '998.890.123-45', '1989-08-12', 'Av. das Nações Unidas, 1889, São Paulo', '11987675678', 'fabio.lopes@email.com', '2023-01-12'),
						   (null, 'Tatiane Costa', '999.901.234-56', '1995-10-30', 'Rua Guarará, 532, São Paulo', '11987676789', 'tatiane.costa@email.com', '2023-01-12'),
						   (null, 'Ricardo Mendonça', '991.012.345-67', '1980-03-17', 'Rua Pedroso Alvarenga, 1100, São Paulo', '11987677890', 'ricardo.mendonca@email.com', '2023-01-12'),
						   (null, 'Elisa Carvalho', '992.123.456-78', '1997-05-25', 'Av. Roque Petroni Júnior, 1089, São Paulo', '11987678901', 'elisa.carvalho@email.com', '2023-01-12'),
						   (null, 'Flávio Barros', '993.234.567-89', '1985-09-19', 'Rua Gomes de Carvalho, 1356, São Paulo', '11987679012', 'flavio.barros@email.com', '2023-01-12'),
						   (null, 'Priscila Ribeiro', '994.345.678-90', '1983-07-28', 'Rua Bandeira Paulista, 982, São Paulo', '11987680123', 'priscila.ribeiro@email.com', '2023-01-12');

-- Selecionar Tabela
select * from produtos;

-- Inserir registro tópico 6
insert into produtos values (null, 'Feijoada', 'Feijoada completa com arroz, farofa, couve e laranja.', 29.90, 'Prato Principal'),
						   (null, 'Picanha na Chapa', 'Picanha fatiada servida com alho, arroz, farofa e vinagrete.', 42.00, 'Prato Principal'),
						   (null, 'Moqueca Baiana', 'Moqueca de peixe e camarão, acompanhada de arroz branco e pirão.', 37.50, 'Prato Principal'),
						   (null, 'Bobó de Camarão', 'Camarão cozido em creme de mandioca e azeite de dendê, servido com arroz.', 45.00, 'Prato Principal'),
						   (null, 'Bacalhau à Brás', 'Bacalhau desfiado, preparado com batata palha, ovos e cebola.', 38.00, 'Prato Principal'),
						   (null, 'Coxinha de Frango', 'Massa de batata com recheio cremoso de frango, servida frita.', 6.50, 'Aperitivo'),
						   (null, 'Pastel de Carne', 'Pastel frito com recheio de carne moída temperada.', 5.00, 'Aperitivo'),
						   (null, 'Pastel de Queijo', 'Pastel frito com recheio de queijo derretido.', 5.00, 'Aperitivo'),
						   (null, 'Empada de Palmito', 'Empada de massa podre recheada com creme de palmito.', 6.00, 'Aperitivo'),
						   (null, 'Risoto de Camarão', 'Risoto de camarão com toque de limão siciliano e alho-poró.', 36.00, 'Prato Principal'),
						   (null, 'Escondidinho de Carne Seca', 'Purê de mandioca com recheio de carne seca e queijo coalho.', 32.00, 'Prato Principal'),
						   (null, 'Salada Caprese', 'Tomate, muçarela de búfala e manjericão, com azeite e vinagre balsâmico.', 22.00, 'Entrada'),
						   (null, 'Polenta Mole com Ragú de Linguiça', 'Polenta cremosa servida com ragú de linguiça e molho de tomate.', 28.00, 'Prato Principal'),
						   (null, 'Frango à Parmegiana', 'Peito de frango empanado coberto com queijo e molho de tomate, servido com arroz e fritas.', 35.00, 'Prato Principal'),
						   (null, 'Salmão Grelhado', 'Salmão grelhado servido com legumes no vapor e molho de alcaparras.', 42.00, 'Prato Principal'),
						   (null, 'Caipirinha de Limão', 'Tradicional caipirinha brasileira feita com cachaça, limão e açúcar.', 15.00, 'Bebida'),
						   (null, 'Suco de Maracujá', 'Suco natural de maracujá.', 8.00, 'Bebida'),
						   (null, 'Chopp Gelado', 'Chopp claro, servido bem gelado.', 7.50, 'Bebida'),
						   (null, 'Mousse de Maracujá', 'Sobremesa leve e refrescante à base de maracujá.', 12.00, 'Sobremesa'),
						   (null, 'Pudim de Leite', 'Pudim de leite condensado com calda de caramelo.', 10.00, 'Sobremesa');

-- Selecionar Tabela
select * from info_produtos;

-- Inserir registro tópico 7
insert into info_produtos values (null, 1, 'Feijão preto, carne seca, costelinha, linguiça, arroz, farinha, couve, laranja', 'Distribuidora Central'),
								 (null, 2, 'Picanha, alho, arroz, farofa, vinagrete', 'Carnes Boi Nobre'),
								 (null, 3, 'Peixe, camarão, leite de coco, azeite de dendê, arroz, farinha', 'Mar & Terra Distribuidora'),
								 (null, 4, 'Camarão, mandioca, leite de coco, azeite de dendê, arroz', 'Mar & Terra Distribuidora'),
								 (null, 5, 'Bacalhau, batata, ovo, cebola, azeite', 'Importadora Lisboa'),
								 (null, 6, 'Frango, batata, massa de trigo', 'Avícola São José'),
								 (null, 7, 'Carne moída, massa de trigo', 'Carnes Boi Nobre'),
								 (null, 8, 'Queijo, massa de trigo', 'Laticínios Vale do Sereno'),
								 (null, 9, 'Palmito, massa de trigo, creme de leite', 'Conservas Sabor da Terra'),
								 (null, 10, 'Camarão, arroz arbóreo, limão siciliano, alho-poró', 'Mar & Terra Distribuidora'),
								 (null, 11, 'Carne seca, mandioca, queijo coalho', 'Carnes Boi Nobre e Laticínios Vale do Sereno'),
								 (null, 12, 'Tomate, muçarela de búfala, manjericão', 'Queijaria Bela Vista e Horta Santa Luzia'),
								 (null, 13, 'Linguiça, polenta, molho de tomate', 'Carnes Boi Nobre e Moinho Dourado'),
								 (null, 14, 'Frango, queijo, molho de tomate, arroz, batata', 'Avícola São José e Laticínios Vale do Sereno'),
								 (null, 15, 'Salmão, legumes, alcaparras', 'Pescados do Norte e Hortifruti Natural da Terra'),
								 (null, 16, 'Cachaça, limão, açúcar', 'Destilaria Nacional'),
								 (null, 17, 'Maracujá', 'Hortifruti Natural da Terra'),
								 (null, 18, 'Malte, lúpulo', 'Cervejaria do Vale'),
								 (null, 19, 'Maracujá, creme de leite, açúcar', 'Hortifruti Natural da Terra e Laticínios Vale do Sereno'),
								 (null, 20, 'Leite condensado, ovos, açúcar', 'Laticínios Vale do Sereno');

-- Selecionar Tabela
select * from pedidos;

-- Inserir registro tópico 8
insert into pedidos (id_pedido, id_cliente, id_funcionario, id_produto, quantidade, data_pedido, status) values
					(null, 1, 4, 1, 2, '2024-07-01', 'Concluído'),
                    (null, 3, 4, 2, 1, '2024-07-01', 'Concluído'),
					(null, 6, 7, 3, 1, '2024-07-01', 'Concluído'),
					(null, 8, 7, 4, 3, '2024-07-01', 'Concluído'),
					(null, 10, 8, 5, 2, '2024-07-02', 'Pendente'),
					(null, 15, 8, 6, 4, '2024-07-02', 'Concluído'),
					(null, 22, 4, 7, 3, '2024-07-02', 'Concluído'),
					(null, 18, 4, 8, 2, '2024-07-02', 'Concluído'),
					(null, 4, 7, 9, 5, '2024-07-02', 'Concluído'),
					(null, 6, 7, 10, 1, '2024-07-03', 'Concluído'),
					(null, 9, 8, 11, 3, '2024-07-03', 'Concluído'),
					(null, 11, 8, 12, 1, '2024-07-03', 'Concluído'),
					(null, 24, 4, 13, 2, '2024-07-03', 'Concluído'),
					(null, 27, 4, 14, 1, '2024-07-03', 'Concluído'),
					(null, 17, 7, 15, 2, '2024-07-03', 'Concluído'),
					(null, 7, 7, 16, 3, '2024-07-04', 'Concluído'),
					(null, 13, 8, 17, 2, '2024-07-04', 'Concluído'),
					(null, 25, 8, 18, 4, '2024-07-04', 'Concluído'),
					(null, 22, 4, 19, 1, '2024-07-04', 'Concluído'),
					(null, 2, 4, 20, 2, '2024-07-04', 'Concluído'),
					(null, 8, 7, 2, 1, '2024-07-04', 'Concluído'),
					(null, 11, 7, 3, 2, '2024-07-05', 'Concluído'),
					(null, 18, 8, 4, 3, '2024-07-05', 'Concluído'),
					(null, 22, 8, 5, 1, '2024-07-05', 'Concluído'),
					(null, 19, 4, 6, 4, '2024-07-05', 'Concluído'),
					(null, 28, 4, 7, 3, '2024-07-05', 'Concluído'),
					(null, 1, 7, 8, 2, '2024-07-05', 'Concluído'),
					(null, 7, 7, 9, 5, '2024-07-05', 'Concluído'),
					(null, 19, 8, 10, 1, '2024-07-05', 'Concluído'),
					(null, 15, 8, 11, 3, '2024-07-05', 'Concluído'),
					(null, 24, 4, 12, 1, '2024-07-05', 'Concluído'),
					(null, 12, 4, 13, 2, '2024-07-05', 'Concluído'),
					(null, 4, 7, 14, 1, '2024-07-05', 'Concluído'),
					(null, 9, 7, 15, 2, '2024-07-06', 'Concluído'),
					(null, 18, 8, 16, 3, '2024-07-06', 'Concluído'),
					(null, 5, 8, 17, 2, '2024-07-06', 'Pendente'),
					(null, 22, 4, 18, 4, '2024-07-06', 'Concluído'),
					(null, 14, 4, 19, 1, '2024-07-06', 'Pendente'),
					(null, 19, 7, 20, 2, '2024-07-06', 'Concluído'),
					(null, 8, 7, 1, 2, '2024-07-06', 'Pendente'),
					(null, 7, 8, 2, 1, '2024-07-06', 'Concluído'),
					(null, 4, 8, 3, 2, '2024-07-06', 'Pendente'),
					(null, 21, 4, 4, 3, '2024-07-06', 'Concluído'),
					(null, 4, 4, 5, 1, '2024-07-06', 'Pendente'),
					(null, 13, 7, 6, 4, '2024-07-06', 'Concluído'),
					(null, 25, 7, 7, 3, '2024-07-06', 'Pendente'),
					(null, 7, 8, 8, 2, '2024-07-06', 'Concluído'),
					(null, 7, 8, 8, 2, '2024-07-06', 'Concluído'),
					(null, 12, 4, 10, 1, '2024-07-06', 'Concluído'),
					(null, 10, 4, 11, 3, '2024-07-06', 'Pendente');
					
-- Selecionar Tabela Tópico 9
select * from funcionarios;
select * from cliente;
select * from produtos;
select * from info_produtos;
select * from pedidos;

-- Desativando modo segurança
SET SQL_SAFE_UPDATES = 0;

-- Atualizar Cargo e Salário Tópico 10
select * from funcionarios;
update funcionarios
set cargo = 'Garçonete' , salario = '2700'
where cpf = '444.555.666-77';

-- Atualização de pedidos Tópico 11
SELECT * 
FROM pedidos
WHERE data_pedido < '2024-07-06';

UPDATE pedidos
SET status = 'Concluído'
WHERE data_pedido < '2024-07-06';

-- Remover funcionario
SELECT * 
FROM funcionarios
WHERE cpf = '222.333.444-55';

delete from funcionarios
WHERE cpf = '222.333.444-55';

-- Ativação modo segurança
SET SQL_SAFE_UPDATES = 1;

use restaurante;

-- Selecionando preço > 30
select nome, categoria from produtos where preco > 30;

-- Selecionando nascidos antes de 1985
select nome, telefone, data_nascimento from cliente where year(data_nascimento)  < 1985;

-- Selecionando ingrediente que contenham carne
select id_produto, ingredientes from info_produtos where ingredientes like '%carne%';

-- Selecionando ordem alfabética
select nome, categoria from produtos order by categoria, nome;

-- Selecionando os produtos mais caros
select nome, preco from produtos order by preco desc limit 5;

-- Selecionando 2 pratos principais
select nome, preco from produtos where categoria = 'prato principal' limit 2 offset 6;

-- Criando tabela backup pedidos
create table backup_pedidos like pedidos;

-- Fazendo backup da tabela pedidos
insert into backup_pedidos select * from pedidos;



-- Selecionando o banco de dados 
use restaurante;

-- Selecionando pedidos onde id funcionario = 4 e pendente
select * from pedidos
where id_funcionario = 4 and status = 'pendente';

-- Selecionando todos os pedidos não concluídos
select * from pedidos
where status <> 'concluido';

-- Selecionando pedidos com id (1,3,5,7 ou 8)
select * from pedidos
where id_produto in (1, 3, 5, 7, 8);

-- Selecionando cliente que começam com C
select * from cliente
where nome like 'c%';

-- Selecionando informações dos produtos carne ou frango
select * from info_produtos
where ingredientes like '%carne%' or ingredientes like '%frango%';
 
 -- Selecionando produtos com preço entre 20 a 30
 select * from produtos
 where preco between 20 and 30;
 
 -- Atualizar id pedido 6, status null
 select * from pedidos
 where id_pedido = 6;
 
 update pedidos
 set status = null
 where id_pedido = 6;
 
 -- Selecionar pedidos nulos
 select * from pedidos
 where status is null;

 -- Selecionar id pedido e status, mostrando resultado nulo 'cancelado'
 select id_pedido, coalesce(status, 'cancelado') as status
 from pedidos;
 
-- Selecionando e adiconando campo de média salarial (usando IF)
select nome, cargo, salario,
		if(salario > 3000, 'acima da media', 'abaixo da media') as media_salarial
from funcionarios;

-- Selecionando e adiconando campo de média salarial (usando CASE)
select nome, cargo, salario,
	case
		when salario > 3000 then 'acima da media'
		else 'abaixo da media'
	end as media_salarial
from funcionarios;



-- Selecionando banco de dados
use restaurante;

-- Calculando a quantidade de pedidos
select count(*) from pedidos;

-- Calculando a quantidade de clientes únicos
select count(distinct id_cliente) as quant_cliente_unicos from pedidos;

-- Calculando a média dos preços dos produtos
select round(avg(preco), 2) as media_preco from produtos;

-- Calculando máximo e mínimo
select
	max(preco) as maximo,
	min(preco) as maximo 
from produtos;

-- Rank dos 5 produtos mais caros
select nome, preco, rank() over (order by preco desc) as ranking_preco from produtos limit 5;

-- Selecionando a media dos preços agrupado por categoria
select categoria, round(avg(preco), 2) as media_produtos_categoria
from produtos 
group by categoria;

-- Selecionar informações do fornecedor 
select fornecedor, count(*) as total_produtos
from info_produtos 
group by fornecedor 
order by total_produtos desc;

-- Selecionando fornecedores que possuem amis de um produto cadastrado
select fornecedor, count(*) as total_produtos 
from info_produtos 
group by fornecedor 
having count(*) > 1 
order by total_produtos desc;

-- Selecionar cliente que realizaram apenas 1 pedido
SELECT id_cliente
FROM pedidos
GROUP BY id_cliente
HAVING COUNT(*) = 1;



-- Selecionando banco de dados
use restaurante;

-- Selecionando tabela pedidos com info_produtos 
select produtos.id_produto, produtos.nome, produtos.descricao, info_produtos.ingredientes
from produtos
inner join info_produtos 
on produtos.id_produto = info_produtos.id_produto;

-- Selecionando tabela pedidos com clientes
select p.id_pedido, p.quantidade, p.data_pedido, c.nome, c.email
from pedidos as p
inner join cliente as c
on p.id_cliente = c.id_cliente;

-- Selecionando tabela pedidos, cliente e funcionarios
select p.id_pedido, p.quantidade, p.data_pedido, c.nome, c.email, f.nome
from pedidos as p
inner join cliente as c on p.id_cliente = c.id_cliente
inner join funcionarios as f on p.id_funcionario = f.id_funcionario;

-- Selecionando tabela pedidos, cliente,funcionarios e produtos
select 
	p.id_pedido, p.quantidade, p.data_pedido,
	c.nome as nome_cliente, c.email,
	f.nome as nome_funcionario,  
	pr.nome as nome_produto, pr.preco
from 
	pedidos p
inner join 
	cliente c 
    on p.id_cliente = c.id_cliente
inner join 
	funcionarios f 
    on p.id_funcionario = f.id_funcionario
inner join 
	produtos pr 
    on p.id_produto = pr.id_produto;

-- Selecionando nome dos clientes com status 'pendente' 
select
	c.nome as nome_clientes,
    p.id_pedido, p.status 
from cliente c
inner join 
	pedidos p
	on c.id_cliente = p.id_cliente
where p.status = 'pendente'
order by p.id_pedido desc;
	
-- Selecionando clientes sem pedidos
select 
	c.nome as nome_clientes,
    p.id_pedido
from cliente c
left join 
	pedidos p
    on c.id_cliente = p.id_cliente
where p.status is null;

-- Selecionando o nome e total pedidos
select 
	c.nome as nome_cliente,
    count(p.id_cliente) as total_pedidos
from cliente c
inner join 
	pedidos p
    on c.id_cliente = p.id_cliente
group by c.nome
order by total_pedidos desc;

-- Selecionando o preço total de cada pedido
select 
	p.id_pedido,
    pr.nome as nome_prato,
	sum(p.quantidade * pr.preco) as preco_total
from pedidos p
inner join
	produtos pr
    on p.id_produto = pr.id_produto
group by p.id_pedido, pr.nome order by preco_total desc;



-- Selecionando banco de dados
use restaurante;

-- Criando uma view
create view resumo_pedido as
select 
	p.id_pedido, p.quantidade, p.data_pedido,
	c.nome as nome_cliente, c.email,
	f.nome as nome_funcionario,  
	pr.nome as nome_produto, pr.preco
from 
	pedidos p
inner join 
	cliente c 
    on p.id_cliente = c.id_cliente
inner join 
	funcionarios f 
    on p.id_funcionario = f.id_funcionario
inner join 
	produtos pr 
    on p.id_produto = pr.id_produto;

-- Selecionando total de pedidos de cada cliente
SELECT 
    id_pedido, 
    nome_cliente, 
    quantidade * preco AS total_pedido
FROM 
    resumo_pedido;

-- Atualizando a view
create or replace view resumo_pedido as
select 
	p.id_pedido, p.quantidade, p.data_pedido,
	c.nome as nome_cliente, c.email,
	f.nome as nome_funcionario,  
	pr.nome as nome_produto, pr.preco,
    (p.quantidade * pr.preco) AS total
from 
	pedidos p
inner join 
	cliente c 
    on p.id_cliente = c.id_cliente
inner join 
	funcionarios f 
    on p.id_funcionario = f.id_funcionario
inner join 
	produtos pr 
    on p.id_produto = pr.id_produto
order by total desc;

-- Consulta utilizando campo total
SELECT 
    id_pedido, 
    nome_cliente, 
    total
FROM 
    resumo_pedido;

-- Consulta utilizando o explain
explain select 
    id_pedido, 
    nome_cliente, 
    total
FROM 
    resumo_pedido;


-- Criando uma função 'BuscaIngredientesProdutos'
delimiter //
create function BuscaIngredientesProdutos (id_Produto int)
returns varchar(200)
reads sql data
begin
	declare ingredientesProdutos varchar(200);
    select ingredientes into ingredientesProdutos
    from info_produtos
    where id_produto = id_Produto limit 1;
    return ingredientesProdutos;
end //
delimiter ;

-- Executando a função
select BuscaIngredientesProdutos(10);

  select * from produtos;
-- Criando uma função 'mediaPedido'
delimiter //
create function mediaPedido (id_Pedido int)
returns varchar(50)
reads sql data
begin
	declare QuantidadePedido INT;		-- Armazena a quantidade de pedidos
	declare MediaPedido decimal(10 ,2); 	-- Armazena a média de pedidos
    declare Mensagem varchar(100); 		-- Armazena a mensagem que será retornada
    
    -- Obtém a quantidade de pedidos
	select quantidade into QuantidadePedido
	from pedidos
    where id_pedido = id_Pedido limit 1;
    
    -- Obtém a média dos pedidos
    select avg(quantidade) into MediaPedido
    from pedidos;
    
    -- Compara a quantidade com a média e define uma mensagem
    if QuantidadePedido > MediaPedido then 
		set Mensagem = 'Acima da Média';
    
    elseif QuantidadePedido < MediaPedido then
		set Mensagem = 'Abaixo da Média';
    
    else 
		set Mensagem = 'Na Média';
	end if;
    
    return Mensagem;
end //
delimiter ;
    
-- Executando a função 'mediaPedido'
select mediaPedido(5);    

select mediaPedido(6); 

















