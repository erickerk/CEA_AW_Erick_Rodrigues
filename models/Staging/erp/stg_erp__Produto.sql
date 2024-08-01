with tabela1 as (
    select 
        cast(salesorderid as int) as order_id,
        cast(salesorderdetailid as varchar) as detail_id,
        cast(carriertrackingnumber as varchar) as tracking_number,
        cast(orderqty as int) as qty,
        cast(productid as int) as product_id,
        cast(specialofferid as int) as special_offer_id,
        cast(unitprice as int) as unit_price,
        cast(unitpricediscount as float) as price_discount,
        cast(rowguid as varchar) as row_guid,
        cast(modifieddate as date) as modified_date
    from {{ source('erp', 'SALESORDERDETAIL') }}
),
tabela2 as (
    select 
        cast(productid as int) as product_id,
        cast(name as varchar) as name,
        cast(productnumber as varchar) as product_number,
        cast(makeflag as varchar) as make_flag,
        cast(color as varchar) as color,
        cast(safetystocklevel as int) as stock_level,
        cast(size as varchar) as size,
        cast(standardcost as float) as standard_cost,
        cast(productsubcategoryid as int) as subcategory_id,
        cast(productmodelid as varchar) as product_model_id
    from {{ source('erp', 'PRODUCT') }}
)

select 
    tabela1.order_id,
    tabela1.detail_id,
    tabela1.tracking_number,
    tabela1.qty,
    tabela1.product_id as order_product_id, 
    tabela1.special_offer_id,
    tabela1.unit_price,
    tabela1.price_discount,
    tabela1.row_guid,
    tabela1.modified_date,
    tabela2.product_id as product_product_id, 
    tabela2.name,
    tabela2.product_number,
    tabela2.make_flag,
    tabela2.color,
    tabela2.stock_level,
    tabela2.size,
    tabela2.standard_cost,
    tabela2.subcategory_id,
    tabela2.product_model_id
from tabela1 
left join tabela2 on tabela1.product_id = tabela2.product_id
