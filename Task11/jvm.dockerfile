FROM openjdk:alpine
COPY . /sources/
WORKDIR /sources/jvm
CMD javac MainStarter.java && java -classpath .:/sources/jvm/mysql-connector-java-5.1.39.jar  MainStarter
