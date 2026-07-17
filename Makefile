up:
	git pull
	docker compose down
	docker compose up -d
	docker compose logs -f

image:
	docker build -t docker.io/library/github-actions-runner .

