## taken from http://saboyutaka.hatenablog.com/entry/2017/08/23/011204

start:
	@mkdir -p tmp/pids
	@bundle exec puma -p 5000 -t 10 -d -e production --pidfile=tmp/pids/puma.pid

stop:
	@kill -15 `cat tmp/pids/puma.pid`

restart: 
	@make stop && make start

dev-server:
	@mkdir -p tmp/pids
	@bundle exec puma -p 5000 -t 10 -e development --pidfile=tmp/pids/puma.pid
alp:
	@alp -f /var/log/nginx/isucon7.access.log.tsv

slow-log:
	@tail -f /var/log/mysql/mysq-slow.log

nginx-log:
	@tail -f /var/log/nginx/access.log
network-log:
	@ngrep -W byline -q  port 80 
	
app-log:
	@tail -f log/production.log
