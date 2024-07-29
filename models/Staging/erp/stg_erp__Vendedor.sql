with 
    tabela2 as (
        select 
          cast(BUSINESSENTITYID as int) as BUSINESS_ENTITY_ID,
          cast(PERSONTYPE as varchar(2)) as PERSON_TYPE,
          cast(NAMESTYLE as bit) as NAME_STYLE,
          cast(TITLE as varchar(50)) as TITLE,
          cast(FIRSTNAME as varchar(50)) as FIRST_NAME,
          cast(MIDDLENAME as varchar(50)) as MIDDLE_NAME,
          cast(LASTNAME as varchar(50)) as LAST_NAME,
          cast(SUFFIX as varchar(10)) as SUFFIX,
          cast(EMAILPROMOTION as int) as EMAIL_PROMOTION
        from {{ source('erp', 'PERSON') }}
    ),
    tabela1 as (
        select 
          cast(BUSINESSENTITYID as int) as BUSINESS_ENTITY_ID,
          cast(TERRITORYID as int) as TERRITORY_ID,
          cast(SALESQUOTA as decimal(18,2)) as SALES_QUOTA,
          cast(BONUS as decimal(18,2)) as BONUS,
          cast(COMMISSIONPCT as decimal(5,4)) as COMMISSION_PCT,
          cast(SALESYTD as decimal(18,2)) as SALES_YTD,
          cast(SALESLASTYEAR as decimal(18,2)) as SALES_LAST_YEAR,
          cast(ROWGUID as varchar(36)) as ROW_GUID,
          cast(MODIFIEDDATE as datetime) as MODIFIED_DATE
        from {{ source('erp', 'SALESPERSON') }}
    )

select 
    t2.BUSINESS_ENTITY_ID,
    t2.PERSON_TYPE,
    t2.NAME_STYLE,
    t2.TITLE,
    t2.FIRST_NAME,
    t2.MIDDLE_NAME,
    t2.LAST_NAME,
    t2.SUFFIX,
    t2.EMAIL_PROMOTION,
    t1.TERRITORY_ID,
    t1.SALES_QUOTA,
    t1.BONUS,
    t1.COMMISSION_PCT,
    t1.SALES_YTD,
    t1.SALES_LAST_YEAR,
    t1.ROW_GUID,
    t1.MODIFIED_DATE
from tabela2 t2
join tabela1 t1 on t2.BUSINESS_ENTITY_ID = t1.BUSINESS_ENTITY_ID
