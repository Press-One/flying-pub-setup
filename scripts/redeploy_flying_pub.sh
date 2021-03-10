docker login -u prs-os -p pressone dockerhub.qingcloud.com
docker pull dockerhub.qingcloud.com/pressone/flying-pub
docker-compose up -d --force-recreate --no-deps flying-pub flying-pub-queue