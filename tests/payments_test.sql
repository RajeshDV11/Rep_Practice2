select id,
sum(amount)
from {{source('datafeed_shared_schema','raw_payments_data')}}
group by id
having sum(amount)<0
