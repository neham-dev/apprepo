FROM eclipse-temurin:17-jre

WORKDIR /user/app

COPY target/demoAppJar.jar /user/app/

ENTRYPOINT ["java", "-jar", "demoAppJar.jar"]