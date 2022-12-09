FROM node:16
WORKDIR /usr/app
RUN ["npm", "install", "-g", "serve", "typescript"]
COPY package*.json ./
RUN ["npm", "install"]
COPY . ./
RUN ["npm", "run", "build"]
CMD ["serve", "dist/"]
