select *
from {{ source('erp', 'PERSON') }}