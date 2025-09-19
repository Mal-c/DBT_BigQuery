select order_id,
       sum(amount) as total
from {{ ref('stg_payment') }}
group by 1
having sum(amount) < 0