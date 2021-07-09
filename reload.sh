docker-compose down --remove-orphans
docker-compose up -d --build
docker container ls
mkdir /srv/server-logging/docker-compose > /dev/null
docker-compose logs -ft > /srv/server-logging/docker-compose/$(date +%s).log &