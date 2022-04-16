select produto.produtoId,
produto.Descricao,
sum(VendaProduto.QtdeVendida)

from vendaproduto
inner join produto
on produto.produtoid = vendaproduto.produtoid
group by produto.ProdutoID, Produto.Descricao
having sum(VendaProduto.QtdeVendida) >= 5