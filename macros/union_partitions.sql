{% macro union_partitions(source_name, table_prefix, partitions) %}

{% for partition_number in range(partitions) %}
    select * from {{ source(source_name, table_prefix ~ '_' ~ partition_number) }}
    {% if not loop.last %} union all {% endif %}
{% endfor %}

{% endmacro %}