{% snapshot snap_orders_check %}

{{config
(
strategy='check',
unique_key='order_id',
invalidate_hard_deletes=true,
check_cols=['status','order_date','user_id']
)}}
select * from {{source('datafeed_shared_schema','raw_orders_data')}}
{% endsnapshot %}

