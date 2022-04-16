create procedure  prPesquisaClienteTipo
@tipo char (1)
as
select * from Cliente
where Tipo = @tipo



exec prPesquisaClienteTipo 'F'

