--22. Criar uma função que receberá o código da marca e retornará todos os produtos de acordo com este código.

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