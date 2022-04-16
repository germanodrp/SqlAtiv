Create Procedure prInsertGrupo
@GrupoID Int,
@DepartamentoID int,
@Descricao varchar(200)
as
Insert into Grupo(GrupoID,DepartamentoID,Descricao)
values (@GrupoID,@DepartamentoID,@Descricao)