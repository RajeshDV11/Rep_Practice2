{{config(materialized='table',
)}}

select * from {{source('datafeed_shared_schema3','employees1')}}