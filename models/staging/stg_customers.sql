with source as (
    select * from {{ source('raw_ecommerce', 'customers') }}
),

renamed as (
    select
        cast(customer_id as string) as customer_id,
        cast(email as string) as email,
        cast(created_at as timestamp) as customer_created_at
    from source
)

select * from renamed
