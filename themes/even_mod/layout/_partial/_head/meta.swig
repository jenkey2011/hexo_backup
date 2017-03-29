<meta charset="UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
<meta name="baidu_union_verify" content="1e9028ed8102faa2ee130c0a437f633f">
{# Disable transformation #}
<meta http-equiv="Cache-Control" content="no-transform" />
<meta http-equiv="Cache-Control" content="no-siteapp" />

{# Website description #}
{% if page.description %}
  <meta name="description" content="{{ page.description }}"/>
{% elif page.title %}
  <meta name="description" content="{{ page.title }}"/>
{% elif config.description %}
  <meta name="description" content="{{ config.description }}"/>
{% endif %}

{# Website keywords #}
{% if page.keywords %}
  <meta name="keywords" content="{{ page.keywords }}" />
{% elif page.tags and page.tags.length %}
  <meta name="keywords" content="{% for tag in page.tags %}{{ tag.name }},{% endfor %}" />
{% endif %}