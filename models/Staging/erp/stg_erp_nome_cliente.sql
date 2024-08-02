with
    renamed as (
        select 
        cast(BUSINESSENTITYID as int) as business_entity_id
        ,cast(NAME as varchar) as name
        ,cast(SALESPERSONID as int) as sales_period_id
        ,cast(DEMOGRAPHICS as varchar) as demographics
        ,cast(ROWGUID as varchar) as row_guid
        ,cast(MODIFIEDDATE as date) as modified_date
        from {{ source('erp', 'STORE') }}
    )

select *
from renamed