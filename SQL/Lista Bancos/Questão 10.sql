Create procedure PdPesquisaGrupo

as
select Produto.ProdutoID,
Produto.Descricao,
Grupo.Descricao from Produto
inner join Grupo
on Produto.GrupoID = Grupo.GrupoID


exec PdPesquisaGrupo

