

select Grupo.GrupoID,
Max(Venda.DataPedido ) as UltimaVendida,
COUNT(Distinct Produto.ProdutoID)as QTDEcada,
IIF(SUM(VendaProduto.QtdeVendida) IS NOT NULL, SUM(VendaProduto.QtdeVendida),0) as Total


from Grupo

inner join Produto
on Produto.GrupoID = Grupo.GrupoID
left join VendaProduto
on VendaProduto.ProdutoID  = Produto.ProdutoID
inner join Venda
on Venda.VendaID = VendaProduto.VendaID

group by Grupo.GrupoID
