with 
   renamed as (
    select 
    cast(SALESORDERID as varchar) as sales_order_id,
    cast(SALESREASONID as int) as sales_reason_id,
    cast(MODIFIEDDATE as date) as modified_date
    from {{ source('erp', 'SALESORDERHEADERSALESREASON') }}
   )

   select* 
   from renamed