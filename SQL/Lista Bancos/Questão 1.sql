create view RegistroeVenda
as




select 
distinct
Produto.* from Produto
inner join VendaProduto
on Produto.ProdutoID = VendaProduto.ProdutoID
where Estoque >= 1 

select * from Produto
where Estoque >= 1
and Produto.ProdutoID not in (Select ProdutoID from VendaProduto)

select * from Produto 
where Estoque >= 1
and exists (Select ProdutoID from VendaProduto where VendaProduto.ProdutoID = Produto.ProdutoID) 

