# node js base image
FROM node:24

# set working dir
WORKDIR /usr/src/app

# copy package.json and package-lock.json
COPY package*.json ./

# install dependencies
RUN npm install

# copy rest of code
COPY . .

# expose port 3000
EXPOSE 3000

# start app
CMD ["npm", "start", "dev"]