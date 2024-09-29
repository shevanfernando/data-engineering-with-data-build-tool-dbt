-- source: https://docs.getdbt.com/best-practices/writing-custom-generic-tests#generic-tests-with-default-config-values
{% test generic_not_null(model, column_name) %}

select *
from {{ model }}
where {{ column_name }} is null

{% endtest %}