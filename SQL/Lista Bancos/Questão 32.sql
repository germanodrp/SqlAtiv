create trigger trUpdateMarca
on Marca
instead of delete
as
begin

update Marca set Ativo = 0
where MarcaID = (select MarcaID from deleted)


end




