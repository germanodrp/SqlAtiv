--22. Criar uma fun��o que receber� o c�digo da marca e retornar� todos os produtos de acordo com este c�digo.

create function RetornandoTodos(@MarcaID int) 
returns table 
as 
return 
 (
 select MarcaID,
 Descricao,
 ProdutoID
 from Produto

 where MarcaID =@MarcaID
	
)

select * from RetornandoTodos(7)