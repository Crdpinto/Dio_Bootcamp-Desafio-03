create database ecommerce;
use ecommerce;
-- show tables;
-- drop database ecommerce;
-- show databases;

create table Cliente (
    idCliente int primary key auto_increment,
    Pnome varchar(10),
    Nome_do_meio varchar(3),
    Sobrenome varchar(20),
    CPF_CNPJ char(11) unique,
    Endereco varchar(45),
    Telefone varchar(15),
    Email varchar(45),
    Data_de_Nascimento date
);

alter table Cliente auto_increment=1;

create table Fornecedor (
    idFornecedor int primary key auto_increment,
    Razao_Social varchar(45),
    CNPJ char(15) unique,
    Contato char(11)
);
alter table fornecedor auto_increment=1;

create table Estoque (
    idEstoque int primary key auto_increment,
    Local varchar(45),
    Quantidade int default 0
);
alter table estoque auto_increment=1;

create table Produto (
    idProduto int primary key auto_increment,
    Nome_do_Produto varchar(45) not null,
    Categoria enum('Eletrônico', 'Vestuário', 'Brinquedo', 'Alimento', 'Móveis') not null,
    Classificacao_kids boolean default false,
    Descricao varchar(50),
    Valor float,
    Avaliacao float default 0,
    Size varchar(10)
);
alter table produto auto_increment=1;

create table Pedido (
    idPedido int primary key auto_increment,
    Cliente_idCliente int,
    StatusPedido enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
    Descricao varchar(255),
    Frete float default 10,
    Valor_Total float,
    Pagamento varchar(30),
    foreign key (Cliente_idCliente) references Cliente(idCliente)
);
-- alter table pedido auto_increment=1;
select * from pedido;

create table Produto_Pedido (
    idProduto int,
    idPedido int,
    Quantidade int default 1,
    StatusProduto enum('Disponivel', 'Sem estoque') default 'Disponivel',
    primary key (idProduto, idPedido),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idPedido) references Pedido(idPedido)
);

CREATE TABLE Produto_Fornecedor (
    idFornecedor int,
    idProduto int,
    primary key (idFornecedor , idProduto),
    foreign key (idFornecedor)
        references Fornecedor (idFornecedor),
    foreign key (idProduto)
        references Produto (idProduto)
);

create table Produto_estoque (
    idProduto int,
    idEstoque int,
    Localizacao varchar(255) not null,
    primary key (idProduto, idEstoque),
    foreign key (idProduto) references Produto(idProduto),
    foreign key (idEstoque) references Estoque(idEstoque)
);

create table Entrega (
    idEntrega int primary key auto_increment,
    Codigo_de_Rastreio varchar(45),
    Status_da_Entrega varchar(45),
    Pedido_idPedido int,
    Pedido_Cliente_idCliente int,
    foreign key (Pedido_idPedido) references Pedido(idPedido),
    foreign key (Pedido_Cliente_idCliente) references Cliente(idCliente)
);

alter table entrega auto_increment=1;

create table Formas_Pagamento (
    idFormas_Pagamento int primary key auto_increment,
    Boleto varchar(45),
    Cartao varchar(45),
    Pix varchar(45)
);


create table Cliente_Formas_Pagamento (
    idCliente int,
    idFormas_Pagamento int,
    primary key (idCliente, idFormas_Pagamento),
    foreign key (idCliente) references Cliente(idCliente),
    foreign key (idFormas_Pagamento) references Formas_Pagamento(idFormas_Pagamento)
);

create table Terceiro_Vendedor (
    idTerceiro_Vendedor int primary key auto_increment,
    Razao_Social varchar(255),
    CNPJ char(15) unique,
    CPF char(11) unique,
    Local varchar(45),
    Nome_Fantasia varchar(255)
);
alter table terceiro_vendedor auto_increment=1;

create table Produtos_Vendedor (
    idTerceiroVendedor int,
    idProduto int,
    Quantidade int default 1,
    primary key (idTerceiroVendedor, idProduto),
    foreign key (idTerceiroVendedor) references Terceiro_Vendedor(idTerceiro_Vendedor),
    foreign key (idProduto) references Produto(idProduto)
);
