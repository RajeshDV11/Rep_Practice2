{% macro default_compare_row_counts(table_1,table_2,table_3) %}
select 
'{{table_1}}' as Table_Name,
count(*) as Total_Records
from {{table_1}}
union all
select 
'{{table_2}}' as Table_Name,
count(*) as Total_Records
from {{table_2}}
union all
select 
'{{table_3}}' as Table_Name,
count(*) as Total_Records
from {{table_3}}
{% endmacro %}
