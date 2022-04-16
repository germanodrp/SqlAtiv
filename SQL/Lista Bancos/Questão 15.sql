Create procedure PrPesquisaDataVenda
@ValorMin  datetime,
@ValorMax  datetime

as
Select Cliente.ClienteID,Cliente.Nome,Max(Venda.DataPedido) from Cliente
inner join Venda
on Cliente.ClienteID = Venda.ClienteID
where DataPedido between @ValorMin and @ValorMax
group by Cliente.ClienteID,Cliente.Nome

Exec PrPesquisaDataVenda @ValorMin = '01-01-2020' , @ValorMax = '01-31-2020'

