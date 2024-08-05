/*
WITH 
    produto AS (
        SELECT 
            order_id,
            SUM(UNIT_PRICE * QTY) AS valor        
        FROM {{ ref('dim_produto') }}
        GROUP BY order_id
    ),
    data_venda AS (
        SELECT 
            order_id,
            order_date
        FROM {{ ref('fact_data_venda') }}
    )

SELECT 
    SUM(produto.valor) AS total_valor_2011
FROM produto
JOIN data_venda ON produto.order_id = data_venda.order_id
WHERE YEAR(data_venda.order_date) = 2011
*/
