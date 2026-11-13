FROM eclipse-temurin:21-jre

WORKDIR /user/app

COPY target/webjar.jar /user/app/

ENTRYPOINT ["java", "-jar", "webjar.jar"]
