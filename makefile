## taken from http://saboyutaka.hatenablog.com/entry/2017/08/23/011204
restart:
	@systemctl stop isubata.ruby.service
	@systemctl start isubata.ruby.service

db-log:
	@tail -f /var/lib/mysql/150-95-132-103.log

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
