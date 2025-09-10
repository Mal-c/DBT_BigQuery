  select  id AS customer_id,
          orderid AS order_id,
          amount
   from {{ source('stripe', 'payment') }}
