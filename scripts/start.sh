docker login -u prs-os -p pressone dockerhub.qingcloud.com
docker pull dockerhub.qingcloud.com/pressone/atom

docker-compose -f docker-compose.yml down --remove-orphans &&
docker-compose up -d