{% from "sugarcrm/map.jinja" import map with context %}

#list existing users from all sites:
{% for id, site in salt['pillar.get']('sugarcrm:sites', {}).items() %}
list_{{ id }}_users:
  cmd.run:
    - name: 'php /usr/local/bin/sugarcli user:list -p {{ map.docroot }}/{{ id }}'
    - runas: {{ map.www_user }}
{% endfor %}
