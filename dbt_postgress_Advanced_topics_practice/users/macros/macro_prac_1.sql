{%macro macro_prac_1()%}
{%set query="select orderid from amazon"%}
{%set result =  run_query(query) %}
{{log("sql result "~result,info=True)}}
{%for i in result%}
select {{i[0]}}
{%if not loop.last%}
union all 
{%endif%}
{%endfor%}
{%endmacro%}