environment 'production'
daemonize
bind 'unix:/tmp/scalarm_pathfinder.sock'
stdout_redirect 'log/puma.log', 'log/puma.log.err', true
pidfile 'puma.pid'
threads 1,5
workers 1
