{{ config(materialized='table') }}

{% set dict_elements = {
    'name':'praveen',
    'city':'hyd',
    'state':'telangana'
} %}
SELECT 
    '{{dict_elements['name']}}' as name,
    '{{dict_elements['city']}}' as city,
    '{{dict_elements['state']}}' as state 