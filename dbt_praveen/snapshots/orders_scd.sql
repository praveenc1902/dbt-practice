{%snapshot orders_scd%}
{{
    config(
        target_database = 'PC_DBT_DB',
        target_schema = 'DBT_PCHINNAREDDY',
        unique_key = 'ORDERID',
        strategy = 'timestamp',
        updated_at = 'ORD_DATE'
    )
}}
select * from {{ref('orders_new')}}
{%endsnapshot%}
