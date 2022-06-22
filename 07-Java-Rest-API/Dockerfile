FROM openjdk:8-jre

ARG jar_name

ENV FIRST=bbbb \
    MY_CUSTOM=aaaaa

WORKDIR /app

RUN echo $jar_name

EXPOSE 8080

COPY ./target/*.jar /app/app.jar

ENTRYPOINT ["java"]
CMD ["-jar", "app.jar"]