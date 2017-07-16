environment ENV['RAILS_ENV'] or 'development'
daemonize
bind 'tcp://0.0.0.0:' + ENV['DATA_EXPLORER_PORT']
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 1,5
workers 1
