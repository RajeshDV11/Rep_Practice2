{{config(materialized='table')}}

with tab1
as 
(
select id,
first_name,
last_name from {{source('datafeed_shared_schema','raw_customers_data')}})
select * from tab1  