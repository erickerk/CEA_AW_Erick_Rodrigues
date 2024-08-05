with 
    client as (
        select 
            cast(customerid as int) as customer_id,
            cast(personid as int) as id_personal,
            cast(storeid as int) as id_historico,
            cast(territoryid as int) as territory_id,
            cast(rowguid as varchar) as row_guid,
            cast(modifieddate as date) as data_mod
        from {{ source('erp', 'CUSTOMER') }}
    ),
    person as (
        select
            cast(businessentityid as int) as business_entity_id,
            cast(persontype as varchar) as person_type,
            cast(namestyle as varchar) as name_style,
            cast(title as varchar) as title,
            cast(firstname as varchar) as first_name,
            cast(middlename as varchar) as middle_name,
            cast(lastname as varchar) as last_name,
            cast(suffix as varchar) as suffix,
            cast(emailpromotion as int) as email_promotion,
            cast(additionalcontactinfo as varchar) as additional_contact_info,
            cast(demographics as varchar) as demographics,
            cast(rowguid as varchar) as row_guid,
            cast(modifieddate as date) as modified_date
        from {{ source('erp', 'PERSON') }}
    )


select
    client.customer_id,
    client.id_personal,
    client.id_historico,
    client.territory_id,
    client.row_guid as client_row_guid,
    client.data_mod as client_data_mod,
    person.business_entity_id,
    person.person_type,
    person.name_style,
    person.title,
   person.first_name, 
   person.middle_name,
    person.last_name,
    person.suffix,
    person.email_promotion,
    person.additional_contact_info,
    person.demographics,
    person.row_guid as name_row_guid,
    person.modified_date as name_modified_date
from client
join person on client.customer_id = person.business_entity_id

