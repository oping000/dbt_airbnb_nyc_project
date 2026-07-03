{% macro clean_price(column_name) %}

    cast(
        replace(replace({{ column_name }}, '$','', ), ',', '')

    )

{% endmacro %}    