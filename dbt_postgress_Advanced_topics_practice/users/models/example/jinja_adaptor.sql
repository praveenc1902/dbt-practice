{{ config(materialized='table') }}

{%- set target_relation = api.Relation.create(
      database='postgres',
      schema='public',
      identifier='table_name') -%}


{% for col in adapter.get_missing_columns(target_relation, this) %}
  alter table {{this}} add column "{{col.name}}" {{col.data_type}};
{% endfor %}

