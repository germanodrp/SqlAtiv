create view VendaCliente
as

select * from CLiente 
where 
not exists (Select ClienteID from Venda where Cliente.ClienteID = Venda.ClienteID)