Create procedure prPesquisaMarcaNome
@MarcaID int = null,
@GrupoID int = null

as
select * from Produto
where MarcaID = ISNULL(@MarcaID,MarcaID)
and GrupoID = ISNULL(@GrupoID,GrupoID)

exec prPesquisaMarcaNome @MarcaID = '364', @GrupoID = '38'