
all: update clean publish

update: run clean

run:
	jupyter nbconvert --to=html --output=index.html --no-input --execute TM-8301-report.ipynb

publish:
	git add .
	git commit -m "update TM-8301 data `date --iso=s`"
	GIT_SSH_COMMAND='ssh -i ~/.ssh/id_rsa_cron' git push origin master

clean:
	rm -f *planet_osm_point*
