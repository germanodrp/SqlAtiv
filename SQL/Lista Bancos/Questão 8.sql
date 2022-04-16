Create Procedure prInsertCliente
 @Marca int,
 @Descricao varchar(200)
as
insert into Marca(MarcaID,Descricao)
values (@Marca,@Descricao)







