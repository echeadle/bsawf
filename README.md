# bsawf

Build a SAAS App with Flask Udemy course.

## Cleanup tasks

docker-compose rm -f

docker-compose rm --all  
 (This will be done in a later version of compose. I am using the later version so I think the first command is all I need)

docker rmi -f $(docker images -qf dangling=true)
