# bsawf

Build a SAAS App with Flask Udemy course.

## Cleanup tasks

docker-compose rm -f

docker rmi -f $(docker images -qf dangling=true)
