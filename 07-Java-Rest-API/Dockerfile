FROM openjdk:8-jdk AS builder

ARG ssh_prv_key
ARG ssh_pub_key

WORKDIR /app-j

# Authorize SSH Host
RUN mkdir -p /root/.ssh && \
    chmod 0700 /root/.ssh && \
    ssh-keyscan github.com > /root/.ssh/known_hosts

# Add the keys and set permissions
RUN echo "$ssh_prv_key" > /root/.ssh/id_rsa && \
    echo "$ssh_pub_key" > /root/.ssh/id_rsa.pub && \
    chmod 600 /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa.pub

RUN git clone git@github.com:3ugol/WebAcad.git

#RUN cd ./WebAcad/07-Java-Rest-API
#RUN ls -a ./WebAcad/07-Java-Rest-API
#RUN ls -a
RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.6/binaries/apache-maven-3.8.6-bin.tar.gz
RUN tar xzvf apache-maven-3.8.6-bin.tar.gz -C /opt/

RUN /opt/apache-maven-3.8.6/bin/mvn clean --file ./WebAcad/07-Java-Rest-API/pom.xml install  -Dmaven.test.skip=true

#ADD app.py /app-j/app.py

RUN rm -rf /root/.ssh/


FROM openjdk:8-jre
WORKDIR /app-s
COPY --from=builder /app-j/WebAcad/07-Java-Rest-API/target/rest-service-complete-0.0.1-SNAPSHOT.jar ./app.jar
RUN ls -a
ENTRYPOINT ["java","-jar","app.jar"]
#CMD [ "./rest-service-complete-0.0.1-SNAPSHOT.jar" ]

#RUN ln -sf /bin/bash /bin/sh
#RUN useradd -r /bin/bash -u 8877 userwa
#USER userwa

#ENTRYPOINT ["python3"]
#CMD [ "./app.py" ]
