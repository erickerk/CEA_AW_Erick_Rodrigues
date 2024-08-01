with 
    renamed as (
        select 
          cast(salesreasonid as int) as reason_id,
          cast(name as varchar) as name,
          cast(reasontype as varchar) as reason_type,
          cast(modifieddate as date) as modified_date
        from {{ source('erp', 'SALESREASON') }}
    )

select *
from renamed