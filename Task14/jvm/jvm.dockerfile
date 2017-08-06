FROM openjdk:alpine
COPY jvm /sources/
WORKDIR /sources
CMD javac MainStarter.java && java -classpath .:/sources/mysql-connector-java-5.1.39.jar  MainStarter

