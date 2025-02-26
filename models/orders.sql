{{config(materialized='table')}}

with tab2
as
(
select order_id,
user_id,
order_date,
status from {{source('datafeed_shared_schema','raw_orders_data')}}
)
select * from tab2