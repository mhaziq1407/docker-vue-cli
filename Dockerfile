# Choose the Image which has Node installed already
FROM node:16
RUN echo "NODE Version:" && node --version
RUN echo "NPM Version:" && npm --version

# make the 'app' folder the current working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# copy both 'package.json' and 'package-lock.json' (if available)
COPY package*.json /usr/src/app
RUN ls package*.json

# Installed globally
RUN npm install -g @vue/cli

# install project dependencies
RUN npm install

# start app
CMD ["npm", "run", "serve"]
