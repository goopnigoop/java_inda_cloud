FROM java:8-jdk
RUN mkdir /app
WORKDIR /app
COPY target/config-0.0.1-SNAPSHOT.jar /app
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar",\
            "/app/config-0.0.1-SNAPSHOT.jar"]
EXPOSE 8888