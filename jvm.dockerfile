FROM openjdk:alpine
COPY Sample.java /sources/
WORKDIR /sources
RUN javac Sample.java
RUN rm Sample.java
CMD java Sample
