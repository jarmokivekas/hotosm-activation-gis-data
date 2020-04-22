

all: update publish

update:
	make --directory 2019-12-covid-19 update
	make --directory 2019-12-covid-19/8301 update


publish:
	git add .
	git commit -m "Update all `date --iso=s`"
	GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_cron' git push origin master
