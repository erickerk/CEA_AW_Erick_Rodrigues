with
    renamed as(
        select *
        from {{ ref('set_erp_sales_order_sales_reason') }}
    )

select *
from renamed