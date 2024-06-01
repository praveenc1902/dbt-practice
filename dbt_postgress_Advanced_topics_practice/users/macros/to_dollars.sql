{% macro convert_to_dollars(column_name,precision)%}
round({{column_name}}*84.5,{{precision}})
{%endmacro%}