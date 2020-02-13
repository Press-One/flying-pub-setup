./scripts/pull_images.sh
docker-compose -f docker-compose.yml -f docker-compose.pub-reader.yml down --remove-orphans &&
docker-compose -f docker-compose.yml -f docker-compose.pub-reader.yml up -d