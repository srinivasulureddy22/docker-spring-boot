FROM eclipse-temurin:17-jre

ARG JAR_FILE=target/spring-boot-web.jar

WORKDIR /opt/app

COPY ${JAR_FILE} spring-boot-web.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","spring-boot-web.jar"]
