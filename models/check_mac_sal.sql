{{config(materialized='table')}}
select ENo,
Hiredate,
Sal1,
Sal2,
Status, 
({{mac_sal('sal1','sal2')}}) as Total_Sal
 from {{source('datafeed_shared_schema','emp_sal')}}
