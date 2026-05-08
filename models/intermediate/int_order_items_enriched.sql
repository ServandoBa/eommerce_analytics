select
    order_items.order_item_id,
    order_items.order_id,
    orders.customer_id,
    orders.order_created_at,
    orders.order_status,
    order_items.product_id,
    order_items.quantity,
    order_items.unit_price,
    order_items.quantity * order_items.unit_price as gross_item_amount
from {{ ref('stg_order_items') }} as order_items
left join {{ ref('stg_orders') }} as orders
    on order_items.order_id = orders.order_id
