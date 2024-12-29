# Projeto Conceitual de Banco de Dados para um E-Commerce

## Descrição
Este projeto visa o desenvolvimento de um banco de dados para um sistema de e-commerce. Permitindo a gestão de clientes, fornecedores, estoque, produtos, pedidos e entregas, além de suportar diferentes formas de pagamento.

## Estrutura do Esquema
### Tabelas
**Cliente**
*    idCliente int primary key auto_increment
*    Pnome varchar(10)
*    Nome_do_meio varchar(3)
*    Sobrenome varchar(20)
*    CPF_CNPJ char(11) unique
*    Endereco varchar(45)
*    Telefone varchar(15)
*    Email varchar(45)
*    Data_de_Nascimento date

**Fornecedor**
*    idFornecedor int primary key auto_increment,
*    Razao_Social varchar(45),
*    CNPJ char(15) unique,
*    Contato char(11)

**Estoque**
*    idEstoque int primary key auto_increment,
*    Local varchar(45),
*    Quantidade int default 0

**Produto**
*    idProduto int primary key auto_increment,
*    Nome_do_Produto varchar(45) not null,
*    Categoria enum('Eletrônico', 'Vestuário', 'Brinquedo', 'Alimento', 'Móveis') not null,
*    Classificacao_kids boolean default false,
*    Descricao varchar(50),
*    Valor float,
*    Avaliacao float default 0,
*    Size varchar(10)

**Pedido**
*    idPedido int primary key auto_increment,
*    Cliente_idCliente int,
*    StatusPedido enum('Cancelado', 'Confirmado', 'Em processamento') default 'Em processamento',
*    Descricao varchar(255),
*    Frete float default 10,
*    Valor_Total float,
*    Pagamento varchar(30),
*    foreign key (Cliente_idCliente) references Cliente(idCliente)

**Produto_Pedido**
*    idProduto int,
*    idPedido int,
*    Quantidade int default 1,
*    StatusProduto enum('Disponivel', 'Sem estoque') default 'Disponivel',
*    primary key (idProduto, idPedido),
*    foreign key (idProduto) references Produto(idProduto),
*    foreign key (idPedido) references Pedido(idPedido)

**Produto_Fornecedor**
*    idFornecedor int,
*    idProduto int,
*    primary key (idFornecedor , idProduto),
*    foreign key (idFornecedor) references Fornecedor (idFornecedor),
*    foreign key (idProduto) references Produto (idProduto)

**Produto_estoque**
*    idProduto int,
*    idEstoque int,
*    Localizacao varchar(255) not null,
*    primary key (idProduto, idEstoque),
*    foreign key (idProduto) references Produto(idProduto),
*    foreign key (idEstoque) references Estoque(idEstoque)

**Entrega**
*    idEntrega int primary key auto_increment,
*    Codigo_de_Rastreio varchar(45),
*    Status_da_Entrega varchar(45),
*    Pedido_idPedido int,
*    Pedido_Cliente_idCliente int,
*    foreign key (Pedido_idPedido) references Pedido(idPedido),
*    foreign key (Pedido_Cliente_idCliente) references Cliente(idCliente)

**Formas_Pagamento**
*    idFormas_Pagamento int primary key auto_increment,
*    Boleto varchar(45),
*    Cartao varchar(45),
*    Pix varchar(45)

**Cliente_Formas_Pagamento**
*    idCliente int,
*    idFormas_Pagamento int,
*    primary key (idCliente, idFormas_Pagamento),
*    foreign key (idCliente) references Cliente(idCliente),
*    foreign key (idFormas_Pagamento) references Formas_Pagamento(idFormas_Pagamento)

**Terceiro_Vendedor**
*    idTerceiro_Vendedor int primary key auto_increment,
*    Razao_Social varchar(255),
*    CNPJ char(15) unique,
*    CPF char(11) unique,
*    Local varchar(45),
*    Nome_Fantasia varchar(255)

**Produtos_Vendedor**
*    idTerceiroVendedor int,
*    idProduto int,
*    Quantidade int default 1,
*    primary key (idTerceiroVendedor, idProduto),
*    foreign key (idTerceiroVendedor) references Terceiro_Vendedor(idTerceiro_Vendedor),
*    foreign key (idProduto) references Produto(idProduto)

## Modelo E-Commerce (Refinado)
![ecommerce - Refinado](https://github.com/user-attachments/assets/3f67d143-a3c8-4438-9518-bcaf003290ba)

## Modelo E-Commerce
![Mod_ecommerce](https://github.com/user-attachments/assets/c4a873d7-931e-40c7-a262-6320a6b1b8d8)
