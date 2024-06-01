{% macro concat2cols(col1,col2)%}
({{(col1,"_",col2)}} )
{%endmacro%}