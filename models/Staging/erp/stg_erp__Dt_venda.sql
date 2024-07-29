with 
    renamed  as (
        select 
          cast(SALESORDERID as int) as ORDER_ID
        , cast(REVISIONNUMBER as int) as REVISION_NUMBER
        , cast(ORDERDATE as date) as ORDER_DATE
        , cast(DUEDATE as date) as DUE_DATE
        , cast(SHIPDATE as date) as SHIP_DATE
        , cast(STATUS as varchar ) as STATUS
        , cast(ONLINEORDERFLAG as varchar) as RED_FLAG
        , cast(PURCHASEORDERNUMBER as varchar) as ORDER_NUMBER
        , cast(ACCOUNTNUMBER as varchar) as ACCOUTNT_NUMBER
        , cast(CUSTOMERID as int) as CUSTUMER_ID
        , cast(SALESPERSONID as int) as PERSON_ID
        , cast(TERRITORYID as int) as TERRITORY_ID
        , cast(SUBTOTAL as int) as SUB_TOTAL
        , cast(TAXAMT as int) as TAX_AMT
        , cast(FREIGHT as int) as FREIGHT
        , cast(TOTALDUE as int) as TOTAL_DUE
        from {{ source('erp', 'SALESORDERHEADER') }}
    )

select *
from renamed