--uses packages.yml instead of hardcode or marco
-- https://github.com/dbt-labs/dbt-utils/tree/0.8.5/#get_column_values-source:~:text=blocks%20in%20dbt.-,get_column_values,-(source)
-- was getting error message perhaps dbt version was not compatible with package installed,
-- after adjusting version still had error, realized that compiling was reading commented out code as real
-- checked documentation adjusted packages.yml to earlier version


{%- set payment_methods = dbt_utils.get_column_values(
    table=ref('raw_payments'),
    column='payment_method'
) -%}

select
order_id,
{%- for payment_method in payment_methods %}
sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount
{%- if not loop.last %},{% endif -%}
{% endfor %}
from {{ ref('raw_payments') }}
group by 1



