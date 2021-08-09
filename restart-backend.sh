cd "$(dirname "$0")"
docker-compose up --build gunicorn-backend
docker-compose logs -tf gunicorn-backend
