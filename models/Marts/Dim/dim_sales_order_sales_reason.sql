with
    renamed as(
        select *
        from {{ ref('stg_erp_sales_order_sales_reason') }}
    )

select *
from renamed