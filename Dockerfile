FROM nikolaik/python-nodejs:latest

WORKDIR /usr/src/app


COPY . .
RUN apt-get update && \
  apt-get install -y \
  neofetch \
  ffmpeg \
  wget \
  chromium \ 
  imagemagick && \
  rm -rf /var/lib/apt/lists/*

RUN npm install -g npm@latest
RUN npm instal pm2 -g


RUN set -x \
&& apt-get update \
&& apt autoremove --yes 

EXPOSE 8080

CMD ["node . --db 'mongodb+srv://mongodb:BMlnA0BvE3ultitP@cluster0.mcylj5z.mongodb.net/?retryWrites=true&w=majority'"]`
