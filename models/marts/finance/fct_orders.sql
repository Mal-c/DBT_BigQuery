
with payments as (

    select * from {{ ref('stg_payment') }}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

payment_orders as (

    select
        customer_id,
        order_id,
        sum(amount) as amount

    from payments

    group by 1,2

),

final as (

    select
        o.customer_id,
        o.order_id,
        amount
    
    from orders o

    left join payment_orders po on
    o.order_id = po.order_id
)

select * from final














