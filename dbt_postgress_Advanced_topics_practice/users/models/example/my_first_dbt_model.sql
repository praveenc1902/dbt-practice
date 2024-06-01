
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

{% for i in range(0,10) %}
    select {{ i }} as num {% if not loop.last%} union all {% endif %} 
{% endfor %}
