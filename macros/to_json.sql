{% macro to_json(column_name) %}
  regexp_replace(trim(both '"' from u.preferences->> '{{column_name}}'::text), '\\"', '"', 'g')::json
{% endmacro %}