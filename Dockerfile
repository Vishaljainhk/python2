FROM python:3.9-slim
WORKDIR /app
RUN pip install flask
FROM node:latest
RUN npm i -g pm2
COPY . .
EXPOSE 5000
