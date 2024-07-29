with 
    tabela1 as (
        select 
         cast(SALESORDERID as int) as ORDER_ID
        , cast(SALESORDERDETAILID as varchar) as DETAIL_ID
        , cast(CARRIERTRACKINGNUMBER as varchar) as TRACKING_NUMBER
        , cast(ORDERQTY as INT) as QTY
        , cast(PRODUCTID as INT) as PRODUCT_ID
        , cast(SPECIALOFFERID as INT) as SPECIAL_OFFERID
        , cast(UNITPRICE as INT) as UNIT_PRICE
        , cast(UNITPRICEDISCOUNT as float) as PRICE_DISCOUNT
        , cast(ROWGUID as varchar) as ROW_GUID
        , cast(MODIFIEDDATE as date) as MODIFIED_DATE
        from {{ source('erp', 'SALESORDERDETAIL') }}
    ),
    tabela2 as (
        select 
             CAST(PRODUCTID as int) as PRODUCT_ID
            ,CAST(NAME as varchar) as NAME
            ,CAST(PRODUCTNUMBER as varchar) as PRODUCTNUMBER
            ,CAST(MAKEFLAG as varchar) as MAKE_FLAG
            ,CAST(COLOR as varchar) as COLOR
            ,CAST(SAFETYSTOCKLEVEL as INT) as STOCK_LEVEL
            ,cast(SIZE AS varchar) AS SIZE 
            ,cast(STANDARDCOST as float) as STANDARD_COST
            ,cast( PRODUCTSUBCATEGORYID as int) as SUBCATEGORYID 
            ,cast( PRODUCTMODELID as varchar) as PRODUCT_MODELID
        
        from {{ source('erp', 'PRODUCT') }}
    )

select *
from tabela1 
LEFT JOIN tabela2  on tabela2.PRODUCT_ID = tabela1.PRODUCT_ID
