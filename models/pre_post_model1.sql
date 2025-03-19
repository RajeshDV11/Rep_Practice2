{{config(materialized='table',
pre_hook="truncate table {{this}}",
post_hook="truncate table {{source('datafeed_shared_schema','student_data')}}")}}

with tab1 as
(
select * from {{source('datafeed_shared_schema','student_data')}} 
)
select * from tab1