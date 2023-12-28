{%set payment_methods = get_payment_methods() %}

select 
order_id,
{%for mthd in payment_methods%}
sum(case when payment_method = '{{mthd}}' then amount end) as {{mthd}}_amount,
{%endfor%}
sum(amount) as total_amount
from {{ref('raw_payments')}}
group by 1