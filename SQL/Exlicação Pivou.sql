select  
[1] Jan,
[2] Fev,
[3] Mar,
[4] Abr,
[5] Mai,
[6] Jun,
[7] Jul,
[8] Ag,
[9] [Set],
[10] [Out],
[11] Nov,
[12] Dez

from
(select month(DataCadastro) Mes,Tipo,ClienteID from Cliente) sourcetable
pivot (count(ClienteID) for Mes in ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])) as PIVOTTABLE


Select MONTH(DataCadastro) Mes, 
YEAR(DataCadastro) Ano 
from Cliente