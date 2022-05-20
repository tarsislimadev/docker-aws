FROM node:14

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install

RUN npm i -g serverless

WORKDIR /app

RUN npm init -y \ && npm i aws-cli uuid express

WORKDIR /app/src
