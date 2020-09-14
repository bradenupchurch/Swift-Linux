FROM amazonlinux:2 
#the Docker image should have Swift preinstalled, this may not.

COPY . /app
RUN make /app
CMD /app/ru.sh
