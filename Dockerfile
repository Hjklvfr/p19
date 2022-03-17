FROM gradle:7.3.0-jdk17-alpine as build

COPY --chown=gradle:gradle . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build --no-daemon

FROM eclipse-temurin:17-jre-alpine as runtime

EXPOSE 8080

RUN mkdir /app
COPY --from=build /home/gradle/src/build/libs/*.war /app/

ENTRYPOINT ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.war"]
