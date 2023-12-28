{%set methods = ['cod','card','credit_card']%}

select 
orderid,
{%for m in methods%}
sum(case when method = '{{m}}' then 1  end ) as payment_method_count_{{m}}
{% if not loop.last%} , {%endif%}
{%endfor%}
from {{source('praveen_dbt','orders')}}
group by 1