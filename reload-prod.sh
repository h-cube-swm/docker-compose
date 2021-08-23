cd "$(dirname "$0")"
docker-compose -f docker-compose.prod.yml down --remove-orphans
docker-compose -f docker-compose.prod.yml up -d --build
docker container ls
mkdir /srv/server-logging/docker-compose 2> /dev/null
docker-compose logs -ft > /srv/server-logging/docker-compose/$(date +%s).log &