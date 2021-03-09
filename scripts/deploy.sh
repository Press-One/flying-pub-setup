docker login -u prs-os -p pressone dockerhub.qingcloud.com
docker pull dockerhub.qingcloud.com/pressone/flying-pub
docker-compose down --remove-orphans && docker-compose up -d