{{
    config(
        materialized='incremental',
        unique_key='ORDERID'
    )
}}

SELECT * FROM 
{{ref('orders_new')}}
{%if is_incremental()%}
where ORD_DATE > (select max(ORD_DATE) from {{this}})
{%endif%}


