with source as (
    select * from {{ source('raw_ecommerce', 'order_items') }}
),

renamed as (
    select
        cast(order_item_id as string) as order_item_id,
        cast(order_id as string) as order_id,
        cast(product_id as string) as product_id,
        cast(quantity as int64) as quantity,
        cast(unit_price as numeric) as unit_price
    from source
)

select * from renamed
