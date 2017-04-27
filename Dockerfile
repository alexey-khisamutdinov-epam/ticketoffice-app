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

# ADD .babelrc ./

# ADD data ./data
# ADD server.js ./

# ENTRYPOINT ./node_modules/.bin/babel-node  ./server.js


# docker run -i -t -p 8080:8080 graphql-poc
