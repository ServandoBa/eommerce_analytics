with source as (
    select * from {{ source('raw_ecommerce', 'orders') }}
),

renamed as (
    select
        cast(order_id as string) as order_id,
        cast(customer_id as string) as customer_id,
        cast(order_created_at as timestamp) as order_created_at,
        cast(order_status as string) as order_status
    from source
)

select * from renamed
