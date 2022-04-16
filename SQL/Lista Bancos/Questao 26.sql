create function CalcIdade (@DataNascimento date)
returns table 
as 
return
(select Nome,
DataNascimento,DATEDIFF(YYYY,DataNascimento,GETDATE()) as idade
from ClienteFisico
inner join Cliente
on Cliente.ClienteID = ClienteFisico.ClienteID)