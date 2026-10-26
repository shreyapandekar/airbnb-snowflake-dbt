{% set flag = 2 %}

SELECT * FROM {{ ref('bronze_bookings') }}
{% if flag == 1 %}
  WHERE NIGHT_BOOKED > 1
{% else %}
  WHERE NIGHT_BOOKED = 1
{% endif %}
