FROM python:3.9-slim-buster
WORKDIR /app
RUN pip install flask
RUN apt-get install -y nodejs
RUN npm i -g pm2
COPY . .
EXPOSE 5000
CMD ["pm2", "start", "app.py", "--interpreter", "python3", "--watch"]