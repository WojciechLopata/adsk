
FROM node:14-alpine

WORKDIR /app


RUN mkdir -p /opt/ecommerce

RUN wget https://github.com/konradkubczyk/pp5/archive/refs/tags/1.0.zip -O /opt/ecommerce/app.zip
RUN unzip /opt/ecommerce/app.zip -d /app
RUN sudo dnf install npm 

COPY package*.json ./
RUN npm install

COPY . .




EXPOSE 8080


RUN adduser -D ecommerce


USER ecommerce

CMD ["npm", "run", "dev"]
