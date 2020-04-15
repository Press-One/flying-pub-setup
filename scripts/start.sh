docker login -u prs-os -p pressone dockerhub.qingcloud.com
docker pull dockerhub.qingcloud.com/pressone/pub
docker pull dockerhub.qingcloud.com/pressone/reader
docker pull dockerhub.qingcloud.com/pressone/atom

docker-compose -f docker-compose.yml -f docker-compose.pub-reader.yml down --remove-orphans &&
docker-compose up -d