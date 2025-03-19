select 
sno,
case 
when m1<35 or m2<35 or m3<35 or m4<35 or m5<35
then 'Fail'
else 'Pass'
end as Result
from {{source('datafeed_shared_schema','student')}}