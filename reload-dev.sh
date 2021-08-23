cd "$(dirname "$0")"
docker-compose -f docker-compose.dev.yml down --remove-orphans
docker-compose -f docker-compose.dev.yml up -d --build
docker container ls
mkdir /srv/server-logging/docker-compose 2> /dev/null