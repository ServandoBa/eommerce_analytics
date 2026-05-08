select
    order_id,
    customer_id,
    min(order_created_at) as order_created_at,
    any_value(order_status) as order_status,
    count(order_item_id) as order_item_count,
    sum(quantity) as total_quantity,
    sum(gross_item_amount) as gross_order_amount
from {{ ref('int_order_items_enriched') }}
group by 1, 2
