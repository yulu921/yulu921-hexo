{% set ccIcon = '<i class="fa fa-fw fa-copyright"></i>' %}
{% set postURL = post.url || post.permalink %}
{% set author = post.author || author %}


<ul class="post-copyright">
  {% if post.wxlink %} 
    <strong>{{ __('post.copyright.wxlink') + __('symbol.colon') }}</strong>
    {% set postURL = post.wxlink || post.permalink %}
    {{ next_url(postURL, post.title, {title: postURL}) }}
  {% else %}
    <strong>{{ __('post.copyright.link') + __('symbol.colon') }}</strong>
    {% set postURL = post.url || post.permalink %}
    {{ next_url(postURL, postURL, {title: post.title}) }}
  {% endif %}
  <li class="post-copyright-license">
    <strong>{{ __('post.copyright.license_title') + __('symbol.colon') }} </strong>{#
  #}{{ __('post.copyright.custom_content',  next_url("../about", ccIcon + author)) }}{#
#}</li>
</ul>
