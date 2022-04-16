create trigger trLogDeleteCliente
on Cliente
instead of delete
as
begin

update Cliente set status = 0
where ClienteID = (select ClienteID from deleted)


end


alter table Cliente 
add status int null  