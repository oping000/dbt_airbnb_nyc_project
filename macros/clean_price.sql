{% macro clean_price(column_name) %}

    to_number(
        replace(replace({{ column_name }}, '$','' ), ',', ''),
        10,2
           )

{% endmacro %}    