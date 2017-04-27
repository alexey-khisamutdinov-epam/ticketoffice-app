FROM node:boron
EXPOSE 3002

RUN mkdir -p /usr/src/toa
WORKDIR /usr/src/toa

ADD package.json /usr/src/toa

RUN npm i
# RUN npm install -g nodemon

ADD src /usr/src/toa/src
ADD styles /usr/src/toa/styles
ADD .babelrc /usr/src/toa
ADD webpack.config.js /usr/src/toa

CMD [ "npm", "run", "start-docker" ]

# usage:
# docker build -t ticketoffice 
# docker run -i -t -p 3002:80 ticketoffice
