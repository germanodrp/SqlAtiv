begin tran

update Produto
set PrecoVenda = (PrecoVenda * 0.10) + PrecoVenda
where Estoque > 0
 select PrecoVenda from Produto where estoque > 0
commit

