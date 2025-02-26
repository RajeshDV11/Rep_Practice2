{{config(materialized='incremental',
incremental_strategy='merge',
unique_key='order_id')}}

select * from {{source('datafeed_shared_schema','raw_orders_data')}}