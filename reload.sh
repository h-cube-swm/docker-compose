docker-compose down --remove-orphans
docker-compose up -d --build
docker container ls
mkdir /srv/server-logging/docker-compose
docker-compose logs -ft > /srv/server-logging/docker-compose/$(date +%s).log &