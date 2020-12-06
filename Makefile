NAME=fidelity-deployment-training
COMMIT_ID=$(shell git rev-parse HEAD)


build-ml-api-heroku:
	docker build --build-arg PIP_EXTRA_INDEX_URL=https://Lc3KomM5n7y9Gcwbrxdg@pypi.fury.io/quantumener/ -t registry.heroku.com/fidelity-deployment-training/web:latest .

push-ml-api-heroku:
	docker push registry.heroku.com/fidelity-deployment-training/web:latest
