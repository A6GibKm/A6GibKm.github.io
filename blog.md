---
layout: default
---

<div class="home">
  {% if page.title %}
    <h1 class="page-heading">{{ page.title }}</h1>
  {% endif %}
  {% if site.posts.size > 0 %}
    <h1 class="post-list-heading">{{ page.list_title | default: "Blog" }}</h1>
    <hr>
    <ul class="post-list">
      {% for post in site.posts %}
        <li class="post-list" >
          {% assign date_format = "%b %-d, %Y" %}
          <h2>
            <a class="post-link" href="{{ post.url | relative_url }}">
              {{ post.title | escape }}
            </a>
          </h2>
          {% if post.date %}
          <small>{{ post.date | date: date_format }}</small>
          {% endif %}
          {{ post.excerpt }}
        </li>
      {% endfor %}
    </ul>
  {% endif %}
</div>
