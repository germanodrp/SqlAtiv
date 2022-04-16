---Function
CREATE PROCEDURE prPesquisaCliente
---Variaveis de saida e entrada
@Tipo char(1),
@Nome varchar(100)
as
select * from Cliente
where Tipo = @Tipo
and Nome like @Nome + '%'

exec prPesquisaCliente 'J'

-----

exec prPesquisaCliente
@Tipo = 'F'