environment ENV['RAILS_ENV'] or 'development'
daemonize
bind 'ssl://0.0.0.0:' + ENV['DATA_EXPLORER_PORT'] + '?key=./config/server.key&cert=./config/server.crt'
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 1,5
workers 1
