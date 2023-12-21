FROM maven:3.8-jdk-11 AS builder

WORKDIR /root/java-hello-world-with-maven

COPY . .

RUN mvn compile
RUN mvn clean package
RUN mvn install

WORKDIR /root/java-hello-world-with-maven/target

EXPOSE 8080

CMD ["java", "-jar", "jb-hello-world-maven-0.2.0.jar"]

