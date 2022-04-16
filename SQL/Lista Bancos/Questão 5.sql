Declare @totaldesc money = (SELECT SUM(ValorDesconto) from VendaProduto)


select Produto.ProdutoID,
Produto.Descricao,
SUM(VendaProduto.ValorDesconto) / @totaldesc*100

from Produto
inner join VendaProduto
on Produto.ProdutoID = VendaProduto.ProdutoID
group by Produto.ProdutoID,
Produto.Descricao