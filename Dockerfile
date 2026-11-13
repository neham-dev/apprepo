FROM eclipse-temurin:21-jre

WORKDIR /user/app

COPY target/webjar.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]


#Option 2 – Keep original JAR name
#FROM eclipse-temurin:17-jre
#
#WORKDIR /user/app
#
#COPY target/demoAppJar.jar /user/app/
#
#ENTRYPOINT ["java", "-jar", "demoAppJar.jar"]