{% docs listing_id %}
Unique Identifier for each Airbnb listing. Primary key of the listing table.
 { % enddocs% }

 {% docs host_id %}
 Unique Identifier for each Airbnb host. Foreign key to the host table.
{% enddocs %}

{% docs room_type %}
The type of room being listed. Possible values are:
- Entire home/apt: The entire property is available
- Private room: A private room within a shared property
- Shared room: A shared room within a property
- Hotel room: A hotel room listed on Airbnb
{% enddocs %}

{% docs review_id %}
Unique identifier for each review. Primary key of the reviews table.
{% enddocs %}

{% docs listing_id_fk %}
Foreign key reference to the listings table. Links each review to its corresponding listing.
{% enddocs %}

{% docs review_date %}
The date the review was submitted by the guest.
{% enddocs %}

{% docs price %}
The nightly price of the listing in USD.
{% enddocs %}

{% docs neighbourhood %}
The neighbourhood where the listing is located, cleaned and standardized by Airbnb.
{% enddocs %}

{% docs borough %}
The NYC borough where the listing is located (Manhattan, Brooklyn, Queens, Bronx, Staten Island).
{% enddocs %}
