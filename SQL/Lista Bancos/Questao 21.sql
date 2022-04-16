CREATE FUNCTION fnQtdPrdVendidos (@QtdePro INT) 
RETURNS TABLE
AS 
RETURN
(SELECT 
		ProdutoID,
		sum(QtdeVendida) QUANTIDADE
FROM VendaProduto 
GROUP BY ProdutoID
HAVING SUM(QtdeVendida) > @QtdePro 
)

SELECT * FROM fnQtdPrdVendidos (10)