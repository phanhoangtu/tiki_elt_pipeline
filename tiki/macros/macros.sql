{% macro classify(column) %}
    case
      when {{ column }} >= 4.75 then 'A'
      else 'B'
    end
{% endmacro %}
