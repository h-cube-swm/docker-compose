cd "$(dirname "$0")"
docker-compose restart gunicorn-backend
docker-compose logs -tf gunicorn-backend
