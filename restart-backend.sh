cd "$(dirname "$0")"
docker-compose up -d --build gunicorn-backend
docker-compose logs -tf gunicorn-backend
