WITH 
    renamed as (
        select 
        cast(COUNTRYREGIONCODE as varchar) as REGION_CODE
        ,cast(NAME AS varchar) AS NAME
        ,cast(MODIFIEDDATE AS date) AS MODIFIED_DATE
        from {{ source('erp', 'COUNTRYREGION') }}
    )
    select *
    from renamed