{{ config(materialized='table') }}


select {{convert_to_dollars(25.50,2)}}
union all 
select {{convert_to_dollars(29.50,2)}}
union all 
select {{convert_to_dollars(35.50,2)}}