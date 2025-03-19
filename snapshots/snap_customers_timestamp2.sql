{% snapshot snap_customers_timestamp2 %}

{{
    config(
    strategy='timestamp',
    unique_key='id',
    updated_at='updated_at',
    invalidate_hard_deletes=true
)}}
select *  from {{source('datafeed_shared_schema','SRC_CUSTOMERS_SS')}}
{% endsnapshot %}