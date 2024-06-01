{{ config(materialized='table') }}

{%set animals = ['lion','tiger','monkey','zeebra','ant'] %}

{% for animal in animals%}
 select '{{animal}}' {%if not loop.last%} union all  {%endif%}
{% endfor %}