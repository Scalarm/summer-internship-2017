environment ENV['RAILS_ENV'] or 'development'
daemonize
bind 'tcp://0.0.0.0:' + ENV['EXPERIMENT_MANAGER_PORT']
## for SSH use:
# bind 'ssl://127.0.0.1:9292?key=path_to_key&cert=path_to_cert'
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 0,16
workers 1
