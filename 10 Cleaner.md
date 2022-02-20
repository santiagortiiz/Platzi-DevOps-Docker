# Remove All
docker system prune

sudo docker rm -vf $(sudo docker ps -a -q)
sudo docker rmi -f $(sudo docker images -a -q)
sudo docker system prune -f
sudo docker volume prune -f

# Remove (volumens and images)
docker-compose -f production.yml down --volumes --rmi all

# For Django
## Remove volumens and images
docker-compose -f production.yml down --volumes --rmi all
## Remove Django Migrations
	sudo find . -path "*/migrations/*.py" -not-name "__init__.py" -delete
	sudo find . -path "*/migrations/*.pyc" -delete