#Crete variable before building
#ARG VERSION 

#Take a parent image with necessary variable
FROM ubuntu:latest

#Store metadata 
LABEL version="v1.0" maintainer="misyuro.nikita2003@gmail.com"

#Write a commands, that will work in container
RUN apt-get update && \
    apt-get install -y python3

#Copy necessary file into container
COPY script.py /home/script.py

#Write a variable, that will use in our script
ENV PERSON_NAME="Misyuro Nikita"

#Set a working directory
WORKDIR /home

#Execute a command
ENTRYPOINT [ "/usr/bin/python3"]

#Create arguments for ENTRYPOINT
CMD [ "script.py" ]