FROM maven:3.6.2-jdk-8-slim as MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/

RUN mvn clean package --quiet "-Dmaven.test.skip=true"

FROM openjdk:8-jdk-alpine

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/*.jar /app/web.jar

ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "web.jar"]

EXPOSE 5000

ENV JAVA_TOOL_OPTIONS "-Dcom.sun.management.jmxremote \
 -Dcom.sun.management.jmxremote.ssl=false \
 -Dcom.sun.management.jmxremote.authenticate=false \
 -Dcom.sun.management.jmxremote.port=5000 \
 -Dcom.sun.management.jmxremote.rmi.port=5000 \
 -Djava.rmi.server.hostname=127.0.0.1"
