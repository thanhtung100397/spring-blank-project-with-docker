FROM gradle:4.8.0-jdk8-alpine
COPY . app/
USER root
WORKDIR app/
RUN gradle build --stacktrace
USER gradle
CMD java -jar /app/build/libs/test-0.0.1-SNAPSHOT.jar
