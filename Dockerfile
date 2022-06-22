# base image
FROM node:14.18.2

RUN npm install -g @vue/cli
RUN npm install -g npm@8.12.2

# start app
CMD ["serve"]
