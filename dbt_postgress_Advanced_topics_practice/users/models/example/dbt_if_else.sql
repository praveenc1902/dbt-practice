{{ config(materialized='table') }}


{% set foods = ['rice','aalu','beerakaya','chips','burger'] %}

{%for food in foods %}
    SELECT 
    {%if food in ['chips','burger'] %}
        'westernfood' as food_type,
    {% else %}
        'indianfood' as food_type ,
    {% endif %}
        '{{ food }}' as food 
    {% if not loop.last %} union all {% endif %}
{% endfor %}

