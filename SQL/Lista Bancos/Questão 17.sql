select Cliente.ClienteID,
 Cliente.Nome,
 IIF(Tipo = 'F',CPF,CNPJ)as CNPJCPF,
 SUM(VendaProduto.PrecoVenda) as valorVendaTotal,
 SUM(VendaProduto.QtdeVendida*VendaProduto.QtdeVendida)as qtdeVendida

from Cliente
 left join ClienteFisico
 on Cliente.ClienteID = ClienteFisico.ClienteID
 left join ClienteJuridico
 on Cliente.ClienteID = ClienteJuridico.ClienteID
 inner join Venda 
 on Cliente.ClienteID = Venda.ClienteID
 inner join VendaProduto
 on Venda.VendaID = VendaProduto.VendaID
group by 
 Cliente.ClienteID,
 Cliente.Nome,
 IIF(Tipo = 'F',CPF,CNPJ)
Order By 
 Sum(VendaProduto.QtdeVendida)ASC

select * from Venda
