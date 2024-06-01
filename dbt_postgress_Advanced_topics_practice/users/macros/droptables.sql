{%macro droptables()%}
{%set dropcommands%}
    select 
        'DROP TABLE ' || table_schema || '.' || table_name  
    from information_schema.tables
    where table_type = 'BASE TABLE' 
{%endset%}
{{log("Gnerating drop queries",info=True)}}
{%set drop_queries =  run_query(dropcommands).columns[0].values() %}
{{debug()}}
{{log("   -->  "~drop_queries)}}
{%for query in drop_queries%}
    log("drop query is  "~query)
{%endfor%}
{%endmacro%}