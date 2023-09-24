FROM openjdk:19-jdk-alpine
VOLUME /tmp
ARG JAR_VERSION
ARG JAR_NAME
ARG JAR_LOCATION
RUN mkdir -p "/etc/k8s"
COPY k8s/* /etc/k8s/
RUN chmod 755 /etc/k8s
COPY build/libs/native-0.0.7-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
