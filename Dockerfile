# Pull base image.
FROM openjdk:8-jre-alpine
MAINTAINER  Adrian Pascalin <chataros@email.com>


# Install Java.
RUN apk add openjdk8=8.242.08-r0


WORKDIR /usr/src/app

RUN wget https://github.com/jagrosh/MusicBot/releases/download/0.2.8/JMusicBot-0.2.8-Linux.jar
RUN mkdir "tmp"


COPY config.txt ./

CMD [ "java", "-Djava.io.tmpdir=$pwd\tmp", "-Dnogui=true", "-jar" ,"JMusicBot-0.2.8-Linux.jar" ]