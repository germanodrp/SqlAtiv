begin tran


update Produto
set PrecoVenda = (PrecoVenda * 0.10) + PrecoVenda

where not exists (Select ProdutoID from VendaProduto where VendaProduto.ProdutoID = Produto.ProdutoID)
commit
