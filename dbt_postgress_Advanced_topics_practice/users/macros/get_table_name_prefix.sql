{%macro get_table_name_prefix(database_name,schema_name,prefix)%}
{%set result = dbt_utils.get_relations_by_prefix(schema=schema_name, prefix=prefix, database=database_name)%}
{%for res in result%}
    select * from {{res.database}}.{{res.schema}}.{{res.name}}
    {%if not loop.last%}
     union all 
    {%endif%}
{%endfor%}
{%endmacro%}