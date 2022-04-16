create trigger trDeleteGrupo
on Grupo
instead of delete
as
begin

update Grupo set Ativo = 0
where GrupoID = (select GrupoID from deleted)


end


