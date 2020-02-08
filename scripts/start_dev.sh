docker-compose -f docker-compose.yml -f docker-compose.pub-posts.yml down --remove-orphans &&

echo " ------------- hard code --------------- "
rm -rf postgresql &&
rm -rf redis &&

docker-compose up -d