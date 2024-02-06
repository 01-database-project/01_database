
{% docs dim_listing_cleansed_minimum_nights %}
Minimum number of nights required to rent this property.
Keep in mind that old listings might have `minimum_nights` set to 0 in the source tables. Our cleansing algorithm updates this to `1`.
{% enddocs %}

{% docs host_id %}
Primary key fpr the hosts table, also forgein key of the listings table.
{% enddocs %}

{% docs host_name %}
Name of the host or if multiple hosts.
{% enddocs %}

{% docs superhost %}
A bolean value for if the host is a super host or not.
{% enddocs %}

