{{ config(materialized='table') }}

{%set query = "select orderid from orders_shopify where city='TS';"%}

{%set order_num = run_query(query) %}
{% do order_num.print_table() %}
{{log(order_num,info=True)}}
{%if order_num ==200%}
{{exceptions.raise_compiler_error('invalid order id -->  '~order_num)}}
{%else%}
select * from orders_shopify
{%endif%}
