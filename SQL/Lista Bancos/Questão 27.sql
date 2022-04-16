select Grupo.GrupoID,
Grupo.Descricao,
SUM(VendaProduto.QtdeVendida)

from VendaProduto
inner join Produto
on Produto.ProdutoID = VendaProduto.ProdutoID
inner join Grupo 
on Produto.GrupoID = Grupo.GrupoID

group by Grupo.GrupoID, Grupo.Descricao
having SUM(VendaProduto.QtdeVendida)>2
