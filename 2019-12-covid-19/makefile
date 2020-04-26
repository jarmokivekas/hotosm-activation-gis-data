
all: update publish

update:
	jupyter nbconvert --to=html --no-prompt --no-input --execute TM-status-report.ipynb

publish:
	git add .
	git commit -m "update covid-19 reports `date --iso=s`"
	GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_cron' git push origin master
