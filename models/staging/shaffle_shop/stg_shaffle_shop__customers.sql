with 

source as (

    select * from {{ source('shaffle_shop', 'customers') }}

),

renamed as (

    select
        id customer_id,
        first_name,
        last_name

    from source

)

select * from renamed