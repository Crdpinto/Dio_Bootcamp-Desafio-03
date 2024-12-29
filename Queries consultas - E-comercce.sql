-- Recuperar todos os dados:
select * from Cliente;

select * from Produto;

-- Filtros com WHERE Statement
select * from Pedido where StatusPedido = 'Confirmado';

select * from Cliente where Endereco like '%Copac%';

-- Expressões com atributos derivados
select concat(Pnome, ' ', Nome_do_meio, ' ', Sobrenome) as Nome_Completo from Cliente;

select idPedido, round((Valor_Total + Frete),2) as Valor_Final from Pedido;

-- Ordenações dos dados com ORDER BY
select * from Produto
	order by Valor desc;

select * from Cliente
	order by Sobrenome asc;

-- Filtros aos grupos – HAVING Statement
select Categoria, count(*) as Quantidade_Produtos
	from Produto
    group by Categoria
    having count(*) > 2;

select p.Cliente_idCliente, count(*) as Numero_Pedidos
	from Pedido p
    group by p.Cliente_idCliente
    having count(*) > 1;

-- Junções entre tabelas
select p.idPedido, c.Pnome as Nome, c.Sobrenome as Sobrenome, p.StatusPedido as Status, p.Valor_Total
	from Pedido p
	join Cliente c on p.Cliente_idCliente = c.idCliente;

select pp.idPedido, p.Nome_do_Produto, f.Razao_Social
	from Produto_Pedido pp
	join Produto p on pp.idProduto = p.idProduto
	join Produto_Fornecedor pf on p.idProduto = pf.idProduto
	join Fornecedor f on pf.idFornecedor = f.idFornecedor;

