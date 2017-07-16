environment ENV['RAILS_ENV'] or 'development'
daemonize
bind 'tcp://0.0.0.0:' + ENV['EXPERIMENT_SUPERVISOR_PORT']
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 0,16
workers 1
