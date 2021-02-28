FROM alpine/git
WORKDIR /app

# make ssh dir
RUN mkdir /root/.ssh

# add ssh private key
COPY id_rsa /root/.ssh/id_rsa
#create known_hosts
RUN touch /root/.ssh/known_hosts
# add github key 
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts
RUN git clone -b dev git@github.com:TysonLain/armiTech-dashboard-api.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/armiTech-dashboard-api /app
RUN mvn clean package -P dev,redis,queue,es -Dmaven.test.skip=true

FROM openjdk:8-jdk-alpine

WORKDIR /app
COPY --from=1 /app/target/web-api.jar .

VOLUME /tmp
# ADD,copy and rename
# ADD ./web-api.jar app.jar



# ENTRYPOINT,为了缩短Tomcat启动时间，添加java.security.egd的系统属性指向/dev/urandom作为ENTRYPOINT
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app/web-api.jar"]



