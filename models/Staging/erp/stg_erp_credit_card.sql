with 
    renamed as (
        select 
        cast(CREDITCARDID  as int) as credit_card_id
        ,cast(CARDTYPE as varchar) as card_type
        ,cast(CARDNUMBER as float) as card_number
        ,cast(EXPMONTH as int  ) as exp_month
        ,cast(EXPYEAR as int) as exp_year
        ,cast(MODIFIEDDATE as date) as moedified_date
        from {{ source('erp', 'CREDITCARD') }}
    )

    select *
    from renamed