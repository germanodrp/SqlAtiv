create table LogCliente(
ClienteID int, 
Nome varchar(100),
DataAtualizacao Datetime

)

create trigger trLogCliente
on Cliente
after update
as
begin
insert into LogCliente(ClienteID,Nome,DataAtualizacao)

select ClienteID,Nome,GETDATE() from inserted


end
select * from LogCliente

update Cliente set Nome = 'PEDRO JOSE MARIA'
where ClienteID = 1