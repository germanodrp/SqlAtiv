create Procedure PesquisaCliente12
@Nome varchar(200)

as
select ClienteID,Nome from Cliente
where Nome like  @Nome + '%'

exec PesquisaCliente12 @Nome = 'J'

