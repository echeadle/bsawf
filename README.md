# bsawf

Build a SAAS App with Flask Udemy course.

## Cleanup tasks

docker-compose rm -f

docker rmi -f $(docker images -qf dangling=true)

## Testing

docker-compose exec website py.test snakeeyes/tests
docker-compose exec website py.test --cov-report term-missing --cov snakeeyes

docker-compose exec website flake8 .
docker-compose exec website flake8 . --exclude **init**.py
