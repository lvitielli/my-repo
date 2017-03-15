FROM openjdk:8
WORKDIR /formation/
ENV FOO bar
COPY src src
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN mkdir test
ENTRYPOINT ["java","-cp","bin","HelloWorld"]
