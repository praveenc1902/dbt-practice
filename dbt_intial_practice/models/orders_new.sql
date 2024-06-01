{{
    config(
        materialized='table',
        pre_hook = "USE DATABASE PC_DBT_DB"
    )
}}

with cte as (
    select *,{{by100('orderid')}} as new_order_id ,
    '{{var('start_date')}}' as orders_start_date,
    '{{var('owner')}}' as owner_name,
    '{{var('gender')[0]}}' as gender
    from {{source('praveen_dbt','orders')}}
)
select * from cte