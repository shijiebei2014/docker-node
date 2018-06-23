FROM node:alpine

# Create app directory
RUN mkdir -p /app
WORKDIR /app

ADD package.json /app/package.json
ADD . /app

# Bundle app source
COPY . /app
RUN npm install

EXPOSE 5000
CMD ["npm", "start"]
