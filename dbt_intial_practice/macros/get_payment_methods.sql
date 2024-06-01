{%macro get_payment_methods()%}
{%set payment_methods_query%}
select distinct payment_method
from
{{ref('raw_payments')}}
{%endset%}
{% set results = run_query(payment_methods_query)%}
{%if execute%}
{%set result_set = results.columns[0].values() %}
{%else%}
{%set result_set = []%}
{%endif%}
{{return(result_set)}}
{%endmacro%}