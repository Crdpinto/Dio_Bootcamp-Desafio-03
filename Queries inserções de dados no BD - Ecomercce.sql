
use ecommerce;

show tables;

insert into Cliente (Pnome, Nome_do_meio, Sobrenome, CPF_CNPJ, Endereco, Telefone, Email, Data_de_Nascimento) values
('Carlos', 'A', 'Silva', '12345678901', 'Rua das Flores, 123 - Copacabana', '21987654321', 'carlos.silva@email.com', '1985-03-15'),
('Maria', 'B', 'Oliveira', '98765432100', 'Avenida Brasil, 456 - Ipanema', '21987654322', 'maria.oliveira@email.com', '1990-07-21'),
('João', 'C', 'Santos', '11122233344', 'Rua do Carmo, 789 - Botafogo', '21987654323', 'joao.santos@email.com', '1975-12-30'),
('Ana', 'D', 'Martins', '22233344455', 'Rua Nova, 101 - Leblon', '21987654324', 'ana.martins@email.com', '1988-06-10'),
('Pedro', 'E', 'Lima', '33344455566', 'Avenida Rio, 202 - Copacabana', '21987654325', 'pedro.lima@email.com', '1982-09-25'),
('Lucas', 'F', 'Almeida', '44455566677', 'Rua Verde, 303 - Barra da Tijuca', '21987654326', 'lucas.almeida@email.com', '1995-02-17'),
('Fernanda', 'G', 'Barbosa', '55566677788', 'Avenida Mar, 404 - Flamengo', '21987654327', 'fernanda.barbosa@email.com', '1987-04-12'),
('Bruno', 'H', 'Costa', '66677788899', 'Rua Azul, 505 - Ipanema', '21987654328', 'bruno.costa@email.com', '1992-11-08'),
('Julia', 'I', 'Ferreira', '77788899900', 'Avenida Sol, 606 - Tijuca', '21987654329', 'julia.ferreira@email.com', '1998-01-22'),
('Gabriel', 'J', 'Ramos', '88899900011', 'Rua Lua, 707 - Copacabana', '21987654330', 'gabriel.ramos@email.com', '1983-08-15');

select * from cliente;

insert into Fornecedor (Razao_Social, CNPJ, Contato) values
('Tech Eletrônicos LTDA', '01234567890123', '21987654324'),
('Moda Fashion S/A', '98765432109876', '21987654325'),
('Brinquedos Divertidos', '11122233344455', '21987654326'),
('Casa dos Móveis', '22233344455667', '21987654327'),
('Alimentos Saudáveis', '33344455566778', '21987654328'),
('Esporte & Lazer', '44455566677889', '21987654329'),
('Livros & Cultura', '55566677788990', '21987654330'),
('Beleza & Cuidado', '66677788899001', '21987654331'),
('Ferramentas & Jardim', '77788899900112', '21987654332'),
('Pet Shop', '88899900011223', '21987654333');

select * from Fornecedor;

insert into Estoque (Local, Quantidade) values
('Armazém Central', 100),
('Depósito Sul', 200),
('Centro de Distribuição Norte', 150),
('Armazém Leste', 180),
('Depósito Oeste', 170),
('Centro de Distribuição Sul', 160),
('Armazém Nordeste', 140),
('Depósito Sudeste', 190),
('Centro de Distribuição Centro-Oeste', 130),
('Armazém Norte', 120);

select * from estoque;

insert into Produto (Nome_do_Produto, Categoria, Classificacao_kids, Descricao, Valor, Avaliacao, Size) values
('Smartphone X', 'Eletrônico', false, 'Smartphone de última geração', 2999.99, 4.5, 'Médio'),
('Camiseta Básica', 'Vestuário', false, 'Camiseta de algodão', 49.99, 4.0, 'M'),
('Carrinho de Brinquedo', 'Brinquedo', true, 'Carrinho de brinquedo para crianças', 79.99, 4.8, 'Pequeno'),
('Geladeira Inverter', 'Eletrônico', false, 'Geladeira com tecnologia inverter', 1999.99, 4.6, 'Grande'),
('Mesa de Jantar', 'Móveis', false, 'Mesa de jantar de madeira', 799.99, 4.7, 'Grande'),
('Tênis Esportivo', 'Vestuário', false, 'Tênis para corrida', 299.99, 4.4, 'M'),
('PlayStation 5 (PS5)', 'Eletrônico', false, 'Console de jogos da Sony', 5339.99, 4.9, 'Pequeno'),
('Nisssin Miojo', 'Alimento', false, 'Macarrão Instatâneo', 5.99, 4.3, 'Pequeno'),
('Camisa Dry Fit', 'Vestuário', false, 'Camisa feita com tecnologia que absorve a umidade', 49.99, 4.5, 'Pequeno'),
('Ração para Cães', 'Alimento', false, 'Ração premium para cães', 89.99, 4.8, 'Médio');

select * from produto;

insert into Pedido (Cliente_idCliente, StatusPedido, Descricao, Frete, Valor_Total, Pagamento) values
(1, 'Confirmado', 'Pedido de eletrônico', 20.0, 3019.99, 'Cartão de Crédito'),
(2, 'Em processamento', 'Pedido de vestuário', 10.0, 59.99, 'Boleto'),
(3, 'Cancelado', 'Pedido de brinquedo', 15.0, 94.99, 'Pix'),
(4, 'Confirmado', 'Pedido de geladeira', 30.0, 2029.99, 'Cartão de Crédito'),
(5, 'Em processamento', 'Pedido de mesa', 25.0, 824.99, 'Boleto'),
(6, 'Confirmado', 'Pedido de tênis', 15.0, 314.99, 'Pix'),
(7, 'Cancelado', 'Pedido de Console', 50.0, 5389.99, 'Cartão de Crédito'),
(8, 'Confirmado', 'Pedido de macarrão instatâneo', 10.0, 15.99, 'Boleto'),
(9, 'Em processamento', 'Pedido de camisa', 15.0, 64.99, 'Pix'),
(10, 'Confirmado', 'Pedido de ração', 10.0, 99.99, 'Cartão de Crédito');
select * from produto;

