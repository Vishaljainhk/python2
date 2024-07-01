FROM python:3.9-slim
WORKDIR /app
RUN pip install flask
FROM alpine:3.19
RUN npm i -g pm2
COPY . .
EXPOSE 5000
CMD ["pm2", "start", "app.py", "--interpreter", "python3", "--watch"]