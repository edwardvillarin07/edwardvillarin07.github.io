---
icon: fas fa-briefcase
order: 2
---

A selection of projects we have built and shipped. Some are open source; all of them solve a problem someone actually had.

{% for post in site.categories["Case Study"] %}
- **[{{ post.title }}]({{ post.url | relative_url }})** — {{ post.date | date: "%b %-d, %Y" }}
{% endfor %}

Want to talk about a project of your own? Find us on [GitHub](https://github.com/Doers-Minds).