insert into Produto_Pedido (idProduto, idPedido, Quantidade, StatusProduto) values
(1, 1, 1, 'Disponivel'),
(2, 2, 1, 'Disponivel'),
(3, 3, 1, 'Disponivel'),
(4, 4, 1, 'Disponivel'),
(5, 5, 1, 'Disponivel'),
(6, 6, 1, 'Disponivel'),
(7, 7, 1, 'Disponivel'),
(8, 8, 1, 'Disponivel'),
(9, 9, 1, 'Disponivel'),
(10, 10, 1, 'Disponivel');
select * from produto_pedido;

insert into Produto_Fornecedor (idFornecedor, idProduto) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
select * from produto_fornecedor;

insert into Produto_Estoque (idProduto, idEstoque, Localizacao) values
(1, 1, 'Armazém Central - Seção A'),
(2, 2, 'Depósito Sul - Seção B'),
(3, 3, 'Centro de Distribuição Norte - Seção C'),
(4, 4, 'Armazém Leste - Seção D'),
(5, 5, 'Depósito Oeste - Seção E'),
(6, 6, 'Centro de Distribuição Sul - Seção F'),
(7, 7, 'Armazém Nordeste - Seção G'),
(8, 8, 'Depósito Sudeste - Seção H'),
(9, 9, 'Centro de Distribuição Centro-Oeste - Seção I'),
(10, 10, 'Armazém Norte - Seção J');
select * from produto_estoque;

insert into Entrega (Codigo_de_Rastreio, Status_da_Entrega, Pedido_idPedido, Pedido_Cliente_idCliente) values
('BR1234567890', 'Entregue', 1, 1),
('BR0987654321', 'Em trânsito', 2, 2),
('BR1122334455', 'Cancelado', 3, 3),
('BR5566778899', 'Entregue', 4, 4),
('BR9988776655', 'Em trânsito', 5, 5),
('BR4433221100', 'Cancelado', 6, 6),
('BR2233445566', 'Entregue', 7, 7),
('BR6655443322', 'Em trânsito', 8, 8),
('BR7788990011', 'Cancelado', 9, 9),
('BR9900112233', 'Entregue', 10, 10);
select * from entrega;

insert into Formas_Pagamento (Boleto, Cartao, Pix) values
('Boleto', null, null),
(null, 'Cartao de Credito', null),
(null, null, 'Pix'),
('Boleto', 'Cartao de Debito', null),
(null, 'Cartao de Credito', 'Pix'),
('Boleto', null, 'Pix'),
(null, 'Cartao de Credito', null),
('Boleto', 'Cartao de Debito', 'Pix'),
('Boleto', null, null),
(null, 'Cartao de Credito', null);
select * from Formas_Pagamento;

insert into Cliente_Formas_Pagamento (idCliente, idFormas_Pagamento) values
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);
select * from Cliente_Formas_Pagamento;

insert	into Terceiro_Vendedor (Razao_Social, CNPJ, CPF, Local, Nome_Fantasia) values
('Loja Virtual A', '01234567890123', '12345678901', 'Centro', 'Virtual A'),
('Loja Virtual B', '98765432109876', '98765432100', 'Zona Norte', 'Virtual B'),
('Loja Virtual C', '11122233344455', '11122233344', 'Zona Sul', 'Virtual C'),
('Loja Virtual D', '22233344455667', '22233344455', 'Centro', 'Virtual D'),
('Loja Virtual E', '33344455566778', '33344455566', 'Zona Norte', 'Virtual E'),
('Loja Virtual F', '44455566677889', '44455566677', 'Zona Sul', 'Virtual F'),
('Loja Virtual G', '55566677788990', '55566677788', 'Centro', 'Virtual G'),
('Loja Virtual H', '66677788899001', '66677788899', 'Zona Norte', 'Virtual H'),
('Loja Virtual I', '77788899900112', '77788899900', 'Zona Sul', 'Virtual I'),
('Loja Virtual J', '88899900011223', '88899900011', 'Centro', 'Virtual J');
select * from Terceiro_Vendedor;

insert into Produtos_Vendedor (idTerceiroVendedor, idProduto, Quantidade) values
(1, 1, 10),
(2, 2, 20),
(3, 3, 15),
(4, 4, 12),
(5, 5, 18),
(6, 6, 25),
(7, 7, 30),
(8, 8, 5),
(9, 9, 22),
(10, 10, 8);
select * from Produtos_Vendedor;



select * from pedido;

select * from cliente c, pedido p
	where c.idcliente = idpedido;

select Pnome, Sobrenome, idPedido, StatusPedido
	from cliente c, pedido p
    where c.idcliente = idpedido;

select concat(Pnome, ' ', Sobrenome) as Cliente, idPedido as Pedido, StatusPedido as Status
	from cliente c, pedido p
	where c.idcliente = idpedido;

select c.idcliente, Pnome, count(*) as Numero_pedidos from cliente c
	inner join pedido p on c.idcliente = p.idpedido
	inner join produto_pedido pp on pp.idpedido = p.idpedido
    group by c.idcliente;
