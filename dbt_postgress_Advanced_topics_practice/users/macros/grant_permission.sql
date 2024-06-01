{%macro grant_permission(table_name,user)%}
{%set queries%}
GRANT INSERT ON {{table_name}} TO {{user}};
GRANT ALL PRIVILEGES ON {{table_name}} TO {{user}};
{{log("ran statements",info=True)}}
{%endset%}
{% do run_query(queries)%}
{%endmacro%}

-- dbt run-operation grant_permission --args '{table_name: dbt_if_else, user: public}'