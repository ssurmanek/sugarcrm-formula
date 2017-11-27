#list existing users
list_users:
  cmd.run:
    - name: 'php /usr/local/bin/sugarcli user:list -p /var/www/html/diplomovka'
    - runas: www-data
