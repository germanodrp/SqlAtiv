  select year(DataPedido),Grupo.Descricao, sum(VendaProduto.PrecoVenda)
  from Venda 
          


inner join VendaProduto 
on VendaProduto.VendaID = Venda.VendaID
inner join Produto
on Produto.ProdutoID = VendaProduto.ProdutoID 
inner join Grupo
on Grupo.GrupoID = Produto.GrupoID
group by year(DataPedido),
Grupo.Descricao
