{{config(
    materialized = 'table',
    schema = 'DBT_PRAVEEN'
)}}

with cte1 as(
    select 1 as id ,
    'praveen' as name
),
cte2 as (
    select 2 as id,
    'sahasra' as name
)
select * from cte1
union all 
select * from cte2
