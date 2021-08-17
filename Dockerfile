FROM node:16-buster

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y upgrade

COPY . .

CMD [ "node", "server.js" ]

#1 Create image: docker build -t mod-back .
#2 Rodar o container: docker run --rm -it --name my-container -v ${pwd}:/usr/src/app mod-back bash