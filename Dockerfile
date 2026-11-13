
FROM eclipse-temurin:21-jre

WORKDIR /app

COPY target/*.jar webjar.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "webjar.jar"]
