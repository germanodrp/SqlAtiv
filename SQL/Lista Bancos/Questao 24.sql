
create function CalcIdade (@DataNascimento date)
returns table 
as 
return
(select 
DataNascimento,DATEDIFF(YYYY,DataNascimento,GETDATE()) as idade
from ClienteFisico
inner join Cliente
on Cliente.ClienteID = ClienteFisico.ClienteID)

