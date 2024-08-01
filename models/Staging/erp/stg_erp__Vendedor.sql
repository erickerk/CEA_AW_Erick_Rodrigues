with 
    tabela2 as (
        select 
            cast(businessentityid as int) as business_entity_id,
            cast(persontype as varchar(2)) as person_type,
            cast(namestyle as varchar) as name_style,
            cast(title as varchar(50)) as title,
            cast(firstname as varchar(50)) as first_name,
            cast(middlename as varchar(50)) as middle_name,
            cast(lastname as varchar(50)) as last_name,
            cast(suffix as varchar(10)) as suffix,
            cast(emailpromotion as int) as email_promotion
        from {{ source('erp', 'PERSON') }}
    ),
    tabela1 as (
        select 
            cast(businessentityid as int) as business_entity_id,
            cast(territoryid as int) as territory_id,
            cast(salesquota as decimal(18,2)) as sales_quota,
            cast(bonus as decimal(18,2)) as bonus,
            cast(commissionpct as decimal(5,4)) as commission_pct,
            cast(salesytd as decimal(18,2)) as sales_ytd,
            cast(saleslastyear as decimal(18,2)) as sales_last_year,
            cast(rowguid as varchar(36)) as row_guid,
            cast(modifieddate as datetime) as modified_date
        from {{ source('erp', 'SALESPERSON') }}
    )

select 
    t2.business_entity_id as person_business_entity_id,  -- Renomeado para evitar duplicidade
    t2.person_type,
    t2.name_style,
    t2.title,
    t2.first_name,
    t2.middle_name,
    t2.last_name,
    t2.suffix,
    t2.email_promotion,
    t1.territory_id,
    t1.sales_quota,
    t1.bonus,
    t1.commission_pct,
    t1.sales_ytd,
    t1.sales_last_year,
    t1.row_guid,
    t1.modified_date
from tabela2 t2
join tabela1 t1 
    on t2.business_entity_id = t1.business_entity_id
