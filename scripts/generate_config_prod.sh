docker login -u prs-os -p pressone dockerhub.qingcloud.com
docker pull dockerhub.qingcloud.com/pressone/flying-pub-config-generator
docker run -it --rm -v $(pwd)/config:/app/config dockerhub.qingcloud.com/pressone/flying-pub-config-generator sh -c "yarn generate_config_prod"