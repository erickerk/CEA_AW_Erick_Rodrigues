with 
    credicard as (
    select *
from {{ ref('stg_erp_credit_card') }})

select * 
from credicard