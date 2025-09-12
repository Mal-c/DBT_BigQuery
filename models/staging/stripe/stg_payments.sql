select id as customer_id, orderid as order_id, amount
from {{ source("stripe", "payment") }}
