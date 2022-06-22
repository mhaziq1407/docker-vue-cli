# base image
FROM node:14.18.2

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /usr/src/app/package.json
RUN npm install -g @vue/cli
RUN npm install -g npm@8.12.2

# start app
CMD ["npm", "run", "serve"]
