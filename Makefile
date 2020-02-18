start:
	mvn clean install
	./buildDockerImages.sh
	docker-compose up -d --build

clean:
	rm -rf eureka/target
	rm -rf po/target
	rm -rf pc/target
	rm -rf config/target
	rm -rf zuul/target

stop:
	docker-compose down
	docker system prune --volumes --force

restart: stop clean start

