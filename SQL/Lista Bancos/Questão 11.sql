Create Procedure pdPesquisaMarca
@Descricao varchar(200)

as
select Produto.ProdutoID, 
Produto.Descricao,
Marca.Descricao from Produto
inner join Marca
on Produto.MarcaID = Marca.MarcaID
where Produto.Descricao like '%' + @Descricao + '%'


exec pdPesquisaMarca @Descricao = 'Adidas'
