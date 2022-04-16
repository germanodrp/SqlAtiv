create trigger trAttDescMarca
on Marca
After update
as
begin
declare @marcaAntiga varchar(200),
@marcaNova varchar(200)
set @marcaAntiga = (Select Descricao from deleted)
set @marcaNova = (Select Descricao from inserted)

if (@marcaAntiga <> @marcaNova)
begin
update Produto set Descricao = Replace(Descricao,@marcaAntiga,@marcaNova)
where MarcaId = (Select MarcaID from deleted)

end



end

Drop trigger trAttDescMarca