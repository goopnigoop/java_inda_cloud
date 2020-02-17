start:
	mvn clean install
	./buildDockerImages.sh
	docker-compose up -d --build

stop:
	docker-compose down
	docker system prune --volumes --force

clean:
	rm -rf eureka/target
	rm -rf po/target
	rm -rf ps/target
