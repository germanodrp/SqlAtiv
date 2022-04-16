select Marca.MarcaID,
Marca.Descricao,
COUNT(Distinct Produto.ProdutoID)as QTDEcada,
IIF(SUM(VendaProduto.QtdeVendida) IS NOT NULL, SUM(VendaProduto.QtdeVendida),0) as Total


from Marca
inner join Produto
on Produto.MarcaID = Marca.MarcaID
left join VendaProduto
on VendaProduto.ProdutoID  = Produto.ProdutoID

group by Marca.MarcaID, Marca.Descricao 
