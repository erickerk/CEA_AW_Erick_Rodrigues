with 
    renamed as (
        select 
          cast(salesorderid as int) as order_id,
          cast(revisionnumber as int) as revision_number,
          cast(orderdate as date) as order_date,
          cast(duedate as date) as due_date,
          cast(shipdate as date) as ship_date,
          cast(status as varchar) as status,
          cast(onlineorderflag as varchar) as online_order_flag,
          cast(purchaseordernumber as varchar) as order_number,
          cast(accountnumber as varchar) as account_number,
          cast(customerid as int) as customer_id,
          cast(salespersonid as int) as salesperson_id,
          cast(territoryid as int) as territory_id,
          cast(subtotal as int) as sub_total,
          cast(taxamt as int) as tax_amt,
          cast(freight as int) as freight,
          cast(totaldue as int) as total_due
        from {{ source('erp', 'SALESORDERHEADER') }}
    )

select *
from renamed


