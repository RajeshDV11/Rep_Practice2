{{config(materialized='table')}}
select ENo,
{{initcapfun('EName')}} as Ename1,
Hiredate,
Sal,
Deptno
from {{source('datafeed_shared_schema','emp1')}}

