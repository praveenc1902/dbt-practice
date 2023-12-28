{% macro generate_schema_name(custome_schema_name, node)%}
{%set default_schema = target.schema%}
{% if custome_schema_name is none%}
{{default_schema}}
{%else%}
{{custome_schema_name | trim}}
{%endif%}
{%endmacro%}