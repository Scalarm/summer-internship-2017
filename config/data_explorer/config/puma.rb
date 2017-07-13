environment 'development'
daemonize
bind 'tcp://0.0.0.0:3002'
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 1,5
workers 1
