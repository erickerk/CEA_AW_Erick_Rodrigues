with 
    renamed as (
        select 
        cast(SALESREASONID as int) as REASON_ID
        ,cast(NAME as varchar) as NAME
        ,cast(REASONTYPE as varchar) as REASON_TYPE
        ,cast(MODIFIEDDATE as date) as MODIFIED_DATE
        from {{ source('erp', 'SALESREASON') }}
    )

select *
from renamed